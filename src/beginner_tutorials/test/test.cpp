#include <gtest/gtest.h>
#include <ros/ros.h>
#include"talker.cpp"

// declear a test
TEST(TESTSuite, talkertest) {
 ros::NodeHandle nh;
 ROStalker rt;
 EXPECT_EQ(rt.add(5,8), 13);
}

int main(int argc, char **argv){
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
