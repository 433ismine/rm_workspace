# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/clion-2023.3.2/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /opt/clion/clion-2023.3.2/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuyu/workspace/rm/rm_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug

# Include any dependencies generated for this target.
include ros_openvino/CMakeFiles/inference.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ros_openvino/CMakeFiles/inference.dir/compiler_depend.make

# Include the progress variables for this target.
include ros_openvino/CMakeFiles/inference.dir/progress.make

# Include the compile flags for this target's objects.
include ros_openvino/CMakeFiles/inference.dir/flags.make

ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o: ros_openvino/CMakeFiles/inference.dir/flags.make
ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o: /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/inference.cpp
ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o: ros_openvino/CMakeFiles/inference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o -MF CMakeFiles/inference.dir/src/inference.cpp.o.d -o CMakeFiles/inference.dir/src/inference.cpp.o -c /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/inference.cpp

ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inference.dir/src/inference.cpp.i"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/inference.cpp > CMakeFiles/inference.dir/src/inference.cpp.i

ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inference.dir/src/inference.cpp.s"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/inference.cpp -o CMakeFiles/inference.dir/src/inference.cpp.s

ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o: ros_openvino/CMakeFiles/inference.dir/flags.make
ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o: /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/number_classifier.cpp
ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o: ros_openvino/CMakeFiles/inference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o -MF CMakeFiles/inference.dir/src/number_classifier.cpp.o.d -o CMakeFiles/inference.dir/src/number_classifier.cpp.o -c /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/number_classifier.cpp

ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inference.dir/src/number_classifier.cpp.i"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/number_classifier.cpp > CMakeFiles/inference.dir/src/number_classifier.cpp.i

ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inference.dir/src/number_classifier.cpp.s"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/number_classifier.cpp -o CMakeFiles/inference.dir/src/number_classifier.cpp.s

ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o: ros_openvino/CMakeFiles/inference.dir/flags.make
ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o: /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/tradition.cpp
ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o: ros_openvino/CMakeFiles/inference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o -MF CMakeFiles/inference.dir/src/tradition.cpp.o.d -o CMakeFiles/inference.dir/src/tradition.cpp.o -c /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/tradition.cpp

ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inference.dir/src/tradition.cpp.i"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/tradition.cpp > CMakeFiles/inference.dir/src/tradition.cpp.i

ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inference.dir/src/tradition.cpp.s"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/tradition.cpp -o CMakeFiles/inference.dir/src/tradition.cpp.s

ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o: ros_openvino/CMakeFiles/inference.dir/flags.make
ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o: /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/video_detect_test.cpp
ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o: ros_openvino/CMakeFiles/inference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o -MF CMakeFiles/inference.dir/src/video_detect_test.cpp.o.d -o CMakeFiles/inference.dir/src/video_detect_test.cpp.o -c /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/video_detect_test.cpp

ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inference.dir/src/video_detect_test.cpp.i"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/video_detect_test.cpp > CMakeFiles/inference.dir/src/video_detect_test.cpp.i

ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inference.dir/src/video_detect_test.cpp.s"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/video_detect_test.cpp -o CMakeFiles/inference.dir/src/video_detect_test.cpp.s

ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o: ros_openvino/CMakeFiles/inference.dir/flags.make
ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o: /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/camera.cpp
ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o: ros_openvino/CMakeFiles/inference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o -MF CMakeFiles/inference.dir/src/camera.cpp.o.d -o CMakeFiles/inference.dir/src/camera.cpp.o -c /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/camera.cpp

ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inference.dir/src/camera.cpp.i"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/camera.cpp > CMakeFiles/inference.dir/src/camera.cpp.i

ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inference.dir/src/camera.cpp.s"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino/src/camera.cpp -o CMakeFiles/inference.dir/src/camera.cpp.s

# Object files for target inference
inference_OBJECTS = \
"CMakeFiles/inference.dir/src/inference.cpp.o" \
"CMakeFiles/inference.dir/src/number_classifier.cpp.o" \
"CMakeFiles/inference.dir/src/tradition.cpp.o" \
"CMakeFiles/inference.dir/src/video_detect_test.cpp.o" \
"CMakeFiles/inference.dir/src/camera.cpp.o"

# External object files for target inference
inference_EXTERNAL_OBJECTS =

devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/src/inference.cpp.o
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/src/number_classifier.cpp.o
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/src/tradition.cpp.o
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/src/video_detect_test.cpp.o
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/src/camera.cpp.o
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/build.make
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libroscpp.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librostime.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libroscpp.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/librostime.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/ros_openvino/inference: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/ros_openvino/inference: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_gapi.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_highgui.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_ml.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_objdetect.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_photo.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_stitching.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_video.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_videoio.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_imgcodecs.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_dnn.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_calib3d.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_features2d.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_flann.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_imgproc.so.4.9.0
devel/lib/ros_openvino/inference: /usr/local/lib/libopencv_core.so.4.9.0
devel/lib/ros_openvino/inference: /opt/intel/openvino_2023.3.0/runtime/lib/intel64/libopenvino_c.so.2023.3.0
devel/lib/ros_openvino/inference: /opt/intel/openvino_2023.3.0/runtime/lib/intel64/libopenvino.so.2023.3.0
devel/lib/ros_openvino/inference: ros_openvino/CMakeFiles/inference.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../devel/lib/ros_openvino/inference"
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inference.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_openvino/CMakeFiles/inference.dir/build: devel/lib/ros_openvino/inference
.PHONY : ros_openvino/CMakeFiles/inference.dir/build

ros_openvino/CMakeFiles/inference.dir/clean:
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino && $(CMAKE_COMMAND) -P CMakeFiles/inference.dir/cmake_clean.cmake
.PHONY : ros_openvino/CMakeFiles/inference.dir/clean

ros_openvino/CMakeFiles/inference.dir/depend:
	cd /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuyu/workspace/rm/rm_workspace/src /home/yuyu/workspace/rm/rm_workspace/src/ros_openvino /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino /home/yuyu/workspace/rm/rm_workspace/src/cmake-build-debug/ros_openvino/CMakeFiles/inference.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : ros_openvino/CMakeFiles/inference.dir/depend

