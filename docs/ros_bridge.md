# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

## CARLA and Python versions

The official realease of CARLA 0.9.12 comes with one egg file for Python 2.7 and another for Python3.7. Source the egg file corresponding to the version of python being used. 

The goal of `devel` is to get the `ros-bridge` working with Python 3.7 and CARLA 0.9.12.  

I have been stuck on this for a while. Today I made a big push and FINALLY it compiles in 3.7, but it still needs to be tested with CARLA.

### Host System 

This is being tested in fresh install of Ubuntu 18.04.06 LTS (desktop amd64) in VirtualBox. The system has been updated with Software Updater (gui), and no other commands have been run.

Check that the system is up to date before proceeding.

```
sudo apt update
sudo apt upgrade
```


### Install system wide dependencies 
```
sudo apt install software-properties-common build-essential
```

### Install (or build?) ROS

Install ROS Melodic using the instructions on [ros.org](http://wiki.ros.org/melodic/Installation/Ubuntu). 

Complete Steps 1.1-1.3 in the installation instructions. 

On step 1.4 choose the _bare bones_ option (`ros-melodic-ros-base`), and install the package. 

For now, do not install the `python-*` packages in Dependencies for building packages. These will be installed in the virtual envoronment.

Except his one.

```
sudo apt install python-rosdep

sudo rosdep init
rosdep update
```

```
source /opt/ros/melodic/setup.bash
```

### Installing Python 3.7

The approach is to install Python 3.7 alongside of 2.7 and 3.6. There are known issues related to the `update-alternatives` method shown in several tutorials online, so I will not complete this step. Afterwards we will use Python 3.7 in a `venv` so we will invoke it with `python`. DON'T BORK THE DEPS MAX!

Also, it looks like we can use `ppa:ubuntu-toolchain-r/ppa` or `ppa:deadsnakes/ppa` to get the new version. I think deadsnakes is the more commonly used option.

Upgrade and install Python 3.7 from [deadsnakes](https://github.com/orgs/deadsnakes/repositories)
```
sudo apt update
sudo apt upgrade

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7 python3.7-dev python3.7-venv
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



### Create Catkin Workspace

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

### Configure Virtual Python Environment

Now create a virtual Python3.7 environment with `venv`. Remove the environment if it already exists for a fresh start.

```
mkdir ~/.venv
rm -rf ~/.venv/carla-py37
cd ~/.venv
python3.7 -m venv carla-py37  
```
If that runs without errors, the evironment is ready to use. Activate the virtual environment and test the python version. After activation, the terminal shows the venv name to the left. 

Activate the environment with the following command.
```
source ~/.venv/carla-py37/bin/activate
```

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

If you install a package this warning will suggests upgrading pip

```
    WARNING: You are using pip version 20.1.1; however, version 21.3.1 is available.
    You should consider upgrading via the '/home/<USER>/.venv/carla-py37/bin/python3.7 -m pip install --upgrade pip'     command.
```

Upgrade pip

``` 
pip install --upgrade pip

      Successfully uninstalled pip-20.1.1
      Successfully installed pip-21.3.1
```

Install python packages for building ROS packages. This list comes from the [source installation](http://wiki.ros.org/melodic/Installation/Source) instructions for ROS Melodic.

```
pip install rosdep rosinstall-generator vcstool rosinstall wstool empy numpy opencv-python 

    Successfully installed PyYAML-6.0 catkin-pkg-0.4.24 distro-1.6.0 docutils-0.18 empy-3.3.4 numpy-1.21.4 opencv-python-4.5.4.58 pyparsing-3.0.5 python-dateutil-2.8.2 rosdep-0.21.0 rosdistro-0.8.3 rosinstall-0.7.8 rosinstall-generator-0.1.22 rospkg-1.3.0 six-1.16.0 vcstool-0.3.0 vcstools-0.1.42 wstool-0.1.17

```

### Compile `tf2` for Python3.7

Notice that you are choosing the version of `geometry2` with the `wstool set` command. I appears that 0.7.0 and above is for Noetic. 0.6.7 is the highest version (tag) that works with melodic.

Download the source code and check for dependencies

```
cd ~/carla-ros-bridge/catkin_make_ws
source devel/setup.bash

git clone https://github.com/ros/geometry2 -b melodic-devel src/geometry2
rosdep install --from-paths src --ignore-src -r
```

Compile for Python 3. 

```
catkin_make geometry2 -DPYTHON_VERSION=3.7
    
   -- This workspace overlays: /home/******/carla-ros-bridge/catkin_make_ws/devel;/opt/ros/melodic
   -- Found PythonInterp: /home/******/.venv/carla-py37/bin/python3.7 (found suitable version "3.7.12", minimum required is "3.7") 
   -- Using PYTHON_EXECUTABLE: /home/******/.venv/carla-py37/bin/python3.7

   ...

   -- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.7m.so (found suitable version "3.7.12", minimum required is "2") 
   

```

It appears that Python 3.7 was used for the build 



source workspace setup files again after compiling

```
source ~/carla-ros-bridge/catkin_make_ws/devel/setup.bash
```

wow that worked


### Compile `cv_bridge` with Python 3.7

Use the same method. Download source and check for dependencies.

```
cd ~/carla-ros-bridge/catkin_make_ws
git clone https://github.com/ros-perception/vision_opencv.git src/vision_opencv -b noetic
rosdep install --from-paths src --ignore-src -r
```

Compile for Python 3. 

```
catkin_make vision_opencv -DPYTHON_VERSION=3.7
```

This error may be shown, edit `cv_bridge/CMakeLists.txt` to fix this.

```
CMake Error at /usr/share/cmake-3.10/Modules/FindBoost.cmake:1947 (message):
  Unable to find the requested Boost libraries.

  Boost version: 1.65.1

  Boost include path: /usr/include

  Could not find the following Boost libraries:

          boost_python37

  No Boost libraries were found.  You may need to set BOOST_LIBRARYDIR to the
  directory containing Boost libraries or BOOST_ROOT to the location of
  Boost.
```

```
vim src/vision_opencv/cv_bridge/CMakeLists.txt
```
original lines 9-15 :
```
  if(PYTHONLIBS_VERSION_STRING VERSION_LESS "3.8")
    # Debian Buster 
    find_package(Boost REQUIRED python37)
  else()
    # Ubuntu Focal
    find_package(Boost REQUIRED python)
  endif()
```
modified :
```
  if(PYTHONLIBS_VERSION_STRING VERSION_LESS "3.8")
    # Debian Buster 
    find_package(Boost REQUIRED python) 
  else()
    # Ubuntu Focal
    find_package(Boost REQUIRED python)
  endif()
```

Compile again for Python 3. 

```
catkin_make vision_opencv -DPYTHON_VERSION=3.7
```


just ... wow

```

-- +++ processing catkin package: 'cv_bridge'
-- ==> add_subdirectory(vision_opencv/cv_bridge)
-- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.7m.so (found version "3.7.12") 
-- Boost version: 1.65.1
-- Found the following Boost libraries:
--   python
-- Did not find OpenCV 4, trying OpenCV 3
-- Found OpenCV: /usr (found suitable version "3.2.0", minimum required is "3") found components:  opencv_core opencv_imgproc opencv_imgcodecs 
-- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.7m.so (found suitable version "3.7.12", minimum required is "3.7") 


```

Again, it appears that Python 3.7 was used to build `cv_bridge`.


Source workspace setup files again after compiling

```
source devel/setup.bash
```

### Compile `ros_bridge` or `carla_ros_bridge` for Python 3.7 


Follow the [ROS Bridge installation instructions](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/) on the CARLA page for installing from source.


#### Install Option B (developers): compile from source

Clone the source code into the catkin make workspace

```
cd ~/carla-ros-bridge/catkin_make_ws
git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git src/ros-bridge
export ROS_PYTHON_VERSION=3
export ROS_DISTRO=melodic
pip install transforms3d # this should go above
rosdep install --from-paths src --ignore-src -r
```

Source the ROS setup files. This has probably been done already.
```
source /opt/ros/melodic/setup.bash
source devel/setup.bash
```

Install ROS dependencies with rosdep
```
cd catkin_ws
rosdep update
rosdep install --from-paths src --ignore-src -r
```

Build the package with Python 3.7 (alternatively use `catkin build`)
```
catkin_make ros-bridge DPYTHON_VERSION=3.7

    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    -- ~~  traversing 35 packages in topological order:
    -- ~~  - carla_ad_demo
    -- ~~  - carla_common
    -- ~~  - geometry2 (metapackage)
    -- ~~  - opencv_tests
    -- ~~  - carla_msgs
    -- ~~  - carla_ackermann_msgs
    -- ~~  - carla_ros_scenario_runner_types
    -- ~~  - carla_waypoint_types
    -- ~~  - tf2_msgs
    -- ~~  - tf2
    -- ~~  - tf2_bullet
    -- ~~  - tf2_eigen
    -- ~~  - vision_opencv (metapackage)
    -- ~~  - ros_compatibility
    -- ~~  - carla_ackermann_control
    -- ~~  - carla_ad_agent
    -- ~~  - carla_manual_control
    -- ~~  - carla_ros_bridge
    -- ~~  - carla_ros_scenario_runner
    -- ~~  - carla_spawn_objects
    -- ~~  - carla_twist_to_control
    -- ~~  - carla_walker_agent
    -- ~~  - carla_waypoint_publisher
    -- ~~  - rqt_carla_control
    -- ~~  - tf2_py
    -- ~~  - cv_bridge
    -- ~~  - image_geometry
    -- ~~  - tf2_ros
    -- ~~  - pcl_recorder
    -- ~~  - tf2_geometry_msgs
    -- ~~  - tf2_kdl
    -- ~~  - test_tf2
    -- ~~  - tf2_sensor_msgs
    -- ~~  - tf2_tools
    -- ~~  - rviz_carla_plugin
    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    ...
    
    -- +++ processing catkin package: 'carla_ros_bridge'
    -- ==> add_subdirectory(ros-bridge/carla_ros_bridge)
    -- Using these message generators: gencpp;geneus;genlisp;gennodejs;genpy

```

Woop Woop. That was easy!


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






#### Alternative methods for downloading or compiling packages (previous attempts)


#### Alternatively use `wstool` to download source

##### `geometetry2`

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
catkin_make tf2 -DPYTHON_VERSION=3.7
```

##### `vision_opencv` 

use `wstool` to download source

Setup the compile 
```
cd ~/carla-ros-bridge/catkin_make_ws
source devel/setup.bash
wstool set -y src/vision_opencv --git https://github.com/ros-perception/vision_opencv.git -v 1.15.0 # latest ros 1 ?
wstool update src/vision_opencv
rosdep install --from-paths src --ignore-src -y -r
    #All required rosdeps installed successfully
```
Compile for Python 3. 

```
catkin_make cv_bridge -DPYTHON_VERSION=3.7
```

source workspace setup files again after compiling

```
source devel/setup.bash
```
##### `ros_bridge`

Try the same method again.

Setup the compile 
```
cd ~/carla-ros-bridge/catkin_make_ws
source devel/setup.bash
wstool set -y src/ros-bridge --git https://github.com/carla-simulator/ros-bridge.git -v 0.9.11 # latest ros bridge
wstool update src/ros-bridge
rosdep install --from-paths src --ignore-src -y -r
    #All required rosdeps installed successfully
```
Compile for Python 3. 

```
catkin_make ros-bridge -DPYTHON_VERSION=3.7

```


Previously I tried by manually setting the CMAKE args. 

```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 
```

Alternatively use catkin build


```
cd carla-ros-bridge/catkin_build_ws

catkin config -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.7m.so

catkin config --install

cd src
git clone https://github.com/ros-perception/vision_opencv.git -b melodic

cd ..
catkin build cv_bridge
```

Manually set the CMAKE args to configure the build

```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 
```

```
catkin_make --cmake-args \
            -DCMAKE_BUILD_TYPE=Release \
            -DPYTHON_EXECUTABLE=~/.venv/carla-py37/bin/python \
            -DPYTHON_INCLUDE_DIR=~/.venv/carla-py37/include/site/python3.7 \
            -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.7m.so
```


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


```
roslaunch carla_ros_bridge carla_ros_bridge.launch



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
OK, well i finally got it to work, but it is miserably slow. I am so happy I spend two night on this... wooo

here is a post about the slowdown issue https://github.com/carla-simulator/ros-bridge/issues/192

go to bed




It makes sense to upgrade to a newer python. This will also require a different version of CARLA. This will be fun...


Rename the old carla to carla-py36 so the new version (py37) 
