list_subdirectories2( LIST_LIBS ${LIBS_DIR}/ 1)
list_subdirectories4( LIST_APPS ${TOOLS_DIR}/ 1)
list_subdirectories4( LIST_APPS ${DRIVERS_DIR}/ 1)
list_subdirectories4( LIST_APPS ${EXAMPLES_DIR}/ 1)

IF(NOT DEFINED build-default)
	SET(build-default ON)
ENDIF(NOT DEFINED build-default)


FOREACH (app ${LIST_APPS})
	option(build_${app} "Build tool ${tool}" ${build-default})
ENDFOREACH()

JDEROBOT_DEPENDENT_OPTION(build_comm_cpp "Build lib comm_cpp " ON "build_cameraview;build_kobukiViewer;build_visualStates;build_basic_component" OFF)

JDEROBOT_DEPENDENT_OPTION(build_comm_py "Build lib comm_py " ON "build_colorTuner_py;build_pantilt_teleop_py;build_uav_viewer_py;build_visualStates;build_basic_component_py" OFF)

#JDEROBOT_DEPENDENT_OPTION(build_depthLib "Build lib depthLib " ON "FALSE" OFF)
option(build_depthLib "Build lib depthLib " ${build-default})

JDEROBOT_DEPENDENT_OPTION(build_jderobotHandlers "Build lib jderobotHandlers " ON "build_replayController" OFF)

JDEROBOT_DEPENDENT_OPTION(build_parallelIce "Build lib parallelIce " ON "build_navigatorCamera;build_cameraCalibrator;build_rgbdManualCalibrator;build_rgbdViewer" OFF)

#JDEROBOT_DEPENDENT_OPTION(build_parallelIce_py "Build lib parallelIce_py " ON "TRUE" OFF)
option(build_parallelIce_py "Build lib parallelIce_py" ${build-default})

JDEROBOT_DEPENDENT_OPTION(build_colorspaces "Build lib colorspaces " ON "build_comm_cpp;build_parallelIce;build_3DViewer;build_cameraCalibrator;build_cameraview;build_giraffeClient;build_kobukiViewer;build_navigatorCamera;build_replayer2;build_recorder2;build_replayController;build_rgbdCalibrator;build_rgbdViewer;build_rgbdManualCalibrator;build_ardrone_server;build_gazeboserver;build_pclRGBDServer;build_cameraserver;build_openni1Server;build_kinect2server;build_openniServer;build_basic_component;build_opencvdemo" OFF)

#JDEROBOT_DEPENDENT_OPTION(build_imgAnalyze "Build lib imgAnalyze " ON "FALSE" OFF)
option(build_imgAnalyze "Build lib imgAnalyze" ${build-default})

JDEROBOT_DEPENDENT_OPTION(build_cvblob "Build lib cvblob " ON "build_rgbdCalibrator" OFF)

JDEROBOT_DEPENDENT_OPTION(build_cvfast "Build lib cvfast " ON "build_imgAnalyze" OFF)

JDEROBOT_DEPENDENT_OPTION(build_visionlib "Build lib visionlib " ON "build_imgAnalyze;build_cvblob;build_cvfast;build_colorspaces" OFF)



#JDEROBOT_DEPENDENT_OPTION(build_xmlParser "Build lib xmlParser " ON "FALSE" OFF)
option(build_xmlParser "Build lib xmlParser" ${build-default})

JDEROBOT_DEPENDENT_OPTION(build_easyiceconfig "Build lib easyiceconfig " ON "build_3DViewer;build_cameraCalibrator;build_giraffeClient;build_namingService;build_navigatorCamera;build_replayer2;build_recorder2;build_replayController;build_rgbdCalibrator;build_rgbdViewer;build_rgbdManualCalibrator;build_uav_viewer;build_ardrone_server;build_gazeboserver;build_pclRGBDServer;build_cameraserver;build_openni1Server;build_kinect2server;build_openniServer;build_emSensorDriver;build_evicam_driver;build_visualStates;build_basic_server;build_opencvdemo" OFF)

