#ifndef SOLARPANEL_H
#define SOLARPANEL_H
#include <string>
#include "SunDetector.h"

class solarPanel
{
private:
    //std::string imagePath = "../resources/sun.png";
    sunDetector sd;
    std::string Action;

public:
    solarPanel();
    std::string takeAction(cv::Mat& fr);
};



#endif 