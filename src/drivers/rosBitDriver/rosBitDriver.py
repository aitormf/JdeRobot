#!/usr/bin/env python

import rospy
from jderobot_msgs.msg import bit
import config

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.value)
    

def listener(nodeName, topic):

    rospy.init_node(nodeName, anonymous=True)
    rospy.Subscriber(topic, bit, callback)
    
    rospy.spin()
    
if __name__ == '__main__':
	cfg = config.load(sys.argv[1])
	nodeName = cfg.getPropertyWithDefault("rosBitDriver.NodeName","rosBitServer")
	topic = cfg.getPropertyWithDefault("rosBitDriver.NodeName","bit")
    listener(nodeName, topic)