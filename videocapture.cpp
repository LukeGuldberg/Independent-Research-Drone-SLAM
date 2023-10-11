#include "videocapture.h"
#include <opencv2/imgproc.hpp>
#include <iostream>

VideoCapture::VideoCapture()
    : capture{0} // webcam
{
    if (!capture.isOpened())
    {
        throw std::runtime_error("Unable to open VideoCapture");
    }
}

cv::Mat VideoCapture::get_next_frame()
{
    cv::Mat image;
    if (!capture.read(image))
    {
        throw std::runtime_error("No frame can be read");
    }

    // convert to gray scale
    cv::cvtColor(image, image, cv::COLOR_BGR2GRAY);

    return image;
}
