# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

## CARLA and Python versions

The official realease of CARLA 0.9.12 comes with one egg file for Python 2.7 and another for Python3.7. Source the egg file corresponding to the version of python being used. 

This is the `carla-py27` branch. 

### Host System 

This is being tested on relatively fresh install of Ubuntu 18.04.06 LTS (desktop amd64). The system has been updated with Software Updater (gui), and no other commands have been run. Honestly that is not true at all. This is work in progress, proceed at your own risk.

Check that the system is up to date before proceeding.

```
sudo apt update
sudo apt upgrade
```

### Install ROS



### Python Versions

Check the versions installed
```
python --version
    Python 2.7.17

python3 --version
    Python 3.6.9
```


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

Build the package (alternatively use `catkin build`)
```
catkin_make
```

source workspace setup files again after compiling

```
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash
```


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

Source the workspace setup file
```
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash
```


#### Test the CARLA ROS Bridge
#### run the CARLA server before the ros-bridge

```
docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus all -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 ./CarlaUE4.sh -opengl
```

or

```
cd <CARLA ROOT>
./CarlaUE4.sh -opengl
```

#### run the CARLA-ROS-BRIDGE (This needs to be updated)

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
