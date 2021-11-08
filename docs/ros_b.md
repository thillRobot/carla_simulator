

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