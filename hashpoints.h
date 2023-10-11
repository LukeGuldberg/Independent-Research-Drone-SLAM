#include <opencv2/core/types_c.h>

#include <functional>
#include <iostream>
#include <opencv2/core/types.hpp>
#include <unordered_map>
#include <vector>
namespace std
{
    template <>
    struct hash<cv::Point2f>
    {
        std::size_t operator()(const cv::Point2f &v) const
        {
            std::size_t x = std::hash<float>{}(v.x);
            std::size_t y = std::hash<float>{}(v.y);
            return x ^ (y << 1);
        }
    };
} // namespace std

class PointTracker
{
public:
    void update(std::vector<cv::Point2f> points_to_add, std::vector<cv::Point2f> points_to_remove, std::vector<std::pair<cv::Point2f, cv::Point2f>> points_to_replace);

    void add(std::vector<cv::Point2f> add);
    void replace(std::vector<std::pair<cv::Point2f, cv::Point2f>> points_to_replace);
    void remove(std::vector<cv::Point2f> remove);

    // new point appears
    void insert(const cv::Point2f point);

    // when a good-point disappears
    void erase(const cv::Point2f point);

    // when the good-point moves
    void erase_and_replace(cv::Point2f old_point, cv::Point2f new_point);

    bool search(cv::Point2f point);
    std::vector<cv::Point2f> lookup(cv::Point2f point);

    std::unordered_map<cv::Point2f, std::vector<cv::Point2f>> table;

private:
    std::hash<cv::Point2f> hash;
};