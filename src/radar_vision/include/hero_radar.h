// hero_radar.h
#ifndef HERO_RADAR_H
#define HERO_RADAR_H

#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Float64.h>
#include <tf2_ros/transform_broadcaster.h>
#include <geometry_msgs/TransformStamped.h>

//struct TargetPos {
//    float x = 10.0;
//    float y = 10.0;
//    float z = 10.0;
//} targetPos;

class SubscriberPublisher
{
public:
    SubscriberPublisher(ros::NodeHandle& nh);

private:
    void callback(const nav_msgs::Odometry::ConstPtr& msg);
    void doLaser(const nav_msgs::Odometry& msg);
    void publishTF(const nav_msgs::Odometry& msg);

    ros::Subscriber sub_;
    ros::Publisher pub_;
    std::string subscribe_topic_;
    std::string publish_topic_;
    tf2_ros::TransformBroadcaster br_;

    float laser_X, laser_Y, laser_Z;
    float Distance_target;
    struct TargetPos {
        float x = 10.0;
        float y = 10.0;
        float z = 10.0;
    } targetPos;
};

#endif  // HERO_RADAR_H