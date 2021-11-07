# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

This is a mess right now... It should be cleaned up soon.

I got stuck a few times on the approach below. I had to take a couple days off, but now it is time to make this happen. First let's do some reading.

### Host System 

This is being tested in fresh install of Ubuntu 18.04.06 LTS (desktop amd64) in VirtualBox. The system has been updated with Software Updater (gui), and no other commands have been run.

Check that the system is up to date before proceeding.

```
sudo apt update
sudo apt upgrade
```

### Install (or build?) ROS

Install ROS Melodic using the instructions on [ros.org](http://wiki.ros.org/melodic/Installation/Ubuntu). 

Complete Steps 1.1-1.3 in the installation instructions. 

On step 1.4 choose the _bare bones_ option (`ros-melodic-ros-base`), then complete the remainder of the instructions as usual.



### Installing Python 3.7

The egg file for the official realease of CARLA 0.9.12 implies that the version was built in Python 3.7. We want to install Python 3.7 alongside of 2.7 and 3.6. There are known issues related to the `update-alternatives` method shown in several tutorials online, so I will not complete this step. Afterwards we will use Python 3.7 in a `venv` so we will invoke it with `python`. DON'T BORK THE DEPS MAX!

Also, it looks like we can use `ppa:ubuntu-toolchain-r/ppa` or `ppa:deadsnakes/ppa` to get the new version. I think deadsnakes is the more commonly used option.

Upgrade and install Python 3.7 from [deadsnakes](https://github.com/orgs/deadsnakes/repositories)
```
sudo apt update
sudo apt upgrade

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
```

Check the versions installed
```
python --version
    Python 2.7.17

python3 --version
    Python 3.6.9

python3.7 --version
    Python 3.7.12
```

Again, I am not going to worry about the default version for now because we are going to use a `venv` so it does not matter.

We need `pip` for Python3.7 to use venv. There are several answers for how to do this([here](https://stackoverflow.com/questions/54633657/how-to-install-pip-for-python-3-7-on-ubuntu-18) and here), but we want the solution that follows the Python docs. 

Make a directory and create a virtual python environment
```
mkdir ~/.venv
cd ~/.venv
python3.7 -m venv carla-py37
    Error: Command '['/home/thill/test/bin/python3.7', '-Im', 'ensurepip', '--upgrade', '--default-pip']' returned non-zero exit status 1.
```

This failed because we need `pip` for Python 3.7 for `venv` to work with Python3.7. The activate script was not created properly

```
source carla-py37/bin/activate
    bash: carla-py37/bin/activate: No such file or directory
```


Here is post about it on the [deadsnakes github](https://github.com/deadsnakes/issues/issues/79). The advice in that post is that `ensurepip` comes with `install python#.#-venv`. This makes sense, and the advice in the link should fix this.

```
sudo apt install python3.7-venv
```

Install required system wide packages. 
```
sudo apt install software-properties-common build-essential
```

### Setup Catkin Workspace

```
mkdir -p carla-ros-bridge/catkin_make_ws/src
cd carla-ros-bridge/catkin_make_ws
catkin_make -DPYTHON_VERSION=3.7
```

OR

```
mkdir -p carla-ros-bridge/catkin_bukld_ws/src
cd carla-ros-bridge/catkin_build_ws
catkin build
```




Now create a virtual Python3.7 environment with `venv`. Remove the environment if it already exists for a fresh start.

```
rm -rf ~/.venv/carla-py37
cd ~/.venv
    python3.7 -m venv carla-py37  
```
If that runs without errors, the evironment is ready to use. Activate the virtual environment and test the python version. After activation, the terminal shows the venv name to the left. 

 To activate: `source ~/.venv/carla-py37/bin/activate`

 To deactivate: `deactivate`

Check the python version
```
python --version
    Python 3.7.12
```

Check for pip 
```
python -m ensurepip  
    Looking in links: /tmp/tmphxz02iz3
    Requirement already satisfied: setuptools in ./carla-py37/lib/python3.7/site-packages (47.1.0)
    Requirement already satisfied: pip in ./carla-py37/lib/python3.7/site-packages (20.1.1
```

If you install a package thie warning suggests upgrading pip

```
WARNING: You are using pip version 20.1.1; however, version 21.3.1 is available.
You should consider upgrading via the '/home/<USER>/.venv/carla-py37/bin/python3.7 -m pip install --upgrade pip' command.
```

Upgrade pip

``` 
pip install --upgrade pip
 
 ...

      Successfully uninstalled pip-20.1.1
      Successfully installed pip-21.3.1
```

Install python packages for building ROS. This list comes from the [source installation](http://wiki.ros.org/melodic/Installation/Source) instructions for ROS Melodic.

```
pip install rosdep rosinstall-generator vcstool rosinstall wstool empy

    Successfully installed PyYAML-6.0 catkin-pkg-0.4.24 distro-1.6.0 docutils-0.18 pyparsing-3.0.5 python-dateutil-2.8.2 rosdep-0.21.0 rosdistro-0.8.3 rosinstall-0.7.8 rosinstall-generator-0.1.22 rospkg-1.3.0 six-1.16.0 vcstool-0.3.0 vcstools-0.1.42 wstool-0.1.17

```

Revert  pyyaml to version 5.4.1 ([SO Post](https://stackoverflow.com/questions/69564817/typeerror-load-missing-1-required-positional-argument-loader-in-google-col))
```
!pip install pyyaml==5.4.1
```



##### Compile `tf2` for Python3.7

Notice that you are choosing the version of `geometry2` with the `wstool set` command. I appears that 0.7.0 and above is for Noetic. 0.6.7 is the highest version (tag) that works with melodic.

Setup the compile 
```
cd ~/carla-ros-bridge/catkin_make_ws
source devel/setup.bash
wstool init
wstool set -y src/geometry2 --git https://github.com/ros/geometry2 -v 0.6.7 # latest melodic
wstool update src/geometry2
rosdep install --from-paths src --ignore-src -y -r
    #All required rosdeps installed successfully
```
Compile for Python 3. 

```
catkin_make -DPYTHON_VERSION=3.7
```

source workspace setup files again after compiling

```
source carla-ros-bridge/catkin_make_ws/devel/setup.bash
```

wow that worked




##### Compile CV_Brige with Python 3.7


```
cd carla-ros-bridge/catkin_build_ws

catkin config -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.7m.so

catkin config --install

cd src
git clone https://github.com/ros-perception/vision_opencv.git -b melodic

cd ..
catkin build cv_bridge
```


catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 








### Install carla_ros_bridge
Follow the instructions from the official CARLA page. The commands have been copied here for convenience. 

#### Install Option A (for users): install with `apt`
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"
```
Then simply install the ROS bridge:
```
sudo apt-get update
sudo apt-get install carla-ros-bridge
```

#### Install Option B (developers): compile from source


Create a catkin workspace and install carla_ros_bridge package
```
mkdir -p ~/carla-ros-bridge/catkin_ws/src
cd ~/carla-ros-bridge
```
Download the source code from github.

```
git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git catkin_ws/src/ros-bridge
```

Source the ROS setup files. This is probably in your `~/.bashrc` already
```
source /opt/ros/melodic/setup.bash
```

Install ROS dependencies with rosdep
```
cd catkin_ws
rosdep update
rosdep install --from-paths src --ignore-src -r
```

Build the package with Python 3.7 (alternatively use `catkin build`)
```
catkin_make -DPYTHON_VERSION=3.7
```

source workspace setup files again after compiling

```
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash
```


#### Test the CARLA ROS Bridge

Install a few more Python packages in the venv before testing the ros_bridge.

```
source ~/.venv/carla-py37/bin/activate

pip install numpy pygame transforms3d devtools
```




Start the simulator (I do not _think_ the venv has any affect on this)

```
export CARLA_ROOT=~/carla_simulator/dist/CARLA_0.9.12 # this path is dependent on your system
cd $CARLA_ROOT
./CarlaUE4.sh
```


Open a second terminal and source the virtual environment and the .egg file before using the PythonAPI. It makes sense to use an alias in `~/.bashrc` for these lines.

```
source ~/.venv/carla-py37/bin/activate

# this path is dependent on your system 
export CARLA_ROOT=~/carla_simulator/dist/CARLA_0.9.12 
export PYTHONPATH=$PYTHONPATH:$CARLA_ROOT/PythonAPI/carla/dist/carla-0.9.12-py3.7-linux-x86_64.egg 
```

Install a few more python packages in the virtual environment


I am using Python [venv](https://docs.python.org/3/tutorial/venv.html) to manage the python dependencies (see [PythonAPI](https://github.com/thillRobot/carla_simulator/blob/master/docs/PythonAPI.md) for details).


With the simulator running, start the first example launch file from the instructions on the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/) under _Run the ROS Bridge_

```
source /opt/ros/melodic/setup.bash
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash

roslaunch carla_ros_bridge carla_ros_bridge.launch
```

```
ImportError: dynamic module does not define module export function (PyInit__tf2)
================================================================================REQUIRED process [carla_ros_bridge-2] has died!
process has died [pid 9358, exit code 1, cmd /home/******/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py __name:=carla_ros_bridge __log:=/home/*****/.ros/log/932dbd26-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2.log].
log file: /home/******/.ros/log/932dbd26-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2*.log
Initiating shutdown!
================================================================================
```

OK, this  seems like a Python2 <-x-> Python3 version mismatch... 

The issue is that the ros packge tf2 was built with python2, but my virtual environment is python 3.6.9 which should match the CARLA simulator version. I think I compiled CARLA in the default version. I would have gone with 3.7...

Either way, I found a fix for this on [stack exchange](https://answers.ros.org/question/326226/importerror-dynamic-module-does-not-define-module-export-function-pyinit__tf2/) which involves compiling `tf2` in workspace with the ros bridge. At first I was nervous about this, but I was able to do in totally in the venv so there is no threat of borking the deps with apt. I **did not** run the `apt install python3-catkin-pkg-modules-etc` line because this is how you break things. 




##### Compile `tf2` for Python3.7

Notice that you are choosing the version of `geometry2` with the `wstool set` command. I appears that 0.7.0 and above is for Noetic. 0.6.7 is the highest version (tag) that works with melodic.

Setup the compile 
```
cd ~/carla-ros-bridge/catkin_make_ws
source devel/setup.bash
wstool init
wstool set -y src/geometry2 --git https://github.com/ros/geometry2 -v 0.6.5
wstool update src/geometry2
rosdep install --from-paths src --ignore-src -y -r
    #All required rosdeps installed successfully
```
Compile for Python 3. I did this did differently than the link above. I like mine better, but we will see if it works. 

```
catkin_make -DPYTHON_VERSION=3.7
```

source workspace setup files again after compiling

```
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash
```

Scanning dependencies of target tf2
[ 88%] Built target tf2_msgs_generate_messages
[ 88%] Building CXX object geometry2/tf2/CMakeFiles/tf2.dir/src/buffer_core.cpp.o
[ 88%] Built target carla_ackermann_msgs_generate_messages_eus
[ 88%] Built target carla_ackermann_msgs_generate_messages
[ 89%] Linking CXX shared library /home/thill/carla-ros-bridge/catkin_ws/devel/lib/libtf2.so
[ 90%] Built target tf2
Scanning dependencies of target tf2_ros
[ 91%] Building CXX object geometry2/tf2_py/CMakeFiles/tf2_py.dir/src/tf2_py.cpp.o
/home/thill/carla-ros-bridge/catkin_ws/src/geometry2/tf2_py/src/tf2_py.cpp:1:10: fatal error: Python.h: No such file or directory
 #include <Python.h>
          ^~~~~~~~~~
compilation terminated.
geometry2/tf2_py/CMakeFiles/tf2_py.dir/build.make:62: recipe for target 'geometry2/tf2_py/CMakeFiles/tf2_py.dir/src/tf2_py.cpp.o' failed
make[2]: *** [geometry2/tf2_py/CMakeFiles/tf2_py.dir/src/tf2_py.cpp.o] Error 1
CMakeFiles/Makefile2:10204: recipe for target 'geometry2/tf2_py/CMakeFiles/tf2_py.dir/all' failed
make[1]: *** [geometry2/tf2_py/CMakeFiles/tf2_py.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
[ 91%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/buffer_server.cpp.o
[ 92%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/transform_listener.cpp.o
[ 92%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/buffer_client.cpp.o
[ 92%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/buffer.cpp.o
[ 92%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/static_transform_broadcaster.cpp.o
[ 94%] Building CXX object geometry2/tf2_ros/CMakeFiles/tf2_ros.dir/src/transform_broadcaster.cpp.o
[ 94%] Linking CXX shared library /home/thill/carla-ros-bridge/catkin_ws/devel/lib/libtf2_ros.so
[ 94%] Built target tf2_ros
Makefile:140: recipe for target 'all' failed
make: *** [all] Error 2
Invoking "make -j16 -l16" failed





```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 
```

catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 \
            -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.7m.so

```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=/usr/bin/python3 \
            -DPYTHON_INCLUDE_DIR=/usr/include/python3.7m \
            -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython
```



```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=/usr/bin/python \
            -DPYTHON_INCLUDE_DIR=/usr/include/python3.7m \
            -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.7m.so
```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```



ModuleNotFoundError: No module named 'cv2'

[carla_ros_bridge-2] killing on exit
```



Blarhg! Now, it looks like we are missing `cv2`. There is no packge `cv2` on [Pypi][Pypi.org], but a quick search leads to [opencv-python](https://pypi.org/project/opencv-python/). This will be larger than the other packages that were installed. 

Make sure the venv is still activated. You must activate again after sourcing the ~/.bashrc script
```
pip install opencv-python
```

Take a deep breathe and try again. 

```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```

... logging to 

...

PARAMETERS
 * /carla_ros_bridge/ego_vehicle_role_name: ["hero", "ego_veh...
 * /carla_ros_bridge/fixed_delta_seconds: 0.05
 * /carla_ros_bridge/host: localhost
 * /carla_ros_bridge/passive: False
 * /carla_ros_bridge/port: 2000
 * /carla_ros_bridge/register_all_sensors: True
 * /carla_ros_bridge/synchronous_mode: True
 * /carla_ros_bridge/synchronous_mode_wait_for_vehicle_control_command: False
 * /carla_ros_bridge/timeout: 2
 * /carla_ros_bridge/town: Town01
 * /rosdistro: melodic
 * /rosversion: 1.14.12
 * /use_sim_time: True

NODES
  /
    carla_ros_bridge (carla_ros_bridge/bridge.py)
 ...
 
[INFO] [1635749974.358817, 0.000000]: Trying to connect to localhost:2000
[INFO] [1635749974.445062, 0.000000]: Loading town 'Town01' (previous: 'Carla/Maps/Town10HD_Opt').

...



Woo hoo it finally seems to work...The things stop working quicklly...


<img src="https://github.com/thillRobot/carla_simulator/blob/master/png_images/ros_bridge_01.png" alt="drawing" width="1000"/>

```
    if self.cvtype_to_name[self.encoding_to_cvtype2(encoding)] != cv_type:
  File "/opt/ros/melodic/lib/python2.7/dist-packages/cv_bridge/core.py", line 91, in encoding_to_cvtype2
    from cv_bridge.boost.cv_bridge_boost import getCvType
ImportError: dynamic module does not define module export function (PyInit_cv_bridge_boost)
```
This looks familiar doesnt it? Somebody on Stack Echange says we need to [build cv_bridge](https://answers.ros.org/question/368957/importerror-dynamic-module-does-not-define-module-export-function-pyinit_cv_bridge_boost/) in the workspace. The link in that post has a well accepted answer (18 upvotes lol).  

It is time to take a break. Let's continue in the morning... wait.. when we wake up in the morning....
OK! The plan is to try to build cv_bridge in the same workspace following the Stack Overflow post [here](https://stackoverflow.com/questions/49221565/unable-to-use-cv-bridge-with-ros-kinetic-and-python3). Hold on to your butts...


Again, I do not want to install any system wide python packages just to compile an open_cv library. Let's do this in a virtual environment.


The dependencies look familiar. Most of them are already installed in this environment. 

```
# `python-catkin-tools` is needed for catkin tool
# `python3-dev` and `python3-catkin-pkg-modules` is needed to build cv_bridge
# `python3-numpy` and `python3-yaml` is cv_bridge dependencies
# `ros-kinetic-cv-bridge` is needed to install a lot of cv_bridge deps. Probaply you already have it installed.
```

Activate the virtual environment
```
carla
```

Install the additional required packages from pypi using pip.
```
pip install catkin-tools python-dev-tools
``` 

Great, that succesfully installed a lot of packages.

There are instructions in the link above for compiling `cv_bridge`  using for `cmake` or `catkin build`. Our workspace is built with `catkin_make` so the `cmake` option should be compatitble. The `catkin_build` option will not be compatible. 

build cv_bridge with python3 by passing the following to cmake (see [catkin_make docs](http://wiki.ros.org/catkin/commands/catkin_make) for usage)

```
-DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.5m -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so
```

Clone the `cv_bridge` source 
```
cd ~/carla-ros-bridge/catklin_ws
git clone https://github.com/ros-perception/vision_opencv.git src/vision_opencv
```
Find the cv_bridge version in ros melodic, it the SO post im following they used `kinetic`
```
apt-cache show ros-melodic-cv-bridge | grep Version
    Version: 1.13.0-0bionic.20210921.205941
```
```
git checkout 1.13.0 
cd ../../
```
Would `git checkout melodic` this also work? Let's try that later.

```
cd build

cmake ../src -DCMAKE_INSTALL_PREFIX=../install -DCATKIN_DEVEL_PREFIX=../devel -DPYTHON_EXECUTABLE=/usr/bin/python -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so 
```

Awesome. It compiled without errors, and the cv_bridge was found. 

```

...

 +++ processing catkin package: 'cv_bridge'
-- ==> add_subdirectory(vision_opencv/cv_bridge)
-- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.6m.so (found version "3.6.9") 
CMake Warning at /usr/share/cmake-3.10/Modules/FindBoost.cmake:1626 (message):
  No header defined for python3; skipping header check
Call Stack (most recent call first):
  vision_opencv/cv_bridge/CMakeLists.txt:11 (find_package)


-- Boost version: 1.65.1
-- Found the following Boost libraries:
--   python3
-- Found OpenCV: /usr (found suitable version "3.2.0", minimum required is "3") found components:  opencv_core opencv_imgproc opencv_imgcodecs 
-- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.6m.so (found suitable version "3.6.9", minimum required is "2.7") 
-- +++ processing catkin package: 'image_geometry'
-- ==> add_subdirectory(vision_opencv/image_geometry)
-- Found OpenCV: /usr (found version "3.2.0") 

...


```

```
make

```

this failed,

```

...

/usr/include/python3.6m/numpy/__multiarray_api.h:1532:35: error: return-statement with a value, in function returning 'void' [-fpermissive]
 #define NUMPY_IMPORT_ARRAY_RETVAL NULL
                                   ^
/usr/include/python3.6m/numpy/__multiarray_api.h:1537:151: note: in expansion of macro ‘NUMPY_IMPORT_ARRAY_RETVAL’
 #define import_array() {if (_import_array() < 0) {PyErr_Print(); PyErr_SetString(PyExc_ImportError, "numpy.core.multiarray failed to import"); return NUMPY_IMPORT_ARRAY_RETVAL; } }


/home/thill/carla-ros-bridge/catkin_ws/src/vision_opencv/cv_bridge/src/module.hpp:44:5: note: in expansion of macro ‘import_array’
     import_array( );
     ^
...

```


 We are in a venv, so the paths in the cmake command need to point to the executables in the virtual environment. This is discussed in a later post [here](https://stackoverflow.com/questions/49221565/unable-to-use-cv-bridge-with-ros-kinetic-and-python3). This means the command above was building with the system wide python.


```
cmake ../src -DCMAKE_INSTALL_PREFIX=../install -DCATKIN_DEVEL_PREFIX=../devel -DPYTHON_EXECUTABLE=~/carla_simulator/carla-env/bin/python -DPYTHON_INCLUDE_DIR=~/carla_simulator/carla-env/bin/include/python3.6m -DPYTHON_LIBRARY=~/carla_simulator/carla-env/bin/lib/x86_64-linux-gnu/libpython3.6m.so 
```

OK..... That did not work, failed at 24%.
```
[ 24%] Generating C++ code from carla_msgs/CarlaBoundingBox.msg
Traceback (most recent call last):
  File "/opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py", line 50, in <module>
    sys.argv, msg_template_map, srv_template_map)
  File "/opt/ros/melodic/lib/python2.7/dist-packages/genmsg/template_tools.py", line 213, in generate_from_command_line_options
    generate_from_file(argv[1], options.package, options.outdir, options.emdir, options.includepath, msg_template_dict, srv_template_dict)
  File "/opt/ros/melodic/lib/python2.7/dist-packages/genmsg/template_tools.py", line 154, in generate_from_file
    _generate_msg_from_file(input_file, output_dir, template_dir, search_path, package_name, msg_template_dict)
  File "/opt/ros/melodic/lib/python2.7/dist-packages/genmsg/template_tools.py", line 99, in _generate_msg_from_file
    search_path)
  File "/opt/ros/melodic/lib/python2.7/dist-packages/genmsg/template_tools.py", line 77, in _generate_from_spec
    interpreter = em.Interpreter(output=ofile, globals=g, options={em.RAW_OPT:True,em.BUFFERED_OPT:True})
AttributeError: module 'em' has no attribute 'Interpreter'
ros-bridge/carla_msgs/CMakeFiles/carla_msgs_generate_messages_cpp.dir/build.make:83: recipe for target '/home/thill/carla-ros-bridge/catkin_ws/devel/include/carla_msgs/CarlaBoundingBox.h' failed
```

Well, we were getting closer... I think it is time for a new approach. Blargh. 



https://cyaninfinite.com/ros-cv-bridge-with-python-3/ This contains the solution to building cv_bridge, compile the version for noetic





OK, well i finally got it to work, but it is miserably slow. I am so happy I spend two night on this... wooo

here is a post about the slowdown issue https://github.com/carla-simulator/ros-bridge/issues/192

go to bed





It makes sense to upgrade to a newer python. This will also require a different version of CARLA. This will be fun...


Rename the old carla to carla-py36 so the new version (py37) 




















#### OLD INSTRUCTIONS From .... sometime before now 
#### Install Option C (developers): compile from source
Create a catkin workspace and install carla_ros_bridge package
```
#setup folder structure
mkdir -p ~/carla-ros-bridge/catkin_ws/src
cd ~/carla-ros-bridge
git clone https://github.com/carla-simulator/ros-bridge.git
cd ros-bridge
git submodule update --init
cd ../catkin_ws/src
ln -s ../../ros-bridge
source /opt/ros/<kinetic or melodic or noetic>/setup.bash
cd ..

#install required ros-dependencies
rosdep update
rosdep install --from-paths src --ignore-src -r

#build
catkin_make
```
NOTE: using conda conflicts with ROS somehow. I need to figure this out somehow.

source the rosbridge workspace before testing. Notice that this path is slightly different than shown in the CARLA docs. I moved it one level in.
```
source ~/carla_simulator/carla-ros-bridge/catkin_ws/devel/setup.bash
```

#### run the CARLA server before the ros-bridge

```
docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus all -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 ./CarlaUE4.sh -opengl
```

or

```
cd <CARLA ROOT>
./CarlaUE4.sh -opengl
```

#### run the CARLA-ROS-BRIDGE

`export CARLA_ROOT=~/carla_simulator/carla09101`

`export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py2.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla`

`roslaunch carla_ros_bridge carla_ros_bridge.launch host:=<HOST_IP>`

 or start with an `ego vehicle` instead

`roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch`

#### run rostopic to test

`rostopic list`

`rostopic echo /carla/ego_vehicle/imu/imu1`

You should now be able to see the data from the simulator in ROS, cool.

#### Testing carla-ros-bridge in ros-noetic
I have successfully tested this in Ubuntu18.04 using both intallation methods shown here. `ros-noetic` is not supported yet. You can copmile from source in ubuntu20.04 there is a python version error when you try the launch files. ALso, `apt` cannot find the the package `carla-ros-bridge`. This somewhat confirms that it isnot yet supported in `focal fossa`

This the main reason I am holding onto `Ubuntu18.04`.


Note the ros bridge requires the python egg file for carla to match the version of ros. So, if you are running ros melodic you will need to use python 2.7 egg file instead of the 3.6 one. This seems like something that we should be outgrowing now. 
