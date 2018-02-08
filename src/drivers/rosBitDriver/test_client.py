#!/usr/bin/env python

import rospy
from jderobot_msgs.msg import bit


def talker():
    i = True

    pub = rospy.Publisher('bit', bit, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(i)
        pub.publish(i)
        i = not i
        rate.sleep()
      
if __name__ == '__main__':
    try:
         talker()
    except rospy.ROSInterruptException:
         pass