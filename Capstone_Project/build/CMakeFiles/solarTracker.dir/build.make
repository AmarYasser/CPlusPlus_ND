# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ammar/Documents/CPP/Capstone_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ammar/Documents/CPP/Capstone_Project/build

# Include any dependencies generated for this target.
include CMakeFiles/solarTracker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/solarTracker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/solarTracker.dir/flags.make

CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o: CMakeFiles/solarTracker.dir/flags.make
CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o: ../src/SunDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o -c /home/ammar/Documents/CPP/Capstone_Project/src/SunDetector.cpp

CMakeFiles/solarTracker.dir/src/SunDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solarTracker.dir/src/SunDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ammar/Documents/CPP/Capstone_Project/src/SunDetector.cpp > CMakeFiles/solarTracker.dir/src/SunDetector.cpp.i

CMakeFiles/solarTracker.dir/src/SunDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solarTracker.dir/src/SunDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ammar/Documents/CPP/Capstone_Project/src/SunDetector.cpp -o CMakeFiles/solarTracker.dir/src/SunDetector.cpp.s

CMakeFiles/solarTracker.dir/src/Test.cpp.o: CMakeFiles/solarTracker.dir/flags.make
CMakeFiles/solarTracker.dir/src/Test.cpp.o: ../src/Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/solarTracker.dir/src/Test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solarTracker.dir/src/Test.cpp.o -c /home/ammar/Documents/CPP/Capstone_Project/src/Test.cpp

CMakeFiles/solarTracker.dir/src/Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solarTracker.dir/src/Test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ammar/Documents/CPP/Capstone_Project/src/Test.cpp > CMakeFiles/solarTracker.dir/src/Test.cpp.i

CMakeFiles/solarTracker.dir/src/Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solarTracker.dir/src/Test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ammar/Documents/CPP/Capstone_Project/src/Test.cpp -o CMakeFiles/solarTracker.dir/src/Test.cpp.s

CMakeFiles/solarTracker.dir/src/main.cpp.o: CMakeFiles/solarTracker.dir/flags.make
CMakeFiles/solarTracker.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/solarTracker.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solarTracker.dir/src/main.cpp.o -c /home/ammar/Documents/CPP/Capstone_Project/src/main.cpp

CMakeFiles/solarTracker.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solarTracker.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ammar/Documents/CPP/Capstone_Project/src/main.cpp > CMakeFiles/solarTracker.dir/src/main.cpp.i

CMakeFiles/solarTracker.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solarTracker.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ammar/Documents/CPP/Capstone_Project/src/main.cpp -o CMakeFiles/solarTracker.dir/src/main.cpp.s

CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o: CMakeFiles/solarTracker.dir/flags.make
CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o: ../src/solarPanel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o -c /home/ammar/Documents/CPP/Capstone_Project/src/solarPanel.cpp

CMakeFiles/solarTracker.dir/src/solarPanel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solarTracker.dir/src/solarPanel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ammar/Documents/CPP/Capstone_Project/src/solarPanel.cpp > CMakeFiles/solarTracker.dir/src/solarPanel.cpp.i

CMakeFiles/solarTracker.dir/src/solarPanel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solarTracker.dir/src/solarPanel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ammar/Documents/CPP/Capstone_Project/src/solarPanel.cpp -o CMakeFiles/solarTracker.dir/src/solarPanel.cpp.s

# Object files for target solarTracker
solarTracker_OBJECTS = \
"CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o" \
"CMakeFiles/solarTracker.dir/src/Test.cpp.o" \
"CMakeFiles/solarTracker.dir/src/main.cpp.o" \
"CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o"

# External object files for target solarTracker
solarTracker_EXTERNAL_OBJECTS =

