#include "hashpoints.h"

void PointTracker::update(std::vector<cv::Point2f> points_to_add, std::vector<cv::Point2f> points_to_remove, std::vector<std::pair<cv::Point2f, cv::Point2f>> points_to_replace)
{
    add(points_to_add);
    replace(points_to_replace);
    remove(points_to_remove);
}

void PointTracker::add(std::vector<cv::Point2f> points_to_add)
{
    for (std::size_t i = 0; i < points_to_add.size(); ++i)
    {
        insert(points_to_add.at(i));
    }
}

void PointTracker::replace(std::vector<std::pair<cv::Point2f, cv::Point2f>> points_to_replace)
{
    for (std::size_t i = 0; i < points_to_replace.size(); ++i)
    {
        erase_and_replace(points_to_replace.at(i).first, points_to_replace.at(i).second);
    }
}

void PointTracker::remove(std::vector<cv::Point2f> points_to_remove)
{
    for (std::size_t i = 0; i < points_to_remove.size(); ++i)
    {
        erase(points_to_remove.at(i));
    }
}

void PointTracker::insert(const cv::Point2f point)
{
    table[point];
}

void PointTracker::erase(const cv::Point2f point)
{
    table.erase(point);
    std::cout << "Erased " << point << "\n";
}

void PointTracker::erase_and_replace(cv::Point2f old_point, cv::Point2f new_point)
{
    std::vector<cv::Point2f> points = table[old_point];
    points.push_back(old_point);
    table[new_point] = points;
    table.erase(old_point);
}

bool PointTracker::search(cv::Point2f point)
{
    return table.find(point) != table.end();
}

std::vector<cv::Point2f> PointTracker::lookup(cv::Point2f point)
{
    return table[point];
}
