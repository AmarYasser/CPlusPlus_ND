#ifndef SUNDETECTOR_H
#define SUNDETECTOR_H

#include <iostream>
#include <vector>

#include <opencv2/opencv.hpp>
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"

class sunDetector
{
private:
    // imgages
    cv::Mat frame, gry_img, blurredImage, threshold_img;
    // points
    std::vector<int> sunCenter;
    std::vector<int> frameCenter;
public:
    // consturctor
    sunDetector();
    sunDetector (cv::Mat fr);
    sunDetector (std::string path);
    

    // setter
    void setFrame( std::string path);
    void setFrame(cv::Mat fr);

    void setSunCenter(cv::Point center);
    
    void setFrameCenter();

    // getters
    cv::Mat getFrame();
    std::vector<int> getSunCenter();
    std::vector<int> getFrameCenter();
    // method find sun 
    void findSun ();
    void display(std::string action);

};







#endif