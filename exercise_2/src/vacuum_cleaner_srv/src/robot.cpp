#include "ros/ros.h"
#include "vacuum_cleaner_srv/service1.h"
#include "vacuum_cleaner_srv/message1.h"
#include <random>


// This node represents the server
/*
struct Lab{
    int id;
    string name;
};

Lab selectRandomLab(const vector<Lab>& locations){
    int index = rand() % locations.size();
    return locations[index];
}

// Define the function that execute and send back the requests from the clients
int32 generateBatteryStatus(){
    // generate casual number for battery status
    std::random_device rd; 
    std::mt19937 gen(rd());  
    std::uniform_int_distribution<> dis(1, 100); 
    int random_number = dis(gen);
    return random_number;
}
*/
bool robotInfo(vacuum_cleaner_srv::service1::Request &request, vacuum_cleaner_srv::service1::Response &response){

    ROS_INFO("Received request from charging station ID: %d", request.ID_station);
    response.header.stamp = ros::Time::now();
    response.info_robot.batteryStatus = 35;
    response.info_robot.ID = 4;
    response.info_robot.roomName = "IAS Lab";
    ROS_INFO("Response sent to station ID: %d", request.ID_station);
    return true;
}

int main(int argc, char **argv){
/*
    srand(static_cast<unsigned>(time(0)));

    vector<Lab> locations = {{4, "IAS Lab"}, {2, "SSL Lab"}, {3, "Neurorobotics Lab"}, {1, "Robot Vision Lab"}, {5, "Autonomous Robot Lab"}};
*/
    ros::init(argc, argv, "robot_server");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("robot_info", robotInfo);
    ROS_INFO("Ready to response!"); 
    ros::spin();
    return 0;
}





