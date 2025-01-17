function(enable_bitbots_docs)
    # create directories neccessary for sphinx
    file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/docs/_build/doxyoutput)
	file(COPY /home/CAD/butai01/ws/install/share/bitbots_docs/files/_static DESTINATION ${CMAKE_SOURCE_DIR}/docs)

    # copy default configuration files from bitbots_docs into target package
    # but only do so when the target does not yet exist to prevent overriding of manual edits
    if(NOT EXISTS ${CMAKE_SOURCE_DIR}/docs/index.rst)
        file(COPY /home/CAD/butai01/ws/install/share/bitbots_docs/files/index.rst DESTINATION ${CMAKE_SOURCE_DIR}/docs)
    endif()
    if(NOT EXISTS ${CMAKE_SOURCE_DIR}/docs/conf.py)
        file(COPY /home/CAD/butai01/ws/install/share/bitbots_docs/files/conf.py DESTINATION ${CMAKE_SOURCE_DIR}/docs)
    endif()

    # figure out if we have python files in the current package and only do sphinx-apidoc if we do
    file(GLOB_RECURSE files_py CONFIGURE_DEPENDS ${CMAKE_SOURCE_DIR}/src/*.py)
    list(LENGTH files_py num_files_py)
    if (num_files_py)

        add_custom_target(Documentation
                    COMMENT "Building documentation from source"
                    COMMAND sphinx-apidoc src/${PROJECT_NAME} -o docs/pyapi
                    COMMAND sphinx-build docs docs/_out -b html
                    BYPRODUCTS docs/_out docs/cppapi docs/pyapi
                    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

    else()
        add_custom_target(Documentation
                    COMMENT "Building documentation from source"
                    COMMAND sphinx-build docs docs/_out -b html
                    BYPRODUCTS docs/_out docs/cppapi docs/pyapi
                    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
    endif()
endfunction()
