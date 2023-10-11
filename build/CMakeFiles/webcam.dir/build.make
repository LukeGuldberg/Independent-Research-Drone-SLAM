# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\msys64\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\msys64\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\lukeg\code\opencvjoined\drone-slam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\lukeg\code\opencvjoined\drone-slam\build

# Include any dependencies generated for this target.
include CMakeFiles/webcam.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/webcam.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/webcam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webcam.dir/flags.make

CMakeFiles/webcam.dir/main.cpp.obj: CMakeFiles/webcam.dir/flags.make
CMakeFiles/webcam.dir/main.cpp.obj: CMakeFiles/webcam.dir/includes_CXX.rsp
CMakeFiles/webcam.dir/main.cpp.obj: C:/Users/lukeg/code/opencvjoined/drone-slam/main.cpp
CMakeFiles/webcam.dir/main.cpp.obj: CMakeFiles/webcam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webcam.dir/main.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/webcam.dir/main.cpp.obj -MF CMakeFiles\webcam.dir\main.cpp.obj.d -o CMakeFiles\webcam.dir\main.cpp.obj -c C:\Users\lukeg\code\opencvjoined\drone-slam\main.cpp

CMakeFiles/webcam.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webcam.dir/main.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lukeg\code\opencvjoined\drone-slam\main.cpp > CMakeFiles\webcam.dir\main.cpp.i

CMakeFiles/webcam.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webcam.dir/main.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lukeg\code\opencvjoined\drone-slam\main.cpp -o CMakeFiles\webcam.dir\main.cpp.s

CMakeFiles/webcam.dir/features.cpp.obj: CMakeFiles/webcam.dir/flags.make
CMakeFiles/webcam.dir/features.cpp.obj: CMakeFiles/webcam.dir/includes_CXX.rsp
CMakeFiles/webcam.dir/features.cpp.obj: C:/Users/lukeg/code/opencvjoined/drone-slam/features.cpp
CMakeFiles/webcam.dir/features.cpp.obj: CMakeFiles/webcam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webcam.dir/features.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/webcam.dir/features.cpp.obj -MF CMakeFiles\webcam.dir\features.cpp.obj.d -o CMakeFiles\webcam.dir\features.cpp.obj -c C:\Users\lukeg\code\opencvjoined\drone-slam\features.cpp

CMakeFiles/webcam.dir/features.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webcam.dir/features.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lukeg\code\opencvjoined\drone-slam\features.cpp > CMakeFiles\webcam.dir\features.cpp.i

CMakeFiles/webcam.dir/features.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webcam.dir/features.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lukeg\code\opencvjoined\drone-slam\features.cpp -o CMakeFiles\webcam.dir\features.cpp.s

CMakeFiles/webcam.dir/opticalflow.cpp.obj: CMakeFiles/webcam.dir/flags.make
CMakeFiles/webcam.dir/opticalflow.cpp.obj: CMakeFiles/webcam.dir/includes_CXX.rsp
CMakeFiles/webcam.dir/opticalflow.cpp.obj: C:/Users/lukeg/code/opencvjoined/drone-slam/opticalflow.cpp
CMakeFiles/webcam.dir/opticalflow.cpp.obj: CMakeFiles/webcam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webcam.dir/opticalflow.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/webcam.dir/opticalflow.cpp.obj -MF CMakeFiles\webcam.dir\opticalflow.cpp.obj.d -o CMakeFiles\webcam.dir\opticalflow.cpp.obj -c C:\Users\lukeg\code\opencvjoined\drone-slam\opticalflow.cpp

CMakeFiles/webcam.dir/opticalflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webcam.dir/opticalflow.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lukeg\code\opencvjoined\drone-slam\opticalflow.cpp > CMakeFiles\webcam.dir\opticalflow.cpp.i

CMakeFiles/webcam.dir/opticalflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webcam.dir/opticalflow.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lukeg\code\opencvjoined\drone-slam\opticalflow.cpp -o CMakeFiles\webcam.dir\opticalflow.cpp.s

