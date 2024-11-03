# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fsc: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ifsc:/home/CAD/butai01/ws/src/fsc/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fsc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_custom_target(_fsc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsc" "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" ""
)

get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_custom_target(_fsc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsc" "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" ""
)

get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_custom_target(_fsc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fsc" "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc
)
_generate_msg_cpp(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc
)

### Generating Services
_generate_srv_cpp(fsc
  "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc
)

### Generating Module File
_generate_module_cpp(fsc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fsc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fsc_generate_messages fsc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_dependencies(fsc_generate_messages_cpp _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_dependencies(fsc_generate_messages_cpp _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_dependencies(fsc_generate_messages_cpp _fsc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsc_gencpp)
add_dependencies(fsc_gencpp fsc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc
)
_generate_msg_eus(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc
)

### Generating Services
_generate_srv_eus(fsc
  "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc
)

### Generating Module File
_generate_module_eus(fsc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fsc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fsc_generate_messages fsc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_dependencies(fsc_generate_messages_eus _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_dependencies(fsc_generate_messages_eus _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_dependencies(fsc_generate_messages_eus _fsc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsc_geneus)
add_dependencies(fsc_geneus fsc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc
)
_generate_msg_lisp(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc
)

### Generating Services
_generate_srv_lisp(fsc
  "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc
)

### Generating Module File
_generate_module_lisp(fsc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fsc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fsc_generate_messages fsc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_dependencies(fsc_generate_messages_lisp _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_dependencies(fsc_generate_messages_lisp _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_dependencies(fsc_generate_messages_lisp _fsc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsc_genlisp)
add_dependencies(fsc_genlisp fsc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc
)
_generate_msg_nodejs(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc
)

### Generating Services
_generate_srv_nodejs(fsc
  "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc
)

### Generating Module File
_generate_module_nodejs(fsc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fsc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fsc_generate_messages fsc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_dependencies(fsc_generate_messages_nodejs _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_dependencies(fsc_generate_messages_nodejs _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_dependencies(fsc_generate_messages_nodejs _fsc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsc_gennodejs)
add_dependencies(fsc_gennodejs fsc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc
)
_generate_msg_py(fsc
  "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc
)

### Generating Services
_generate_srv_py(fsc
  "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc
)

### Generating Module File
_generate_module_py(fsc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fsc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fsc_generate_messages fsc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/MyState.msg" NAME_WE)
add_dependencies(fsc_generate_messages_py _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/srv/SetV.srv" NAME_WE)
add_dependencies(fsc_generate_messages_py _fsc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/CAD/butai01/ws/src/fsc/msg/CpgParam.msg" NAME_WE)
add_dependencies(fsc_generate_messages_py _fsc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fsc_genpy)
add_dependencies(fsc_genpy fsc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fsc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fsc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fsc_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fsc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fsc_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fsc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fsc_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fsc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fsc_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fsc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fsc_generate_messages_py std_msgs_generate_messages_py)
endif()
