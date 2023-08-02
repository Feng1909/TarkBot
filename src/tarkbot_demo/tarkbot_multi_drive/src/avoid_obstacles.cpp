#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <tarkbot_multi_drive/obstacle.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int8.h>
#include <std_msgs/String.h>


using namespace std;
 
geometry_msgs::Twist cmd_vel_msg;    
geometry_msgs::Twist cmd_vel_avoid;    
geometry_msgs::Twist cmd_vel_data;    

float distance1=100;    
float dis_angleX=0;    
double safe_distence=0.5;
double danger_distence=0.2;
double danger_angular=0.785;
double avoidance_kv=0.2;
double avoidance_kw=0.3;
double max_vel_x=1.5;
double min_vel_x=0.05;
double max_vel_theta=1.5;
double min_vel_theta=0.05;

//障碍物位置信息
void obstacle_position(const tarkbot_multi_drive::obstacle& msg)	
{
	distance1 = msg.distance;
	dis_angleX = msg.angleX;
	if(dis_angleX>0)
		dis_angleX=3.1415-dis_angleX;
	else
		dis_angleX=-(dis_angleX+3.1415);
}

//底盘速度信息
void cmd_vel_Callback(const geometry_msgs::Twist& msg)
{
	cmd_vel_msg.linear.x = msg.linear.x;
	cmd_vel_msg.angular.z = msg.angular.z;

	cmd_vel_data.linear.x = msg.linear.x;
	cmd_vel_data.angular.z = msg.angular.z;
}



int main(int argc, char** argv)
{
	int temp_count = 0;    //计数变量
	ros::init(argc, argv, "avoidance");    //初始化ROS节点

	ros::NodeHandle node;    //创建句柄

	ros::Publisher cmd_vel_Pub = node.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	ros::Subscriber vel_sub = node.subscribe("cmd_vel_ori", 1, cmd_vel_Callback);

	ros::Subscriber current_position_sub = node.subscribe("object_tracker/current_position", 10, obstacle_position);

	node.param<double>("safe_distence", safe_distence,0.5);
	node.param<double>("danger_distence", danger_distence,0.2);
	node.param<double>("danger_angular", danger_angular,0.785);
	node.param<double>("avoidance_kv", avoidance_kv,0.2);
	node.param<double>("avoidance_kw", avoidance_kw,0.3);
	node.param<double>("max_vel_x", max_vel_x,1.5);
	node.param<double>("min_vel_x", min_vel_x,0.05);
	node.param<double>("max_vel_theta", max_vel_theta,1.5);
	node.param<double>("min_vel_theta", min_vel_theta,0.05);

	double rate2 = 10;    
	ros::Rate loopRate2(rate2);

 
	while(ros::ok())
	{
		ros::spinOnce();
		avoidance_kw = fabs(avoidance_kw);
		if(distance1<safe_distence && distance1>danger_distence)		
		{
			ROS_INFO("distance1 less then 0.6 ");
			printf("distance1= %f\n",distance1);
			cmd_vel_msg.linear.x = cmd_vel_data.linear.x - avoidance_kv*cos(dis_angleX)/distance1;
			if(dis_angleX<0)avoidance_kw=-avoidance_kw;											
			cmd_vel_msg.angular.z = cmd_vel_data.angular.z + avoidance_kw*cos(dis_angleX)/distance1;
		}
		else if(distance1<danger_distence)				
		{
			ROS_INFO("distance1 less then 0.3 ");
			printf("distance1= %f\n",distance1);
			cmd_vel_msg.linear.x = - avoidance_kv*cos(dis_angleX)/distance1;
			if(dis_angleX<0)avoidance_kw=-avoidance_kw;
			cmd_vel_msg.angular.z = avoidance_kw*cos(dis_angleX)/distance1;
		}
		else										
		{
			cmd_vel_msg.linear.x = cmd_vel_data.linear.x;
			cmd_vel_msg.angular.z = cmd_vel_data.angular.z;
		}

		//速度限制
		if(cmd_vel_msg.linear.x > max_vel_x)
			cmd_vel_msg.linear.x=max_vel_x;
		else if(cmd_vel_msg.linear.x < -max_vel_x)
			cmd_vel_msg.linear.x=-max_vel_x;
		if(fabs(cmd_vel_msg.linear.x) < min_vel_x)
			cmd_vel_msg.linear.x=0;
		if(cmd_vel_msg.angular.z > max_vel_theta)
			cmd_vel_msg.angular.z=max_vel_theta;
		else if(cmd_vel_msg.angular.z < -max_vel_theta)
			cmd_vel_msg.angular.z=-max_vel_theta;
		if(fabs(cmd_vel_msg.angular.z) < min_vel_theta)
			cmd_vel_msg.angular.z=0;

		cmd_vel_Pub.publish(cmd_vel_msg);
		ros::spinOnce();
		loopRate2.sleep();
	} 

	return 0;
}
