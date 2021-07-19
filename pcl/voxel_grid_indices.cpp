#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/PointIndices.h>
#include <pcl/pcl_base.h>
#include <vector>
#include <utility>

typedef pcl::PointXYZI PointType;
typedef pcl::PointCloud<PointType> PointCloud;
typedef pcl::PointCloud<PointType>::Ptr PointCloudPtr;

int
main ()
{
  //pcl::PCLPointCloud2::Ptr cloud (new pcl::PCLPointCloud2 ());
  PointCloudPtr cloud (new PointCloud ());

  // Fill in the cloud data
  pcl::PCDReader reader;
  // Replace the path below with the path where you saved your file
  reader.read ("table_scene_lms400.pcd", *cloud); // Remember to download the file first!

  std::vector<std::int> indices;
  std::size_t size = cloud->width * cloud->height;
  for(int i=0; i< size/100; i++){
      indices.push_back(i*10);
  }
  //pcl::PointIndices pcl_indices;
  //pcl::PointIndices::Ptr pcl_indices_ptr;
  pcl::PointIndicesPtr indicesPtr (new pcl::PointIndices());
  indicesPtr->indices = indices;

  std::cerr << "PointCloud before filtering: " << cloud->width * cloud->height 
       << " data points (" << pcl::getFieldsList (*cloud) << ")." << std::endl;
  std::cout << "indices size : " << indicesPtr->indices.size() << std::endl;

  {
  PointCloudPtr cloud_filtered (new PointCloud ());
      pcl::VoxelGrid<PointType> sor;
      sor.setInputCloud (cloud);
      sor.setLeafSize (0.01f, 0.01f, 0.01f);
      sor.filter (*cloud_filtered);
      std::cout << "voxel 100 xyz is : " << sor[20].x << std::endl;
  std::cerr << "PointCloud after filtering: " << cloud_filtered->width * cloud_filtered->height 
       << " data points (" << pcl::getFieldsList (*cloud_filtered) << ")." << std::endl;
  }


  {
  PointCloudPtr cloud_filtered (new PointCloud ());
      pcl::VoxelGrid<PointType> sor;
      sor.setInputCloud (cloud);
      sor.setIndices(indicesPtr);
      sor.setLeafSize (0.01f, 0.01f, 0.01f);
      sor.filter (*cloud_filtered);
      std::cout << "voxel 100 xyz is : " << sor[20].x << std::endl;
  std::cerr << "PointCloud after filtering: " << cloud_filtered->width * cloud_filtered->height 
       << " data points (" << pcl::getFieldsList (*cloud_filtered) << ")." << std::endl;
  }

  ///pcl::PCDWriter writer;
  ///writer.write ("table_scene_lms400_downsampled.pcd", *cloud_filtered, 
  ///       Eigen::Vector4f::Zero (), Eigen::Quaternionf::Identity (), false);

  return (0);
}