CMakeFiles/webcam.dir/videocapture.cpp.obj: CMakeFiles/webcam.dir/flags.make
CMakeFiles/webcam.dir/videocapture.cpp.obj: CMakeFiles/webcam.dir/includes_CXX.rsp
CMakeFiles/webcam.dir/videocapture.cpp.obj: C:/Users/lukeg/code/opencvjoined/drone-slam/videocapture.cpp
CMakeFiles/webcam.dir/videocapture.cpp.obj: CMakeFiles/webcam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webcam.dir/videocapture.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/webcam.dir/videocapture.cpp.obj -MF CMakeFiles\webcam.dir\videocapture.cpp.obj.d -o CMakeFiles\webcam.dir\videocapture.cpp.obj -c C:\Users\lukeg\code\opencvjoined\drone-slam\videocapture.cpp

CMakeFiles/webcam.dir/videocapture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webcam.dir/videocapture.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lukeg\code\opencvjoined\drone-slam\videocapture.cpp > CMakeFiles\webcam.dir\videocapture.cpp.i

CMakeFiles/webcam.dir/videocapture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webcam.dir/videocapture.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lukeg\code\opencvjoined\drone-slam\videocapture.cpp -o CMakeFiles\webcam.dir\videocapture.cpp.s

# Object files for target webcam
webcam_OBJECTS = \
"CMakeFiles/webcam.dir/main.cpp.obj" \
"CMakeFiles/webcam.dir/features.cpp.obj" \
"CMakeFiles/webcam.dir/opticalflow.cpp.obj" \
"CMakeFiles/webcam.dir/videocapture.cpp.obj"

# External object files for target webcam
webcam_EXTERNAL_OBJECTS =

webcam.exe: CMakeFiles/webcam.dir/main.cpp.obj
webcam.exe: CMakeFiles/webcam.dir/features.cpp.obj
webcam.exe: CMakeFiles/webcam.dir/opticalflow.cpp.obj
webcam.exe: CMakeFiles/webcam.dir/videocapture.cpp.obj
webcam.exe: CMakeFiles/webcam.dir/build.make
webcam.exe: C:/msys64/mingw64/lib/libopencv_gapi.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_stitching.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_alphamat.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_aruco.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_barcode.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_bgsegm.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_ccalib.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_cvv.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_dnn_objdetect.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_dnn_superres.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_dpm.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_face.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_freetype.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_fuzzy.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_hdf.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_hfs.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_img_hash.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_intensity_transform.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_line_descriptor.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_mcc.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_ovis.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_quality.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_rapid.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_reg.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_rgbd.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_saliency.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_sfm.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_stereo.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_structured_light.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_superres.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_surface_matching.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_tracking.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_videostab.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_viz.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_wechat_qrcode.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_xfeatures2d.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_xobjdetect.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_xphoto.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_shape.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_highgui.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_datasets.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_plot.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_text.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_ml.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_phase_unwrapping.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_optflow.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_ximgproc.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_video.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_videoio.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_imgcodecs.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_objdetect.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_calib3d.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_dnn.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_features2d.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_flann.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_photo.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_imgproc.dll.a
webcam.exe: C:/msys64/mingw64/lib/libopencv_core.dll.a
webcam.exe: CMakeFiles/webcam.dir/linkLibs.rsp
webcam.exe: CMakeFiles/webcam.dir/objects1
webcam.exe: CMakeFiles/webcam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable webcam.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\webcam.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webcam.dir/build: webcam.exe
.PHONY : CMakeFiles/webcam.dir/build

CMakeFiles/webcam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\webcam.dir\cmake_clean.cmake
.PHONY : CMakeFiles/webcam.dir/clean

CMakeFiles/webcam.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\lukeg\code\opencvjoined\drone-slam C:\Users\lukeg\code\opencvjoined\drone-slam C:\Users\lukeg\code\opencvjoined\drone-slam\build C:\Users\lukeg\code\opencvjoined\drone-slam\build C:\Users\lukeg\code\opencvjoined\drone-slam\build\CMakeFiles\webcam.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webcam.dir/depend
