list_subdirectories( LIST_LIBS ${CMAKE_CURRENT_SOURCE_DIR} 1)

FOREACH (libs ${LIST_LIBS})
	if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${libs}/CMakeLists.txt)
		IF(build_${libs})
			MESSAGE(STATUS "Processing lib ${libs}")
			ADD_SUBDIRECTORY (${libs})
		ENDIF(build_${libs})
	endif(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${libs}/CMakeLists.txt)
ENDFOREACH()

install( FILES visionlib.h
    DESTINATION ${CMAKE_INSTALL_PREFIX}/include/jderobot/visionlib/
    COMPONENT colorspaces
)