JDEROBOT_DEPENDENT_OPTION(build_easyiceconfig_py "Build lib easyiceconfig_py " ON "build_cameraview_py;build_emSensorviewPy;build_visualStates" OFF)

JDEROBOT_DEPENDENT_OPTION(build_jderobotutil "Build lib jderobotutil " ON "build_3DViewer;build_cameraCalibrator;build_cameraview;build_giraffeClient;build_kobukiViewer;build_navigatorCamera;build_replayer2;build_recorder2;build_replayController;build_rgbdViewer;build_rgbdManualCalibrator;build_uav_viewer;build_gazeboserver;build_pclRGBDServer;build_cameraserver;build_openni1Server;build_kinect2server;build_openniServer;build_visualStates;build_basic_component;build_opencvdemo" OFF)

JDEROBOT_DEPENDENT_OPTION(build_jderobotViewer "Build lib jderobotViewer " ON "build_3DViewer" OFF)

JDEROBOT_DEPENDENT_OPTION(build_pioneer "Build lib pioneer " ON "build_replayController;build_rgbdViewer;" OFF)

JDEROBOT_DEPENDENT_OPTION(build_config_cpp "Build lib config_cpp " ON "build_comm_cpp;build_visualStates;build_basic_component" OFF)


JDEROBOT_DEPENDENT_OPTION(build_config_py "Build lib config_py " ON "build_comm_py;build_cameraserver_py;build_visualStates;build_YoutubeServer;build_basic_component_py" OFF)

#JDEROBOT_DEPENDENT_OPTION(build_fuzzylib "Build lib fuzzylib " ON "FALSE" OFF)
option(build_fuzzylib "Build lib fuzzylib" ${build-default})

JDEROBOT_DEPENDENT_OPTION(build_ns "Build lib ns " ON "build_3DViewer;build_replayer2;build_recorder2;build_kinect2server;build_openniServer" OFF)

JDEROBOT_DEPENDENT_OPTION(build_logger "Build lib depthLib " ON "build_ns;build_comm_cpp;build_parallelIce;build_3DViewer;build_recorder2;build_replayer2;build_kinect2server;build_openniServer;" OFF)




JDEROBOT_DEPENDENT_OPTION(build_progeo "Build lib depthLib " ON "build_imgAnalyze;build_giraffeClient;build_replayController;build_rgbdManualCalibrator;build_rgbdCalibrator;build_rgbdViewer;build_openni1Server" OFF)


JDEROBOT_DEPENDENT_OPTION(build_geometry "Build lib geometry " ON "build_rgbdCalibrator;build_rgbdViewer;build_openniServer;build_kinect2server" OFF)

JDEROBOT_DEPENDENT_OPTION(build_resourcelocator "Build lib depthLib " ON "build_cameraview;build_navigatorCamera;build_recorder2;build_replayer2;build_replayController;build_rgbdViewer;build_uav_viewer;build_opencvdemo" OFF)

JDEROBOT_DEPENDENT_OPTION(build_interfaces_cpp "Build lib interfaces_cpp " ON "build_comm_cpp;build_3DViewer;build_cameraview;build_cameraCalibrator;build_navigatorCamera;build_giraffeClient;build_kobukiViewer;build_recorder2;build_replayer2;build_replayController;build_rgbdViewer;build_uav_viewer;build_rgbdCalibrator;build_rgbdManualCalibrator;build_visualStates;build_ardrone_server;build_cameraserver;build_emSensorDriver;build_evicam_driver;build_gazeboserver;build_giraffeServer;build_kinect2server;build_openni1Server;build_openniServer;build_pclRGBDServer;build_basic_component;build_opencvdemo" OFF)

JDEROBOT_DEPENDENT_OPTION(build_interfaces_python "Build lib interfaces_python " ON "build_cameraview_py;build_colorTuner_py;build_emSensorviewPy;build_pantilt_teleop_py;build_uav_viewer_py;build_visualStates;build_cameraserver_py;build_YoutubeServer;build_basic_component_py" OFF)                     