# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

## CARLA and Python versions

The official realease of CARLA 0.9.12 comes with one egg file for Python 2.7 and another for Python3.7. Source the egg file corresponding to the version of python being used. 

This is the `carla-py37` branch (previously `devel`). 

The goal is to get the `ros-bridge` working with Python 3.7 and CARLA 0.9.12.  

I have been stuck on this for a while. Today I made a big push and FINALLY it compiles in 3.7, but it still needs to be tested with CARLA.


### Host System 

This was originally tested on a fresh install of Ubuntu 18.04.06 LTS (desktop amd64) in VirtualBox. The system has been updated with Software Updater (gui), and no other commands have been run.

Now I am trying on my main desktop. This is a standard ubuntu machine, but it hosts several projects.
- Ubuntu 18.04 LTS 
- ROS Melodic (desktop-full) previously installed. 
- CARLA (with Unreal) built from source

_Hold on to your butts_


Check that the system is up to date before proceeding.
```
sudo apt update
sudo apt upgrade
```

### Install system wide dependencies (plus some utilies)
```
sudo apt install software-properties-common build-essential vim git curl terminator
```

### Install ROS

Install ROS Melodic using the instructions on [ros.org](http://wiki.ros.org/melodic/Installation/Ubuntu). 
- Step 1.1 - Configure repositories (no action needed) 
- Step 1.2 - Setup Sources

```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```
- Step 1.3 - Setup Keys
```
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```

- Step 1.4 - Install ROS 

Update package list and install ROS. choose the _full_ option (`ros-melodic-ros-desktop-full`), to install the complete package. 
```
sudo apt update

sudo apt install ros-melodic-desktop-full
```

On step 1.5 - Environment Setup (This step is modified from standard instructions)
For now, skip installing most of the `python-*` packages in Dependencies for building packages. These will be installed in the virtual envoronment.

This one is required (I have not figured out how to initialize with the rosdep in the .venv)

```
sudo apt install python-rosdep

sudo rosdep init
rosdep update
```

Source the ROS setup files by adding line to `~/.bashrc`

```
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
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

### Configure Virtual Python Environment

Now create a virtual Python3.7 environment with `venv`. Remove the environment with `rm -rf` if it already exists for a fresh start.

```
mkdir ~/.venv && cd ~/.venv
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
pip install rosdep rosinstall rosinstall-generator vcstool wstool opencv-python transforms3d empy numpy pygame

    Successfully installed PyYAML-6.0 catkin-pkg-0.4.24 distro-1.6.0 docutils-0.18 empy-3.3.4 numpy-1.21.4 opencv-python-4.5.4.58 pygame-2.1.0 pyparsing-3.0.5 python-dateutil-2.8.2 rosdep-0.21.0 rosdistro-0.8.3 rosinstall-0.7.8 rosinstall-generator-0.1.22 rospkg-1.3.0 six-1.16.0 transforms3d-0.3.1 vcstool-0.3.0 vcstools-0.1.42 wstool-0.1.17

```

### Create a catkin workspace for compiling packages

```
cd ~ # or somewhere else
mkdir -p carla-ros-bridge/catkin_make_ws/src
```

### Compile `tf2` for Python3.7

Download the source code and check for dependencies. Notice we are cloning a specific branch (`melodic-devel`) directly into the source directory. 

```
cd ~/carla-ros-bridge/catkin_make_ws

git clone https://github.com/ros/geometry2 -b melodic-devel src/geometry2
rosdep install --from-paths src --ignore-src -r
```

Compile for Python 3.7. 

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
source devel/setup.bash
```

### Compile `cv_bridge` with Python 3.7

Use the same method. Download source and check for dependencies. Notice this is the `noetic` branch.

```
cd ~/carla-ros-bridge/catkin_make_ws
git clone https://github.com/ros-perception/vision_opencv.git src/vision_opencv -b noetic
rosdep install --from-paths src --ignore-src -r

    executing command [sudo -H apt-get install python3-opencv]
    executing command [sudo -H apt-get install python3-numpy]

```
You can see sudo priviledge is needed to install `python3-opencv` and `python3-numpy`

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

Compile again for Python 3.7. 

```
catkin_make vision_opencv -DPYTHON_VERSION=3.7


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
export ROS_PYTHON_VERSION=3
export ROS_DISTRO=melodic

cd ~/carla-ros-bridge/catkin_make_ws
git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git src/ros-bridge
```

Install ROS dependencies with rosdep. 
```
rosdep install --from-paths src --ignore-src -r

    executing command [sudo -H apt-get install ros-melodic-ackermann-msgs]

```

Build the package with Python 3.7 
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
source devel/setup.bash
```


STOPPED HERE 11/08/2021



#### Test the CARLA ROS Bridge

To turn on CARLA set the PYTHONPATH to include to appropriate egg file. I did this with an alias in `~/bashrc`. 

```
# carla 0.9.12 - pre-compiled from CARLA
alias carla-py37='export UE4_ROOT=~/UnrealEngine_4.26;
                  source ~/.venv/carla-py37/bin/activate;
                  export CARLA_ROOT=~/carla_simulator/dist/CARLA_0.9.12;
                  export PYTHONPATH=$PYTHONPATH:$CARLA_ROOT/PythonAPI/carla/dist/carla-0.9.12-py3.7-linux-x86_64.egg;
                  cd $CARLA_ROOT'
```

Now run  `carla-py37` to choose this version

```
carla-py37
```


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





OK, well i finally got it to work, but it is miserably slow. I am so happy I spend two night on this... wooo

here is a post about the slowdown issue https://github.com/carla-simulator/ros-bridge/issues/192

go to bed




It makes sense to upgrade to a newer python. This will also require a different version of CARLA. This will be fun...


Rename the old carla to carla-py36 so the new version (py37) 
