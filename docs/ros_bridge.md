# ros_bridge
This is intended to be a guide to using the carla_ros_bridge with CARLA. This is not a distribution or source code of the carla_ros_bridge. Read the official docs first.

The ROS bridge gives access to data from the CARLA simulation in ROS
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge) or the [CARLA page](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros1/). The instructions are repeated below for convenience. 

This is a mess right now... It should be cleaned up soon.

I got stuck a few times on the approach below. I had to take a couple days off, but now it is time to make this happen. First let's do some reading.


### Installing Python 3.7

The egg file for the official realease of CARLA 0.9.12 implies that the version was built in Python 3.7. We want to install Python 3.7 alongside of 2.7 and 3.6. There are known issues related to the `update-alternatives` method shown in several tutorials online, so I will not complete this step. Afterwards we will use Python 3.7 in a `venv` so we will invoke it with `python`. DON'T BORK THE DEPS MAX!

Also, it looks like we can use `ppa:ubuntu-toolchain-r/ppa` or `ppa:deadsnakes/ppa` to get the new version. I think deadsnakes is the more commonly used option.

Upgrade and install Python 3.7 from [deadsnakes](https://github.com/orgs/deadsnakes/repositories)
```
sudo apt update
sudo apt upgrade

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7 python3.7-dev
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
Now create a virtual Python3.7 environment with `venv`. Remove the test environment from the line above first.

```
rm -rf ~/.venv/carla-py37
cd ~/.venv
    python3.7 -m venv carla-py37  
```
That should run without errors. Activate the virtual environment and test the python version. Notice the terminal shows the venv name to the left. You can exit the environment when you are done with `deactivate`.

```
source ~/.venv/carla-py37/bin/activate 
```

Check the python version
```
python --version
    Python 3.7.12
```

Check for pip updates
```
python -m ensurepip  
    Looking in links: /tmp/tmphxz02iz3
    Requirement already satisfied: setuptools in ./carla-py37/lib/python3.7/site-packages (47.1.0)
    Requirement already satisfied: pip in ./carla-py37/lib/python3.7/site-packages (20.1.1
```

Install the neccessary python packages for the compile in the venv with pip. 
```
pip install catkin-pkg catkin-tools rospkg empy # do not install 'em'
```
The packages installed, but I got this warning. 

```
WARNING: You are using pip version 20.1.1; however, version 21.3.1 is available.
You should consider upgrading via the '/home/<USER>/.venv/carla-py37/bin/python3.7 -m pip install --upgrade pip' command.
```

``` 
/home/<USER>/.venv/carla-py37/bin/python3.7 -m pip install --upgrade pip
 
 ...

      Successfully uninstalled pip-20.1.1
      Successfully installed pip-21.3.1
```

 The evironment is ready to use. 

 To activate: `source ~/.venv/carla-py37/bin/activate`

 To deactivate: `deactivate`



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
