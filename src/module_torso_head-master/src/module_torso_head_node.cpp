#include <module_torso_head/module_torso_head.hpp>
#include <string>

int main(int argc, char **argv)
{
	std::string basic_module_name("TORSO_HEAD_BM");

	ros::init(argc,argv,basic_module_name);

	ros::NodeHandle nh_("~");

	ModuleTorsoHead mth(&nh_, basic_module_name);

	ros::spin();

	return 0;
}