solarTracker: CMakeFiles/solarTracker.dir/src/SunDetector.cpp.o
solarTracker: CMakeFiles/solarTracker.dir/src/Test.cpp.o
solarTracker: CMakeFiles/solarTracker.dir/src/main.cpp.o
solarTracker: CMakeFiles/solarTracker.dir/src/solarPanel.cpp.o
solarTracker: CMakeFiles/solarTracker.dir/build.make
solarTracker: /usr/local/lib/libopencv_gapi.so.4.4.0
solarTracker: /usr/local/lib/libopencv_stitching.so.4.4.0
solarTracker: /usr/local/lib/libopencv_aruco.so.4.4.0
solarTracker: /usr/local/lib/libopencv_bgsegm.so.4.4.0
solarTracker: /usr/local/lib/libopencv_bioinspired.so.4.4.0
solarTracker: /usr/local/lib/libopencv_ccalib.so.4.4.0
solarTracker: /usr/local/lib/libopencv_dnn_objdetect.so.4.4.0
solarTracker: /usr/local/lib/libopencv_dnn_superres.so.4.4.0
solarTracker: /usr/local/lib/libopencv_dpm.so.4.4.0
solarTracker: /usr/local/lib/libopencv_face.so.4.4.0
solarTracker: /usr/local/lib/libopencv_freetype.so.4.4.0
solarTracker: /usr/local/lib/libopencv_fuzzy.so.4.4.0
solarTracker: /usr/local/lib/libopencv_hfs.so.4.4.0
solarTracker: /usr/local/lib/libopencv_img_hash.so.4.4.0
solarTracker: /usr/local/lib/libopencv_intensity_transform.so.4.4.0
solarTracker: /usr/local/lib/libopencv_line_descriptor.so.4.4.0
solarTracker: /usr/local/lib/libopencv_quality.so.4.4.0
solarTracker: /usr/local/lib/libopencv_rapid.so.4.4.0
solarTracker: /usr/local/lib/libopencv_reg.so.4.4.0
solarTracker: /usr/local/lib/libopencv_rgbd.so.4.4.0
solarTracker: /usr/local/lib/libopencv_saliency.so.4.4.0
solarTracker: /usr/local/lib/libopencv_stereo.so.4.4.0
solarTracker: /usr/local/lib/libopencv_structured_light.so.4.4.0
solarTracker: /usr/local/lib/libopencv_superres.so.4.4.0
solarTracker: /usr/local/lib/libopencv_surface_matching.so.4.4.0
solarTracker: /usr/local/lib/libopencv_tracking.so.4.4.0
solarTracker: /usr/local/lib/libopencv_videostab.so.4.4.0
solarTracker: /usr/local/lib/libopencv_xfeatures2d.so.4.4.0
solarTracker: /usr/local/lib/libopencv_xobjdetect.so.4.4.0
solarTracker: /usr/local/lib/libopencv_xphoto.so.4.4.0
solarTracker: /usr/local/lib/libopencv_shape.so.4.4.0
solarTracker: /usr/local/lib/libopencv_highgui.so.4.4.0
solarTracker: /usr/local/lib/libopencv_datasets.so.4.4.0
solarTracker: /usr/local/lib/libopencv_plot.so.4.4.0
solarTracker: /usr/local/lib/libopencv_text.so.4.4.0
solarTracker: /usr/local/lib/libopencv_dnn.so.4.4.0
solarTracker: /usr/local/lib/libopencv_ml.so.4.4.0
solarTracker: /usr/local/lib/libopencv_phase_unwrapping.so.4.4.0
solarTracker: /usr/local/lib/libopencv_optflow.so.4.4.0
solarTracker: /usr/local/lib/libopencv_ximgproc.so.4.4.0
solarTracker: /usr/local/lib/libopencv_video.so.4.4.0
solarTracker: /usr/local/lib/libopencv_videoio.so.4.4.0
solarTracker: /usr/local/lib/libopencv_imgcodecs.so.4.4.0
solarTracker: /usr/local/lib/libopencv_objdetect.so.4.4.0
solarTracker: /usr/local/lib/libopencv_calib3d.so.4.4.0
solarTracker: /usr/local/lib/libopencv_features2d.so.4.4.0
solarTracker: /usr/local/lib/libopencv_flann.so.4.4.0
solarTracker: /usr/local/lib/libopencv_photo.so.4.4.0
solarTracker: /usr/local/lib/libopencv_imgproc.so.4.4.0
solarTracker: /usr/local/lib/libopencv_core.so.4.4.0
solarTracker: CMakeFiles/solarTracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable solarTracker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solarTracker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/solarTracker.dir/build: solarTracker

.PHONY : CMakeFiles/solarTracker.dir/build

CMakeFiles/solarTracker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/solarTracker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/solarTracker.dir/clean

CMakeFiles/solarTracker.dir/depend:
	cd /home/ammar/Documents/CPP/Capstone_Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ammar/Documents/CPP/Capstone_Project /home/ammar/Documents/CPP/Capstone_Project /home/ammar/Documents/CPP/Capstone_Project/build /home/ammar/Documents/CPP/Capstone_Project/build /home/ammar/Documents/CPP/Capstone_Project/build/CMakeFiles/solarTracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/solarTracker.dir/depend

