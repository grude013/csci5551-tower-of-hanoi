# Install script for directory: /home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE PROGRAM FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE PROGRAM FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/setup.bash;/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/setup.bash"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/setup.sh;/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/setup.sh"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/setup.zsh;/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/setup.zsh"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/install" TYPE FILE FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs/msg" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/AnalogIOState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/AnalogIOStates.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/AnalogOutputCommand.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/AssemblyState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/AssemblyStates.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/CameraControl.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/CameraSettings.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/CollisionAvoidanceState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/CollisionDetectionState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/DigitalIOState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/DigitalIOStates.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/DigitalOutputCommand.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/EndEffectorCommand.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/EndEffectorProperties.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/EndEffectorState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/EndpointState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/EndpointStates.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/HeadPanCommand.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/HeadState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/JointCommand.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/NavigatorState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/NavigatorStates.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/RobustControllerStatus.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/SEAJointState.msg"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/msg/URDFConfiguration.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs/srv" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/srv/CloseCamera.srv"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/srv/ListCameras.srv"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/srv/OpenCamera.srv"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/srv/SolvePositionIK.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs/cmake" TYPE FILE FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/baxter_core_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/include/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/share/roseus/ros/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/share/common-lisp/ros/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/share/gennodejs/ros/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/lib/python3/dist-packages/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/devel/.private/baxter_core_msgs/lib/python3/dist-packages/baxter_core_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/baxter_core_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs/cmake" TYPE FILE FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/baxter_core_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs/cmake" TYPE FILE FILES
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/baxter_core_msgsConfig.cmake"
    "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/catkin_generated/installspace/baxter_core_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_core_msgs" TYPE FILE FILES "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/src/baxter_common/baxter_core_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ros/TowerOfHanoi5551/csci5551-tower-of-hanoi/build/baxter_core_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")