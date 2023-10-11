#include "videocapture.h"
#include "features.h"

#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/calib3d.hpp>

#include <iostream>

int main()
{
    VideoCapture video_capture;                                             // sets video_capture to webam
    Features previous = find_good_features(video_capture.get_next_frame()); // starting previous frame and its points
    Features current{video_capture.get_next_frame()};                       // starting current frame, no points
    filter_points(previous, current);                                       // gathers current's points and updates previous
    cv::Mat essential_matrix = cv::findEssentialMat(previous.points, current.points);
    cv::Mat rPrev, tPrev;
    cv::recoverPose(essential_matrix, previous.points, current.points, rPrev, tPrev);
    // gather starting essential matrix, rotation matrix, and translation vector

    while (true)
    {
        Features current{video_capture.get_next_frame()}; // gather next frame
        filter_points(previous, current);                 // using previous points, set current points

        cv::Mat essential_matrix = cv::findEssentialMat(previous.points, current.points);
        cv::Mat rotation_matrix, translation_vector;
        cv::recoverPose(essential_matrix, previous.points, current.points, rotation_matrix, translation_vector); // rotation matrix and translation vector from this frame
        tPrev = tPrev + 1.0 * (rPrev * translation_vector);
        rPrev = rotation_matrix * rPrev; // accumulating rotation matrix and translation vector

        std::cout << "Essential Matrix:\n"
                  << essential_matrix << "\n\n";
        std::cout << "Rotation Matrix:\n"
                  << rPrev << "\n\n";
        std::cout << "Translation Vector:\n"
                  << tPrev << "\n\n";

        for (auto point : current.points)
        { // draw points
            cv::circle(current.image, point, 5, cv::Scalar(255));
        }

        for (std::size_t i = 0; i < current.points.size(); ++i)
        { // draw trails on points
            cv::line(current.image, previous.points.at(i), current.points.at(i), cv::Scalar(255), 2);
        }
        previous = current;

        cv::imshow("current_frame", current.image); // output frame with points and trails drawn on
        if (cv::waitKey(10) == 27)
        { // press ESC to exit
            break;
        }
    }
}
