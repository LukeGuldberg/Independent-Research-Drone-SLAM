#include "features.h"
#include <opencv2/core/types.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/video/tracking.hpp>

Features find_good_features(const cv::Mat &image)
{
    constexpr int max_number_of_points = 20;
    constexpr double quality_level = 0.01;
    constexpr double minimum_distance = 20.0;

    std::vector<cv::Point2f> points;
    cv::goodFeaturesToTrack(image, points, max_number_of_points, quality_level, minimum_distance); // points is filled with key features (corners)
    return {image, points};
}

void filter_points(Features &previous, Features &current)
{
    // if previous points is below threshold, find more
    constexpr int min_number_of_points = 20;
    if (previous.points.size() < min_number_of_points)
    {
        previous = find_good_features(previous.image);
    }

    std::vector<uchar> forward_status;
    cv::calcOpticalFlowPyrLK(previous.image, current.image, previous.points, current.points, forward_status, {},
                             cv::Size(15, 15), 2, cv::TermCriteria(cv::TermCriteria::COUNT + cv::TermCriteria::EPS, 10, 0.03));

    std::vector<cv::Point2f> backward_points;
    std::vector<uchar> backward_status;
    cv::calcOpticalFlowPyrLK(current.image, previous.image, current.points, backward_points, backward_status, {},
                             cv::Size(15, 15), 2, cv::TermCriteria(cv::TermCriteria::COUNT + cv::TermCriteria::EPS, 10, 0.03));

    // filter out bad points by keeping ones that have a good status
    std::vector<cv::Point2f> previous_keep, current_keep;
    for (std::size_t i = 0; i < forward_status.size(); ++i)
    {
        if (forward_status.at(i) && backward_status.at(i))
        {
            previous_keep.push_back(previous.points.at(i));
            current_keep.push_back(current.points.at(i));
        }
    }

    // update features to only contain good points
    previous.points = previous_keep;
    current.points = current_keep;
}