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


if(bitbots_docs_CONFIG_INCLUDED)
  return()
endif()
set(bitbots_docs_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(bitbots_docs_SOURCE_PREFIX /home/CAD/butai01/ws/src/bitbots_thmos_meta/bitbots_tools/bitbots_docs)
  set(bitbots_docs_DEVEL_PREFIX /home/CAD/butai01/ws/devel/.private/bitbots_docs)
  set(bitbots_docs_INSTALL_PREFIX "")
  set(bitbots_docs_PREFIX ${bitbots_docs_DEVEL_PREFIX})
else()
  set(bitbots_docs_SOURCE_PREFIX "")
  set(bitbots_docs_DEVEL_PREFIX "")
  set(bitbots_docs_INSTALL_PREFIX /home/CAD/butai01/ws/install)
  set(bitbots_docs_PREFIX ${bitbots_docs_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'bitbots_docs' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(bitbots_docs_FOUND_CATKIN_PROJECT TRUE)

if(NOT " " STREQUAL " ")
  set(bitbots_docs_INCLUDE_DIRS "")
  set(_include_dirs "")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Finn-Thorben Sell <7sell@finn-thorben.me>, Hamburg Bit-Bots <info@bit-bots.de>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${bitbots_docs_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'bitbots_docs' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'bitbots_docs' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/CAD/butai01/ws/src/bitbots_thmos_meta/bitbots_tools/bitbots_docs/${idir}'.  ${_report}")
    endif()
    _list_append_unique(bitbots_docs_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND bitbots_docs_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND bitbots_docs_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT bitbots_docs_NUM_DUMMY_TARGETS)
      set(bitbots_docs_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::bitbots_docs::wrapped-linker-option${bitbots_docs_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR bitbots_docs_NUM_DUMMY_TARGETS "${bitbots_docs_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::bitbots_docs::wrapped-linker-option${bitbots_docs_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND bitbots_docs_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND bitbots_docs_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND bitbots_docs_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/CAD/butai01/ws/devel/.private/bitbots_docs/lib;/home/CAD/butai01/ws/devel/lib;/home/CAD/butai01/workspace/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(bitbots_docs_LIBRARY_DIRS ${lib_path})
      list(APPEND bitbots_docs_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'bitbots_docs'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND bitbots_docs_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(bitbots_docs_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${bitbots_docs_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 bitbots_docs_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${bitbots_docs_dep}_FOUND)
      find_package(${bitbots_docs_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${bitbots_docs_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(bitbots_docs_INCLUDE_DIRS ${${bitbots_docs_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(bitbots_docs_LIBRARIES ${bitbots_docs_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${bitbots_docs_dep}_LIBRARIES})
  _list_append_deduplicate(bitbots_docs_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(bitbots_docs_LIBRARIES ${bitbots_docs_LIBRARIES})

  _list_append_unique(bitbots_docs_LIBRARY_DIRS ${${bitbots_docs_dep}_LIBRARY_DIRS})
  list(APPEND bitbots_docs_EXPORTED_TARGETS ${${bitbots_docs_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "enable_bitbots_docs.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${bitbots_docs_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
