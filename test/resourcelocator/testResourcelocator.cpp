#include <string>
#include <iostream>
#include <resourcelocator/resourcelocator.hpp> 
#include "test_config.h"
#include <gtest/gtest.h>


TEST(resourcelocator, FileFound) {
	std::string source = std::string(DATA_PATH)+"/glade/cameraview.glade";
	std::string gladepath = resourcelocator::findFile("cameraview.glade", "", std::string(DATA_PATH)+"/glade");
	std::cout << gladepath;

	EXPECT_EQ(source,gladepath);
}

TEST(resourcelocator, FileNotFoud){

	std::string source = "";
	std::string gladepath = resourcelocator::findFile("notFile.glade", "", std::string(DATA_PATH)+"/glade");
	std::cout << gladepath;

	EXPECT_EQ(source ,gladepath);

}



/////////////////////////////////////////////////
/// Main
int main(int argc, char **argv)
{
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}