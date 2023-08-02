/**************************************************************************
多机编队
**************************************************************************/
#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include "sensor_msgs/LaserScan.h"
#include <std_msgs/Int32.h>


// tf变换相关参数
std::string base_frame;
std::string follower_to_host;
std::string first_tf;

//主车速度
float odom_linear_x=0;    
float odom_linear_y=0;
float odom_angular_z=0;

int multi_mode = 0;
double diff_line_x = 0;    //x轴偏差
double diff_line_y = 0;    //y轴偏差
double diff_angle_y = 0;   //角度偏差
double angular_turn = 0;   //角度修正

double robot_x = 0.8;    //目标点的x坐标
double robot_y = -0.8;    //目标点的y坐标

double max_vel_x=1.0;     //最大速度限制
double min_vel_x=0.05;     //最小速度限制
double max_vel_theta=1.0; //最大角速度限制
double min_vel_theta=0.05;//最小角速度限制

double k_v=1;
double k_l=1;
double k_a=1;



void vel_Callback(const nav_msgs::Odometry& msg)
{
  odom_linear_x = msg.twist.twist.linear.x;
  odom_linear_y = msg.twist.twist.linear.y;
  odom_angular_z = msg.twist.twist.angular.z;
  if(fabs(odom_linear_x)<min_vel_x)odom_linear_x=0;
}
void mode_driver(const std_msgs::Int32& msg)
{
  multi_mode = msg.data;
}

int main(int argc, char** argv){
  ros::init(argc, argv, "tarkbot_driver_way");

  ros::NodeHandle node;
  ros::NodeHandle private_nh("~");

  ros::Publisher robot_vel = node.advertise<geometry_msgs::Twist>("cmd_vel_ori", 10); //发布原始数据
  ros::Subscriber vel_sub = node.subscribe("/odom", 1, vel_Callback);
  ros::Subscriber multi_mode_sub = node.subscribe("/multi_mode_topic", 1, mode_driver);

  private_nh.param<int>("multi_mode", multi_mode,1);
  private_nh.param<std::string>("base_frame", base_frame, "base_footprint");
  private_nh.param<std::string>("follower_to_host", follower_to_host, "robot0");  
  private_nh.param<double>("robot_x", robot_x,0.6);
  private_nh.param<double>("robot_y", robot_y,-0.6);
  private_nh.param<double>("max_vel_x", max_vel_x,1.0);
  private_nh.param<double>("min_vel_x", min_vel_x,0.05);
  private_nh.param<double>("max_vel_theta", max_vel_theta,1.0);
  private_nh.param<double>("min_vel_theta", min_vel_theta,0.05);
  private_nh.param<double>("k_v", k_v,1);
  private_nh.param<double>("k_l", k_l,1);
  private_nh.param<double>("k_a", k_a,1);


  first_tf = tf::getPrefixParam(private_nh); 
  base_frame = tf::resolve(first_tf, base_frame);
  follower_to_host = tf::resolve(first_tf, follower_to_host);


  geometry_msgs::Twist cmd_vel_value;
  double e_angular_x = 0;
  double e_angular_y = 0;
  robot_x = robot_x+robot_y;
  robot_y = robot_x-robot_y;
  robot_x = -(robot_x-robot_y);
 
  tf::TransformListener host_follower ,follower;
  tf::StampedTransform transformSM1 ,transformSM2;
  geometry_msgs::Pose pose_orien1 ,pose_orien2;
  tf::Quaternion RQ21 ,RQ22; 
  ros::Duration(3.0).sleep();
  ros::Rate rate(10.0);
  while (node.ok()){

    if(multi_mode==1)
    {
        //由到从机与期望坐标做tf变换
      try{  
        host_follower.waitForTransform("map", "base_link", ros::Time(0), ros::Duration(3.0));
        follower.waitForTransform("map", follower_to_host+"/base_link", ros::Time(0), ros::Duration(3.0));

        host_follower.lookupTransform("map",  "base_link", ros::Time(0), transformSM1);
        follower.lookupTransform("map",  follower_to_host+"/base_link", ros::Time(0), transformSM2);
      }
      catch (tf::TransformException &ex) {
        ROS_WARN("%s",ex.what());
        ros::Duration(1.0).sleep();
        continue; 
      } 
      double angular_x1 , angular_y1 , angular_z1 ;
      double angular_x2 , angular_y2 , angular_z2 ;
      //主车的TF变换
      pose_orien1.orientation.x=transformSM1.getRotation().getX();
      pose_orien1.orientation.y=transformSM1.getRotation().getY();
      pose_orien1.orientation.z=transformSM1.getRotation().getZ();
      pose_orien1.orientation.w=transformSM1.getRotation().getW();
      tf::quaternionMsgToTF(pose_orien1.orientation, RQ21);  //终端当前位姿从四元数形式转换为欧拉角形式
      tf::Matrix3x3(RQ21).getRPY(angular_x1, angular_y1, angular_z1);  //读取期望坐标点与从车的相对角度angular_z1

      // 从车的TF变换
      pose_orien2.orientation.x=transformSM2.getRotation().getX();
      pose_orien2.orientation.y=transformSM2.getRotation().getY();
      pose_orien2.orientation.z=transformSM2.getRotation().getZ();
      pose_orien2.orientation.w=transformSM2.getRotation().getW();
      tf::quaternionMsgToTF(pose_orien2.orientation, RQ22);  //终端当前位姿从四元数形式转换为欧拉角形式
      tf::Matrix3x3(RQ22).getRPY(angular_x2, angular_y2, angular_z2);  //读取期望坐标点与从车的相对角度angular_z2

      diff_line_x = transformSM1.getOrigin().x()-transformSM2.getOrigin().x()+robot_y;      //x方向的偏差（小车前后方向的偏差）
      diff_line_y = transformSM1.getOrigin().y()-transformSM2.getOrigin().y()-robot_x;       //y方向的偏差（小车左右方向的偏差）
      diff_angle_y = angular_z1-angular_z2;                                                  //角度偏差

      cmd_vel_value.linear.x = odom_linear_x+k_v*diff_line_x*cos(angular_z2)+k_v*diff_line_y*sin(angular_z2); //根据当前从车的方向angular_z2，调整速度修正从车的x y方向偏差（例如从车朝向在x方向0角度时，cos(0)=1,调整小车速度修正x方向偏差）
      float _k_a=k_a;
      float _k_l=k_l;
      if(cmd_vel_value.linear.x<-min_vel_x)
      {
        _k_l=-k_l;
      }
      cmd_vel_value.angular.z = odom_angular_z+0.5*_k_l*diff_line_y*cos(angular_z2)-0.5*_k_l*diff_line_x*sin(angular_z2)+_k_a*sin(diff_angle_y);
    }

    //速度限制
    if(cmd_vel_value.linear.x > max_vel_x)
      cmd_vel_value.linear.x=max_vel_x;
    else if(cmd_vel_value.linear.x < -max_vel_x)
      cmd_vel_value.linear.x=-max_vel_x;
    if(fabs(cmd_vel_value.linear.x) < min_vel_x)
      cmd_vel_value.linear.x=0;
    if(cmd_vel_value.angular.z > max_vel_theta)
      cmd_vel_value.angular.z=max_vel_theta;
    else if(cmd_vel_value.angular.z < -max_vel_theta)
      cmd_vel_value.angular.z=-max_vel_theta;
    if(fabs(cmd_vel_value.angular.z) < min_vel_theta)
      cmd_vel_value.angular.z=0;

    robot_vel.publish(cmd_vel_value);
    ros::spinOnce();
    rate.sleep();
  }

  return 0;
};
