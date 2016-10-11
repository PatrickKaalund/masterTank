# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(rtabmap_ros_CONFIG_INCLUDED)
  return()
endif()
set(rtabmap_ros_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(rtabmap_ros_SOURCE_PREFIX /home/plinux/RosPacks/masterTank/src/rtabmap_ros)
  set(rtabmap_ros_DEVEL_PREFIX /home/plinux/RosPacks/masterTank/devel_isolated/rtabmap_ros)
  set(rtabmap_ros_INSTALL_PREFIX "")
  set(rtabmap_ros_PREFIX ${rtabmap_ros_DEVEL_PREFIX})
else()
  set(rtabmap_ros_SOURCE_PREFIX "")
  set(rtabmap_ros_DEVEL_PREFIX "")
  set(rtabmap_ros_INSTALL_PREFIX /home/plinux/RosPacks/masterTank/install_isolated)
  set(rtabmap_ros_PREFIX ${rtabmap_ros_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'rtabmap_ros' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(rtabmap_ros_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap_ros/include;/home/plinux/RosPacks/masterTank/src/rtabmap_ros/include;/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap/lib/rtabmap-0.11/../../include/rtabmap-0.11;/opt/ros/kinetic/include/opencv-3.1.0-dev/opencv;/opt/ros/kinetic/include/opencv-3.1.0-dev " STREQUAL " ")
  set(rtabmap_ros_INCLUDE_DIRS "")
  set(_include_dirs "/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap_ros/include;/home/plinux/RosPacks/masterTank/src/rtabmap_ros/include;/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap/lib/rtabmap-0.11/../../include/rtabmap-0.11;/opt/ros/kinetic/include/opencv-3.1.0-dev/opencv;/opt/ros/kinetic/include/opencv-3.1.0-dev")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${rtabmap_ros_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'rtabmap_ros' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'Mathieu Labbe <matlabbe@gmail.com>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'rtabmap_ros' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/plinux/RosPacks/masterTank/src/rtabmap_ros/${idir}'.  Ask the maintainer 'Mathieu Labbe <matlabbe@gmail.com>' to fix it.")
    endif()
    _list_append_unique(rtabmap_ros_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "rtabmap_ros;/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap/lib/librtabmap_core.so;/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap/lib/librtabmap_utilite.so;/home/plinux/RosPacks/masterTank/devel_isolated/rtabmap/lib/librtabmap_gui.so;/usr/lib/x86_64-linux-gnu/libz.so;/opt/ros/kinetic/lib/libg2o_core.so;/opt/ros/kinetic/lib/libg2o_types_slam2d.so;/opt/ros/kinetic/lib/libg2o_types_slam3d.so;/opt/ros/kinetic/lib/libg2o_types_sba.so;/opt/ros/kinetic/lib/libg2o_stuff.so;/opt/ros/kinetic/lib/libg2o_solver_csparse.so;/opt/ros/kinetic/lib/libg2o_csparse_extension.so;/usr/lib/x86_64-linux-gnu/libcxsparse.so;/opt/ros/kinetic/lib/libg2o_solver_cholmod.so;/usr/lib/x86_64-linux-gnu/libcholmod.so;/opt/ros/kinetic/lib/libfreenect.so;/opt/ros/kinetic/lib/libfreenect_sync.so;/usr/lib/libOpenNI2.so;/usr/lib/x86_64-linux-gnu/libdc1394.so;/opt/ros/kinetic/lib/liboctomap.so;/opt/ros/kinetic/lib/liboctomath.so;/opt/ros/kinetic/lib/libopencv_xphoto3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_tracking3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_text3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_structured_light3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_stereo3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_saliency3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_rgbd3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_reg3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_plot3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_optflow3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_hdf3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_face3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_dpm3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_dnn3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_datasets3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_cvv3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_ccalib3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_aruco3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_viz3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_videostab3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_videoio3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_video3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_superres3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_stitching3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_shape3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_photo3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_objdetect3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_ml3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_imgproc3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_highgui3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_flann3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_features2d3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_core3.so.3.1.0;/opt/ros/kinetic/lib/libopencv_calib3d3.so.3.1.0")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/plinux/RosPacks/masterTank/devel_isolated/rtabmap_ros/lib;/home/plinux/RosPacks/masterTank/devel_isolated/my_robot_name_2dnav/lib;/home/plinux/RosPacks/masterTank/devel_isolated/move_base/lib;/home/plinux/RosPacks/masterTank/devel_isolated/rotate_recovery/lib;/home/plinux/RosPacks/masterTank/devel_isolated/global_planner/lib;/home/plinux/RosPacks/masterTank/devel_isolated/navfn/lib;/home/plinux/RosPacks/masterTank/devel_isolated/move_slow_and_clear/lib;/home/plinux/RosPacks/masterTank/devel_isolated/dwa_local_planner/lib;/home/plinux/RosPacks/masterTank/devel_isolated/clear_costmap_recovery/lib;/home/plinux/RosPacks/masterTank/devel_isolated/carrot_planner/lib;/home/plinux/RosPacks/masterTank/devel_isolated/base_local_planner/lib;/home/plinux/RosPacks/masterTank/devel_isolated/nav_core/lib;/home/plinux/RosPacks/masterTank/devel_isolated/frontier_exploration/lib;/home/plinux/RosPacks/masterTank/devel_isolated/costmap_2d/lib;/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib;/home/plinux/RosPacks/masterTank/devel_isolated/hokuyo_node/lib;/home/plinux/RosPacks/masterTank/devel_isolated/timestamp_tools/lib;/home/plinux/RosPacks/masterTank/devel_isolated/robot_pose_ekf/lib;/home/plinux/RosPacks/masterTank/devel_isolated/navigation/lib;/home/plinux/RosPacks/masterTank/devel_isolated/master_tank_navigation/lib;/home/plinux/RosPacks/masterTank/devel_isolated/amcl/lib;/home/plinux/RosPacks/masterTank/devel_isolated/map_server/lib;/home/plinux/RosPacks/masterTank/devel_isolated/fake_localization/lib;/home/plinux/RosPacks/masterTank/devel_isolated/driver_common/lib;/home/plinux/RosPacks/masterTank/devel_isolated/driver_base/lib;/home/plinux/RosPacks/urg_node/devel/lib;/home/plinux/RosPacks/ork/devel/lib;/home/plinux/RosPacks/moveit/devel/lib;/home/plinux/RosPacks/usb_cam/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(rtabmap_ros_LIBRARY_DIRS ${lib_path})
      list(APPEND rtabmap_ros_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'rtabmap_ros'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND rtabmap_ros_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(rtabmap_ros_EXPORTED_TARGETS "rtabmap_ros_generate_messages_cpp;rtabmap_ros_generate_messages_eus;rtabmap_ros_generate_messages_lisp;rtabmap_ros_generate_messages_nodejs;rtabmap_ros_generate_messages_py;rtabmap_ros_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${rtabmap_ros_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "cv_bridge;roscpp;rospy;sensor_msgs;std_msgs;std_srvs;nav_msgs;geometry_msgs;visualization_msgs;image_transport;tf;tf_conversions;tf2_ros;eigen_conversions;laser_geometry;pcl_conversions;pcl_ros;nodelet;dynamic_reconfigure;message_filters;class_loader;stereo_msgs;move_base_msgs;image_geometry;costmap_2d;octomap_ros;rviz")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 rtabmap_ros_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${rtabmap_ros_dep}_FOUND)
      find_package(${rtabmap_ros_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${rtabmap_ros_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(rtabmap_ros_INCLUDE_DIRS ${${rtabmap_ros_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(rtabmap_ros_LIBRARIES ${rtabmap_ros_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${rtabmap_ros_dep}_LIBRARIES})
  _list_append_deduplicate(rtabmap_ros_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(rtabmap_ros_LIBRARIES ${rtabmap_ros_LIBRARIES})

  _list_append_unique(rtabmap_ros_LIBRARY_DIRS ${${rtabmap_ros_dep}_LIBRARY_DIRS})
  list(APPEND rtabmap_ros_EXPORTED_TARGETS ${${rtabmap_ros_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "rtabmap_ros-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${rtabmap_ros_DIR}/${extra})
  endif()
  include(${extra})
endforeach()