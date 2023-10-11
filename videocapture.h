#pragma once
#include <opencv2/videoio.hpp>
#include <vector>

class VideoCapture
{
public:
    VideoCapture();
    cv::Mat get_next_frame();

private:
    cv::VideoCapture capture;
};
