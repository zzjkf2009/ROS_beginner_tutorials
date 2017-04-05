# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_service_examples: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_service_examples_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv" NAME_WE)
add_custom_target(_ros_service_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_service_examples" "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_service_examples
  "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_service_examples
)

### Generating Module File
_generate_module_cpp(ros_service_examples
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_service_examples
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_service_examples_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_service_examples_generate_messages ros_service_examples_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv" NAME_WE)
add_dependencies(ros_service_examples_generate_messages_cpp _ros_service_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_service_examples_gencpp)
add_dependencies(ros_service_examples_gencpp ros_service_examples_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_service_examples_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_service_examples
  "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_service_examples
)

### Generating Module File
_generate_module_lisp(ros_service_examples
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_service_examples
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_service_examples_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_service_examples_generate_messages ros_service_examples_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv" NAME_WE)
add_dependencies(ros_service_examples_generate_messages_lisp _ros_service_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_service_examples_genlisp)
add_dependencies(ros_service_examples_genlisp ros_service_examples_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_service_examples_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_service_examples
  "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_service_examples
)

### Generating Module File
_generate_module_py(ros_service_examples
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_service_examples
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_service_examples_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_service_examples_generate_messages ros_service_examples_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejiang/ROS_beginner_tutorials_ws/src/ros_service_examples/srv/MP3InventoryService.srv" NAME_WE)
add_dependencies(ros_service_examples_generate_messages_py _ros_service_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_service_examples_genpy)
add_dependencies(ros_service_examples_genpy ros_service_examples_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_service_examples_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_service_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_service_examples
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_service_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_service_examples
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_service_examples)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_service_examples\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_service_examples
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
