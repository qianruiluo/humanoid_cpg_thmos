execute_process(COMMAND "/home/CAD/butai01/ws/build/ik/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/CAD/butai01/ws/build/ik/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
