#include "ros/ros.h"
#include "vacuum_cleaner_srv/service1.h"
#include <std_msgs/Header.h>
#include <cstdlib>

// Request node (Client node)

void requestInfo(ros::ServiceClient &client, int station_id){
    vacuum_cleaner_srv::service1 srv;

    // Create request header
    //srv.request.header.stamp = ros::Time::now();
    srv.request.ID_station = station_id;

    if (client.call(srv)){
        ROS_INFO("Station %d received response! \n TimeStamp: %f \n Room ID: %d \n Room name: %s \n Battery status: %f", station_id, srv.response.header.stamp.toSec(),srv.response.info_robot.ID, srv.response.info_robot.roomName.c_str(), srv.response.info_robot.batteryStatus);
    } else {
        ROS_ERROR("Failed to call the server");
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "client");
    ros::NodeHandle n;

    int station_id = atoi(argv[1]); 

    //define the frequencies of charging station's requests
    float request_periods[4] = {0.1, 0.5, 1, 1}; 

    ros::ServiceClient client = n.serviceClient<vacuum_cleaner_srv::service1>("robot_info");

    ros::Rate rate(request_periods[station_id - 1]);  
    while (ros::ok()) {
        requestInfo(client, station_id);
        rate.sleep();
    }

    return 0;
}