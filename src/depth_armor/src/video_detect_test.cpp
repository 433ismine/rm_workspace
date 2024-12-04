#include "../include/inference.hpp"
#include "../include/tradition.hpp"
#include "../include/number_classifier.hpp"
#define VIDEO_PATH "/home/yuyu/workspace/rm/rm_workspace/src/depth_armor/video_test/test.mp4"
#include "ros/ros.h"
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>


void show_points_result(cv::Mat& img,std::vector<OneArmor> armors_data ) {
    std::map<int , std::string>colors ;
    colors[1] = "red";
    colors[0] = "blue";

    for (auto i: armors_data) {
       // cv::rectangle(img, i.box, cv::Scalar(0, 255, 0), 2);
       for(int j=0;j<4;j++){
           cv::line(img, i.objects_keypoints[j], i.objects_keypoints[(j + 1) % 4], cv::Scalar(0, 255, 0), 1);
       }
       for(int j=0;j<4;j++){
           if(j == 0){
               cv::circle(img, i.objects_keypoints[j], 2, cv::Scalar(0, 0, 255), -1);
           }else if(j==1){     cv::circle(img, i.objects_keypoints[j], 2, cv::Scalar(0, 0, 0), -1);}
           else if(j==2){     cv::circle(img, i.objects_keypoints[j], 2, cv::Scalar(0, 255, 0), -1);}
           else if(j==3){     cv::circle(img, i.objects_keypoints[j], 2, cv::Scalar(255, 0, 0), -1);
           }

       }
       //cv::rectangle(img, i.box, cv::Scalar(0, 255, 0), 2);

       cv::putText(img, colors[i.class_ids], i.objects_keypoints[0], cv::FONT_HERSHEY_SIMPLEX, 0.7, cv::Scalar(0, 255, 0), 2);
    }
}

void show_box_result(cv::Mat& img,std::vector<OneArmor> armors_data ) {
    for(auto i: armors_data){
        cv::rectangle(img, i.box, cv::Scalar(0, 255, 0), 2);
    }
}
void show_number_result(cv::Mat& img,std::vector<OneArmor> armors_data){
    for(auto i: armors_data){
        cv::putText(img, i.number, i.objects_keypoints[3], cv::FONT_HERSHEY_SIMPLEX, 0.7, cv::Scalar(0, 255, 0), 2);
    }
}

void show_result(std::vector<OneArmor> armors_data){
for (const auto& armor : armors_data) {
std::cout << "装甲板信息：" << std::endl;
std::cout << "  类别： " << armor.class_ids << std::endl;
std::cout << "  置信度： " << armor.class_scores << std::endl;
std::cout << "  id： " << armor.number << std::endl;
std::cout << "  关键点： ";
for (const auto& point : armor.objects_keypoints) {
std::cout << "(" << point.x << ", " << point.y << ") ";
}
std::cout << std::endl;

}

}
//
//void imageCallback(const sensor_msgs::ImageConstPtr& img) {
//
//    cv_bridge::CvImagePtr cv_ptr;
//    try {
//        cv_ptr = cv_bridge::toCvCopy(img, sensor_msgs::image_encodings::BGR8);
//    } catch (cv_bridge::Exception& e) {
//        ROS_ERROR("cv_bridge exception: %s", e.what());
//        return;
//
//    }
//
//    // Process the image using cv_ptr->image
//    dataImg blob = preprocessImage(cv_ptr->image);
//    auto armors_data = startInferAndNMS(blob);
//    //传统处理获得角点以提高角点精度（实测非必须）
//    //auto armors_data_ = tradition(frame, armors_data);
//    //获得数字
//    auto armors_data_ =  classify(img,armors_data);
//    tm.stop();
//    std::cout << "time cost: " << tm.getTimeMilli() << "ms" << std::endl;
//    show_number_result(img, armors_data_);
//    show_points_result(img, armors_data_);
//    show_result(armors_data_);
//    // show_box_result(frame, armors_data_);
//
//    // 按下ESC键退出
//    cv::imshow("result", img);
//}
int main(int argc, char* argv[])
{

    ros::init(argc, argv, "armor_detector");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
//    image_transport::Subscriber image_sub = it.subscribe("video_stream", 1, imageCallback);

    cv::VideoCapture capture(VIDEO_PATH);

    if (!capture.isOpened())
    {
        std::cout << "无法读取视频：" << argv[1] << std::endl;
        return -1;
    }
    // 读取视频帧，使用Mat类型的frame存储返回的帧
    cv::Mat frame;

    int fps = 0;
    while (true){


        capture >> frame;
        if (frame.empty())
        {
            std::cout << "视频读取完毕" << std::endl;
            break;
        }
        cv::TickMeter tm;
        tm.start();
        dataImg blob = preprocessImage(frame);
      //  std::cout<<"start infer"<<std::endl;
        auto armors_data = startInferAndNMS(blob);
        //传统处理获得角点以提高角点精度（实测非必须）
        //auto armors_data_ = tradition(frame, armors_data);
        //获得数字
        auto armors_data_ =  classify(frame,armors_data);
        tm.stop();
        std::cout << "time cost: " << tm.getTimeMilli() << "ms" << std::endl;
        show_number_result(frame, armors_data_);
        show_points_result(frame, armors_data_);
        show_result(armors_data_);
       // show_box_result(frame, armors_data_);

        // 按下ESC键退出
        int k = cv::waitKey(10);
        if (k == 27)
        {
            std:: cout << "退出" << std::endl;
            break;
        }
        cv::imshow("result", frame);
       // cv::destroyAllWindows();

    }
    return 0;
}
