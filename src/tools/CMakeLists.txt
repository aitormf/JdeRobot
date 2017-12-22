list_subdirectories( LIST_TOOLS ${CMAKE_CURRENT_SOURCE_DIR} 1)

FOREACH (tool ${LIST_TOOLS})
	if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${tool}/CMakeLists.txt)
		IF(build_${tool})
			MESSAGE(STATUS "Processing tool ${tool}")
			ADD_SUBDIRECTORY (${tool})
		ENDIF(build_${tool})
	endif(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${tool}/CMakeLists.txt)
ENDFOREACH()

