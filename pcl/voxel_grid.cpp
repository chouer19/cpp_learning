#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>

typedef pcl::PointXYZI PointType;
typedef pcl::PointCloud<PointType> PointCloud;
typedef pcl::PointCloud<PointType>::Ptr PointCloudPtr;

int
main ()
{
  PointCloudPtr cloud (new PointCloud ());
  //pcl::PCLPointCloud::Ptr cloud_filtered (new pcl::PCLPointCloud ());
  PointCloud cloud_filtered ;
  PointCloud cloud_map;

  // Fill in the cloud data
  pcl::PCDReader reader;
  // Replace the path below with the path where you saved your file
  reader.read ("table_scene_lms400.pcd", *cloud); // Remember to download the file first!

  std::cerr << "PointCloud before filtering: " << cloud->width * cloud->height 
       << " data points (" << pcl::getFieldsList (*cloud) << ")." << std::endl;

  {
      // Create the filtering object
      pcl::VoxelGrid<PointType> sor;
      sor.setInputCloud (cloud);
      sor.setLeafSize (0.01f, 0.01f, 0.01f);
      sor.filter (cloud_filtered);
  }
  cloud_map = cloud_filtered;

  std::cerr << "PointCloud after filtering: " << cloud_filtered.width * cloud_filtered.height 
       << " data points (" << pcl::getFieldsList (cloud_filtered) << ")." << std::endl;
  ///std::cerr << "PointCloud after filtering: " << cloud_filtered->width * cloud_filtered->height 
  ///     << " data points (" << pcl::getFieldsList (*cloud_filtered) << ")." << std::endl;

  ///pcl::PCDWriter writer;
  ///writer.write ("table_scene_lms400_downsampled.pcd", *cloud_filtered, 
  ///       Eigen::Vector4f::Zero (), Eigen::Quaternionf::Identity (), false);

  return (0);
}
