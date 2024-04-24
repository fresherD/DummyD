# Install script for directory: /root/ros_ws/src/autoware_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_msgs/msg" TYPE FILE FILES
    "/root/ros_ws/src/autoware_msgs/msg/CanInfo.msg"
    "/root/ros_ws/src/autoware_msgs/msg/CANData.msg"
    "/root/ros_ws/src/autoware_msgs/msg/CANPacket.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ControlCommandStamped.msg"
    "/root/ros_ws/src/autoware_msgs/msg/CloudCluster.msg"
    "/root/ros_ws/src/autoware_msgs/msg/CloudClusterArray.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ColorSet.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ControlCommand.msg"
    "/root/ros_ws/src/autoware_msgs/msg/DetectedObject.msg"
    "/root/ros_ws/src/autoware_msgs/msg/DetectedObjectArray.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ExtractedPosition.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ImageLaneObjects.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ImageObjects.msg"
    "/root/ros_ws/src/autoware_msgs/msg/LaneArray.msg"
    "/root/ros_ws/src/autoware_msgs/msg/PointsImage.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ScanImage.msg"
    "/root/ros_ws/src/autoware_msgs/msg/Signals.msg"
    "/root/ros_ws/src/autoware_msgs/msg/TunedResult.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ValueSet.msg"
    "/root/ros_ws/src/autoware_msgs/msg/centroids.msg"
    "/root/ros_ws/src/autoware_msgs/msg/dtlane.msg"
    "/root/ros_ws/src/autoware_msgs/msg/geometric_rectangle.msg"
    "/root/ros_ws/src/autoware_msgs/msg/icp_stat.msg"
    "/root/ros_ws/src/autoware_msgs/msg/image_obj.msg"
    "/root/ros_ws/src/autoware_msgs/msg/image_obj_ranged.msg"
    "/root/ros_ws/src/autoware_msgs/msg/image_obj_tracked.msg"
    "/root/ros_ws/src/autoware_msgs/msg/image_rect.msg"
    "/root/ros_ws/src/autoware_msgs/msg/image_rect_ranged.msg"
    "/root/ros_ws/src/autoware_msgs/msg/lane.msg"
    "/root/ros_ws/src/autoware_msgs/msg/ndt_stat.msg"
    "/root/ros_ws/src/autoware_msgs/msg/obj_label.msg"
    "/root/ros_ws/src/autoware_msgs/msg/obj_pose.msg"
    "/root/ros_ws/src/autoware_msgs/msg/projection_matrix.msg"
    "/root/ros_ws/src/autoware_msgs/msg/vscan_tracked.msg"
    "/root/ros_ws/src/autoware_msgs/msg/vscan_tracked_array.msg"
    "/root/ros_ws/src/autoware_msgs/msg/waypoint.msg"
    "/root/ros_ws/src/autoware_msgs/msg/WaypointState.msg"
    "/root/ros_ws/src/autoware_msgs/msg/VehicleCmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/VehicleStatus.msg"
    "/root/ros_ws/src/autoware_msgs/msg/TrafficLightResult.msg"
    "/root/ros_ws/src/autoware_msgs/msg/TrafficLightResultArray.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigApproximateNdtMapping.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigCarDpm.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigCarFusion.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigCarKf.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigDecisionMaker.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigDistanceFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigRingGroundFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigICP.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigLaneRule.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigLaneSelect.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigLaneStop.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigLatticeVelocitySet.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigNdt.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigNdtMapping.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigNdtMappingOutput.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPedestrianDpm.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPedestrianFusion.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPedestrianKf.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPlannerSelector.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPoints2Polygon.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigPointsConcatFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigRandomFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigRingFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigRayGroundFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigSsd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigTwistFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigVelocitySet.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigVoxelGridFilter.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigWaypointLoader.msg"
    "/root/ros_ws/src/autoware_msgs/msg/config/ConfigWaypointFollower.msg"
    "/root/ros_ws/src/autoware_msgs/msg/accel_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/adjust_xy.msg"
    "/root/ros_ws/src/autoware_msgs/msg/brake_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/indicator_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/lamp_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/steer_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/traffic_light.msg"
    "/root/ros_ws/src/autoware_msgs/msg/state_cmd.msg"
    "/root/ros_ws/src/autoware_msgs/msg/state.msg"
    "/root/ros_ws/src/autoware_msgs/msg/Sync_time_monitor.msg"
    "/root/ros_ws/src/autoware_msgs/msg/Sync_time_diff.msg"
    "/root/ros_ws/src/autoware_msgs/msg/RemoteCmd.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_msgs/cmake" TYPE FILE FILES "/root/ros_ws/build/autoware_msgs/catkin_generated/installspace/autoware_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/ros_ws/devel/include/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/ros_ws/devel/share/roseus/ros/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/ros_ws/devel/share/common-lisp/ros/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/ros_ws/devel/share/gennodejs/ros/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/root/ros_ws/devel/lib/python2.7/dist-packages/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/root/ros_ws/devel/lib/python2.7/dist-packages/autoware_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/ros_ws/build/autoware_msgs/catkin_generated/installspace/autoware_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_msgs/cmake" TYPE FILE FILES "/root/ros_ws/build/autoware_msgs/catkin_generated/installspace/autoware_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_msgs/cmake" TYPE FILE FILES
    "/root/ros_ws/build/autoware_msgs/catkin_generated/installspace/autoware_msgsConfig.cmake"
    "/root/ros_ws/build/autoware_msgs/catkin_generated/installspace/autoware_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_msgs" TYPE FILE FILES "/root/ros_ws/src/autoware_msgs/package.xml")
endif()

