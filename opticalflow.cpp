#include "opticalflow.h"
#include <opencv2/video/tracking.hpp>

OpticalFlow::OpticalFlow(cv::Mat previous_gray_scale, cv::Mat current_gray_scale, std::vector<cv::Point2f> previous_points, int num_features_added)
    : previous_gray_scale{previous_gray_scale}, current_gray_scale{current_gray_scale}, previous_points{previous_points}, num_features_added{num_features_added}
{
    criteria = cv::TermCriteria((cv::TermCriteria::COUNT) + (cv::TermCriteria::EPS), 10, 0.03);

    std::vector<cv::Point2f> current_points; // temp vector to hold data between <=> lookup
    cv::calcOpticalFlowPyrLK(previous_gray_scale, current_gray_scale, previous_points, current_points, status1, err, cv::Size(15, 15), 2, criteria);
    cv::calcOpticalFlowPyrLK(current_gray_scale, previous_gray_scale, current_points, next_points, status2, err, cv::Size(15, 15), 2, criteria);
    // use calcOptFlow forwards and backwards for more accurate points

    find_desired_points(next_points);
    /* each optflow calculation creates a status vector which says whether the point at the same index should be remembered
    find_desired_points tests the status from both optflow calculations and stores the points accordingly*/
}

void OpticalFlow::find_desired_points(std::vector<cv::Point2f> next_points)
{
    uint end_size = previous_points.size() - num_features_added;
    for (uint i = 0; i < previous_points.size(); ++i)
    {
        if (status1.at(i) == 1 && status2.at(i) == 1 && status1.size() < end_size)
        {
            points_to_add.push_back(next_points.at(i));
        }
        else if (status1.at(i) == 1 && status2.at(i) == 1 && status1.size() >= end_size)
        { // pair
            points_to_replace.push_back({previous_points.at(i), next_points.at(i)});
        }
        else
        {
            points_to_remove.push_back(next_points.at(i));
        }
    }
}
