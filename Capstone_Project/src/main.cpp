#include <solarPanel.h>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;




int main()
{

    solarPanel sp;

    // Create a VideoCapture object and open the input file
    cv::VideoCapture cap("../resources/sky_clouds.mp4");

    // Check if camera opened successfully
    if (!cap.isOpened())
    {
        std::cout << ">>>>> Error opening video <<<<" << std::endl;
        return -1;
    }


    while (1)
    {
        cv::Mat frame;
        cap >> frame;
        sp.takeAction(frame);


        // If the frame is empty, break immediately
        if (frame.empty())
            break;
    }

    //release
    cap.release();
    // Closes all the windows
    destroyAllWindows();

    return 0;
}