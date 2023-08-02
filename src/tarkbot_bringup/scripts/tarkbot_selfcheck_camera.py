#!/usr/bin/env python

#################################################################################
# Copyright 2022 XTARK CO., LTD. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#################################################################################
# Authors: Hank #
# 机器人自检程序，检查硬件是否正确
#################################################################################

import rospy 
from nav_msgs.msg import Odometry
from std_msgs.msg import Int32
from std_msgs.msg import Float32
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image,CompressedImage
import threading
from time import ctime,sleep
import os
import sys
import termios

class RobotSelfCheck():
    def __init__(self):
        rospy.init_node('Robot_SelfCheck',anonymous=False)

        self.vel_pub = rospy.Publisher('/cmd_vel',Twist,queue_size=10)

        rospy.Subscriber('/imu', Imu, self.imu_sub)
        rospy.Subscriber('/bat_vol', Float32, self.voltage_sub)

        self.imu_check = float()
        self.move_cmd = Twist()
        self.voltage = float()

        t = threading.Thread(target=self.start_selfCheck,args=()) 
        t.setDaemon(True)
        t.start()
        rospy.spin()

    def imu_sub(self, msg):
        self.imu_check = msg.linear_acceleration.z

    def voltage_sub(self, msg):
        self.voltage = msg.data

    def pub_vel(self,vel):
        self.move_cmd.linear.x = vel
        self.vel_pub.publish(self.move_cmd)
        sleep(3)
        self.move_cmd.linear.x = 0
        self.vel_pub.publish(self.move_cmd)

    def press_any_key(self,msg):
        fd = sys.stdin.fileno()
        old_ttyinfo = termios.tcgetattr(fd)
        new_ttyinfo = old_ttyinfo[:]
        new_ttyinfo[3] &= ~termios.ICANON
        new_ttyinfo[3] &= ~termios.ECHO

        sys.stdout.write(msg)
        sys.stdout.flush()
        termios.tcsetattr(fd,termios.TCSANOW,new_ttyinfo)
        os.read(fd,7)
        termios.tcsetattr(fd,termios.TCSANOW,old_ttyinfo)

    def start_selfCheck(self):

        sleep(5.0)

        print('*******XTARK ROBOT SelfCheck*******')
        print('Check Process:')
        print('----Voltage')
        print('----Camera')
        print('----Lidar')
        print('----IMU')
        print('----Motor')
        print('  ')
        self.press_any_key("Press any key to \033[32m START! \033[0m")

        print('  ')
        print('Starting Voltage Check.......')
        rospy.wait_for_message('/bat_vol',Float32,3)
        if(self.voltage > 11):
            print('-----Voltage Check'+'\033[32m'+' OK!'+'\033[0m'+'  '+str(self.voltage))
        else:
            print('-----Voltage Check'+'\033[31m'+' Failed!'+'\033[0m')


        print('  ')
        print('Starting Camera Check........')
        try:
            rospy.wait_for_message('/usb_cam/image_raw',Image,2)
            print('-----Raw Image Check'+'\033[32m'+' OK!'+'\033[0m')
        except rospy.exceptions.ROSException:
            print('-----Raw Image Check'+'\033[31m'+' Failed!'+'\033[0m')

        print('  ')
        print('Starting Lidar Check.........')
        try:
            rospy.wait_for_message('/xtark_scan_raw',LaserScan,3)
            print('-----Lidar Check'+'\033[32m'+' OK!'+'\033[0m')
        except rospy.exceptions.ROSException:
            print('-----Lidar Check'+'\033[31m'+' Failed!'+'\033[0m')
        
        print('  ')
        print('Starting IMU Check...........')
        if(self.imu_check > 8.0):
            print('-----IMU Check'+'\033[32m'+' OK!'+'\033[0m')
        else:
            print('-----IMU Check'+'\033[31m'+' Failed!'+'\033[0m')

        print('  ')
        print('Starting Motor Check...........')
        vel_t = threading.Thread(target=self.pub_vel,args=(0.2,)) 
        vel_t.setDaemon(True)
        vel_t.start()
        sleep(1.0)
        sleep(3.0)
        vel_t = threading.Thread(target=self.pub_vel,args=(-0.2,)) 
        vel_t.setDaemon(True)
        vel_t.start()
        sleep(1.0)
        print('-----Motor Check'+'\033[32m'+' OK!'+'\033[0m')

        print('  ')
        print('Self Check'+'\033[32m'+' Completed!'+'\033[0m')
        print('Press [Ctrl+C] to '+'\033[32m'+'Exit!'+'\033[0m')

if __name__ == '__main__':
        RobotSelfCheck()
