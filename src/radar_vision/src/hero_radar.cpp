// hero_radar.cpp
//#include "/home/yuyu/workspace/rm/rm_ws/src/radar_vision/include/hero_radar.h"
#include "hero_radar.h"

SubscriberPublisher::SubscriberPublisher(ros::NodeHandle& nh) {
    subscribe_topic_ = nh.param<std::string>("subscribe_topic", "/Odometry");
    publish_topic_ = nh.param<std::string>("publish_topic", "/output");

    sub_ = nh.subscribe(subscribe_topic_, 1000, &SubscriberPublisher::callback, this);
    pub_ = nh.advertise<std_msgs::Float64>(publish_topic_, 1000);
}

void SubscriberPublisher::callback(const nav_msgs::Odometry::ConstPtr& msg) {
    ROS_INFO("Received odometry message");
    doLaser(*msg);
}

void SubscriberPublisher::doLaser(const nav_msgs::Odometry& msg) {
    laser_X = msg.pose.pose.position.x;
    laser_Y = msg.pose.pose.position.y;
    laser_Z = msg.pose.pose.position.z;

    Distance_target = sqrt((laser_X - targetPos.x) * (laser_X - targetPos.x) +
                           (laser_Y - targetPos.y) * (laser_Y - targetPos.y) +
                           (laser_Z - targetPos.z) * (laser_Z - targetPos.z));
    Distance_target /= 1000;

    std_msgs::Float64 distance_msg;
    distance_msg.data = Distance_target;
    pub_.publish(distance_msg);

    publishTF(msg);
}

void SubscriberPublisher::publishTF(const nav_msgs::Odometry& msg) {
    geometry_msgs::TransformStamped laser_transform;
    laser_transform.header.stamp = ros::Time::now();
    laser_transform.header.frame_id = "map";
    laser_transform.child_frame_id = "laser";
    laser_transform.transform.translation.x = laser_X;
    laser_transform.transform.translation.y = laser_Y;
    laser_transform.transform.translation.z = laser_Z;
    laser_transform.transform.rotation.w = 1.0;

    geometry_msgs::TransformStamped target_transform;
    target_transform.header.stamp = ros::Time::now();
    target_transform.header.frame_id = "map";
    target_transform.child_frame_id = "target";
    target_transform.transform.translation.x = targetPos.x;
    target_transform.transform.translation.y = targetPos.y;
    target_transform.transform.translation.z = targetPos.z;
    target_transform.transform.rotation.w = 1.0;

    br_.sendTransform(laser_transform);
    br_.sendTransform(target_transform);
}