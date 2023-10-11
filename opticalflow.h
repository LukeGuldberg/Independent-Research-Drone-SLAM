#pragma once
#include <vector>
#include <opencv2/video/tracking.hpp>

class OpticalFlow
{
public:
    OpticalFlow(cv::Mat previous_gray_scale, cv::Mat current_gray_scale, std::vector<cv::Point2f> previous_points, int num_features_added);

    // fills vectors desired_points and undesired_points
    void find_desired_points(std::vector<cv::Point2f> current_points);

    cv::Mat previous_gray_scale, current_gray_scale;

    // points from last frame              // all the drawn points
    std::vector<cv::Point2f> previous_points, next_points;

    // holds data for hashpoints
    std::vector<cv::Point2f> points_to_add, points_to_remove;
    //                      previous      next
    std::vector<std::pair<cv::Point2f, cv::Point2f>> points_to_replace;

    std::vector<uchar> status1, status2;
    std::vector<float> err;
    cv::TermCriteria criteria;

    // how many nums were pushed back into prev_points and will be added - not replaced
    int num_features_added;
};