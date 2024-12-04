#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "video_publisher");
    ros::NodeHandle nh;

    image_transport::ImageTransport it(nh);
    image_transport::Publisher pub = it.advertise("video_stream", 1);

    std::string video_file = "/home/yuyu/workspace/rm/rm_workspace/src/depth_armor/video_test/test.mp4";
    cv::VideoCapture cap(video_file);

    if (!cap.isOpened()) {
        ROS_ERROR("Could not open video file: %s", video_file.c_str());
        return -1;
    }

    cv::Mat frame;
    std_msgs::Header header;
    ros::Rate loop_rate(30);  // 30帧/秒

    while (nh.ok()) {
        cap >> frame;
        if (frame.empty()) {
            ROS_INFO("Video finished");
            break;
        }

        sensor_msgs::ImagePtr msg = cv_bridge::CvImage(header, "bgr8", frame).toImageMsg();
        pub.publish(msg);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}