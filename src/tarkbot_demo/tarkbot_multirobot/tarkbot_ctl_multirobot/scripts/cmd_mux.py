#!/usr/bin/env python
import importlib

import rospy
import time
from geometry_msgs.msg import Twist, Vector3
from std_msgs.msg import String as StringMsg

class CmdMux:
    def __init__(self):
        self.velocity = Twist()
        self.rate = rospy.Rate(20)

        self.cmdSub = rospy.Subscriber('/cmd_vel', Twist, self.cmdCallback)
        self.robot0CmdPub = rospy.Publisher('/robot0/cmd_vel', Twist, queue_size=3)
        self.robot1CmdPub = rospy.Publisher('/robot1/cmd_vel', Twist, queue_size=3)
        self.robot2CmdPub = rospy.Publisher('/robot2/cmd_vel', Twist, queue_size=3)

        rospy.spin()

    def cmdCallback(self, cmd_data):
        self.velocity = cmd_data
        self.robot0CmdPub.publish(self.velocity)
        self.robot1CmdPub.publish(self.velocity)
        self.robot2CmdPub.publish(self.velocity)

if __name__ == '__main__':
    rospy.init_node('multirobot_cmd_mux')
    cmdMux = CmdMux()
