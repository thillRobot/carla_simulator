# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

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

Build the package
```
catkin build # alternatively use catkin_make
```

The package compiles and gives this nice message at the end. 
`[build] Note: Workspace packages have changed, please re-source setup files to use them.`

Let's do that. 
```
source ~/.bashrc
```
I am starting to like `catkin build` because the output is much more readable.

#### Test the CARLA ROS Bridge

Start the simulator

```
cd $CARLAROOT
./CarlaUE4.sh
```

I am using Python [venv](https://docs.python.org/3/tutorial/venv.html) to manage the python dependencies (see [PythonAPI](https://github.com/thillRobot/carla_simulator/blob/master/docs/PythonAPI.md) for details). 

Source the virtual environment to use the PythonAPI
```
source ~/carla_simulator/carla-env/bin/activate
```

Alternatively, use an alias in `~/.bashrc` to make this easy
```
carla
```
With the simulator running, start the first example launch file from the instructions on the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/) under _Run the ROS Bridge_

```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```


It looks like I am missing some python packages. It should be easy to install the neccessary packages using `pip` in the virtual environment. 

```
...

  File "/opt/ros/melodic/lib/python2.7/dist-packages/genpy/message.py", line 48, in <module>
    import yaml
ModuleNotFoundError: No module named 'yaml'
================================================================================REQUIRED process [carla_ros_bridge-2] has died!
process has died [pid 7196, exit code 1, cmd /home/thill/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py __name:=carla_ros_bridge __log:=/home/thill/.ros/log/eb36f944-3acc-11ec-afb0-244bfe994ccd/carla_ros_bridge-2.log].
log file: /home/thill/.ros/log/eb36f944-3acc-11ec-afb0-244bfe994ccd/carla_ros_bridge-2*.log
Initiating shutdown!
================================================================================
[carla_ros_bridge-2] killing on exit

...
```

The error messages can be deceiving. Let's do some reading first...

The `yaml` module can be installed by installing [PyYAML](https://pypi.org/project/PyYAML/) using `pip`. Run the following in the venv.
```
pip install PyYAML
```
The package should install without errors. It is a good idea to update pip with the reccomended command if it has not been updated recently. You will see a message about this when you use pip if an update is needed.

Let's try again with PyYAML installed.

```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```

There are still missing packages. 

```
...

File "/opt/ros/melodic/lib/python2.7/dist-packages/roslib/launcher.py", line 42, in <module>
    import rospkg
ModuleNotFoundError: No module named 'rospkg'
================================================================================REQUIRED process [carla_ros_bridge-2] has died!
process has died [pid 8660, exit code 1, cmd /home/thill/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py __name:=carla_ros_bridge __log:=/home/thill/.ros/log/f70aa158-3ad1-11ec-afb0-244bfe994ccd/carla_ros_bridge-2.log].
log file: /home/thill/.ros/log/f70aa158-3ad1-11ec-afb0-244bfe994ccd/carla_ros_bridge-2*.log
Initiating shutdown!
================================================================================

...
```

The `rospkg` package can be installed by installing [`rospkg`](https://pypi.org/project/rospkg/) using `pip` just like before. This times the names match.
```
pip install rospkg
```
This installed correctly with several other packages. Let's try again.

```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```

Still more...

```
  File "/home/thill/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_common/src/carla_common/transforms.py", line 18, in <module>
    from transforms3d.euler import euler2mat, quat2euler, euler2quat
ModuleNotFoundError: No module named 'transforms3d'
================================================================================REQUIRED process [carla_ros_bridge-2] has died!
process has died [pid 9085, exit code 1, cmd /home/thill/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py __name:=carla_ros_bridge __log:=/home/thill/.ros/log/146010d4-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2.log].
log file: /home/thill/.ros/log/146010d4-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2*.log
Initiating shutdown!
================================================================================
[carla_ros_bridge-2] killing on exit

```
The `transforms3d` package can be installed by installing [`transforms3d`](https://pypi.org/project/transforms3d/) using `pip` again. I wonder why the names did not match the first time.

```
pip install transforms3d
```
Install successful. Keep trying!

```
roslaunch carla_ros_bridge carla_ros_bridge.launch
```
```
ImportError: dynamic module does not define module export function (PyInit__tf2)
================================================================================REQUIRED process [carla_ros_bridge-2] has died!
process has died [pid 9358, exit code 1, cmd /home/thill/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py __name:=carla_ros_bridge __log:=/home/thill/.ros/log/932dbd26-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2.log].
log file: /home/thill/.ros/log/932dbd26-3ad3-11ec-afb0-244bfe994ccd/carla_ros_bridge-2*.log
Initiating shutdown!
================================================================================
```

OK, this is getting rediculous. I have just realized that this seems like a Python2 Python3 version mismatch... I






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
