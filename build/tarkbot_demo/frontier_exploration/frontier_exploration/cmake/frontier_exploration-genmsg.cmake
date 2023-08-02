# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "frontier_exploration: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ifrontier_exploration:/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg;-Ifrontier_exploration:/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Imove_base_msgs:/opt/ros/noetic/share/move_base_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(frontier_exploration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" "frontier_exploration/ExploreTaskActionResult:actionlib_msgs/GoalID:geometry_msgs/Point32:frontier_exploration/ExploreTaskGoal:geometry_msgs/Pose:geometry_msgs/Quaternion:frontier_exploration/ExploreTaskActionGoal:std_msgs/Header:actionlib_msgs/GoalStatus:geometry_msgs/PointStamped:geometry_msgs/PoseStamped:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:frontier_exploration/ExploreTaskActionFeedback:geometry_msgs/Point:frontier_exploration/ExploreTaskResult:frontier_exploration/ExploreTaskFeedback"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Point32:frontier_exploration/ExploreTaskGoal:std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/Point"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" "actionlib_msgs/GoalStatus:frontier_exploration/ExploreTaskResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:frontier_exploration/ExploreTaskFeedback"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" "geometry_msgs/Point32:std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/Point"
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" ""
)

get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_custom_target(_frontier_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frontier_exploration" "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_cpp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
)

### Generating Services

### Generating Module File
_generate_module_cpp(frontier_exploration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(frontier_exploration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(frontier_exploration_generate_messages frontier_exploration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_cpp _frontier_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frontier_exploration_gencpp)
add_dependencies(frontier_exploration_gencpp frontier_exploration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frontier_exploration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)
_generate_msg_eus(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
)

### Generating Services

### Generating Module File
_generate_module_eus(frontier_exploration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(frontier_exploration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(frontier_exploration_generate_messages frontier_exploration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_eus _frontier_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frontier_exploration_geneus)
add_dependencies(frontier_exploration_geneus frontier_exploration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frontier_exploration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)
_generate_msg_lisp(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
)

### Generating Services

### Generating Module File
_generate_module_lisp(frontier_exploration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(frontier_exploration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(frontier_exploration_generate_messages frontier_exploration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_lisp _frontier_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frontier_exploration_genlisp)
add_dependencies(frontier_exploration_genlisp frontier_exploration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frontier_exploration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)
_generate_msg_nodejs(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
)

### Generating Services

### Generating Module File
_generate_module_nodejs(frontier_exploration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(frontier_exploration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(frontier_exploration_generate_messages frontier_exploration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_nodejs _frontier_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frontier_exploration_gennodejs)
add_dependencies(frontier_exploration_gennodejs frontier_exploration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frontier_exploration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)
_generate_msg_py(frontier_exploration
  "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
)

### Generating Services

### Generating Module File
_generate_module_py(frontier_exploration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(frontier_exploration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(frontier_exploration_generate_messages frontier_exploration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc_1/TarkBot/src/tarkbot_demo/frontier_exploration/frontier_exploration/msg/Frontier.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskAction.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskActionFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskGoal.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskResult.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc_1/TarkBot/devel/share/frontier_exploration/msg/ExploreTaskFeedback.msg" NAME_WE)
add_dependencies(frontier_exploration_generate_messages_py _frontier_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frontier_exploration_genpy)
add_dependencies(frontier_exploration_genpy frontier_exploration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frontier_exploration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frontier_exploration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(frontier_exploration_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(frontier_exploration_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(frontier_exploration_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET move_base_msgs_generate_messages_cpp)
  add_dependencies(frontier_exploration_generate_messages_cpp move_base_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(frontier_exploration_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frontier_exploration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(frontier_exploration_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(frontier_exploration_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(frontier_exploration_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET move_base_msgs_generate_messages_eus)
  add_dependencies(frontier_exploration_generate_messages_eus move_base_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(frontier_exploration_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frontier_exploration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(frontier_exploration_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(frontier_exploration_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(frontier_exploration_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET move_base_msgs_generate_messages_lisp)
  add_dependencies(frontier_exploration_generate_messages_lisp move_base_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(frontier_exploration_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frontier_exploration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(frontier_exploration_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(frontier_exploration_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(frontier_exploration_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET move_base_msgs_generate_messages_nodejs)
  add_dependencies(frontier_exploration_generate_messages_nodejs move_base_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(frontier_exploration_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frontier_exploration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(frontier_exploration_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(frontier_exploration_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(frontier_exploration_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET move_base_msgs_generate_messages_py)
  add_dependencies(frontier_exploration_generate_messages_py move_base_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(frontier_exploration_generate_messages_py visualization_msgs_generate_messages_py)
endif()
