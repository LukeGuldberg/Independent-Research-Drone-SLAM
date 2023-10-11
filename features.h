#pragma once
#include <opencv2/videoio.hpp>

struct Features
{
    cv::Mat image;
    std::vector<cv::Point2f> points = {};
};

Features find_good_features(const cv::Mat &image);

void filter_points(Features &previous, Features &current);
