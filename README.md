# TWH logs - CARLA - open source vehicle simulator
October 07, 2020 - December 06, 2020

## Watch
You can see some demonstration videos on [Youtube](https://www.youtube.com/channel/UCH3bAvnmCLCRjyyorfUJXKg)

## Goals

- [x] install and test ROS_BRIDGE in ros melodic
- [ ] install and test ROS_BRIDGE in ros noetic (this is not clearly supported yet)
- [ ] test ros_bridge with COROS  
- [ ] figure out steering wheel and pedal controls for demo - testdrive an autonomous car - Jon H. worked on this 
- [ ] record a *metric* for Dr. Canfield
- [ ] use RVIZ to visualize the data from carla
- [ ] make a custom map with open street map and carla tools - i have tried and I am stuck
- [ ] get access to RoadRunner and make custom town - i have requested a trial

- [x] learn to use CONDA for python client - this will help with testing - done - big improvement
- [x] start the server in a different town, HDMaps/Town02.pcd  
- [x] change the town from the client side, HDMaps/Town02.pcd 
- [ ] document and test basic use of CARLA - not in a docker container
- [ ] clean up this document, it is a huge mess - it is a little better

- [x] try the stable version (0.8.4 or 0.8.2) - does not have ROS_BRIDGE support I do not think
- [x] test client on local machine - not in docker - Done - Working
- [x] test client on remote machine - not in docker - Done - Working
- [x] test client on local machine - in a docker   - DONE - not working
- [x] test server on local machine - in a docker - DONE - Working
- [ ] test server on local machine - not in a docker - NOT DONE


## Useful Resources

- [Official Carla Documentation](https://carla.readthedocs.io/en/latest/)

- [CORSERA](https://usermanual.wiki/Document/CARLASetupGuideUbuntu.271743992/help)

- [COROS + CARLA 0.9.10.1 (ROS with docker)](https://hub.docker.com/r/johannhaselberger/coros)

- [CARLA with `docker` and `virtualenv` in Ubuntu 20.04](https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71)

I am not alone. This is good.

## Hardware

### Server Computer:

* Computer: Dell t1600
* CPU:      Xeon CPU E31245 @ 3.30GHz × 8
* Graphics: Geforce GT 630 - > Geforce GTX 1650
* RAM:      8GB - > 16 GB
* OS:       Ubuntu 20.04/Ubuntu18.04

### Client Computer:

* Computer: Intel NUC7i7BNH
* CPU:      Intel i7
* Graphics: KabyLake GT3e
* RAM:      16GB
* OS:       Ubuntu 18.04

### Required/Related Software

* CARLA - the core of this project
* Python - Python2.7 and Python3.7 are used
* NUMPY and PYGAME
* docker CE
* nvidia-docker2 (this requires nvidia drivers and driver version limits carla version)
* ROS Melodic (Noetic in testing)
* CARLA_ROS_BRIDGE
* CONDA/ANACONDA (for virtual python emvironments)

## Installing Docker 
I installed `docker CE` and `nvidia-docker2` following the instructions from docker that is pointed to in the carla docs. This requires the nvidia drivers. 
* https://carla.readthedocs.io/en/latest/build_docker/
* https://carla.readthedocs.io/en/latest/build_docker/#docker-ce **Be careful not to install docker CE with apt and the script!**
* https://carla.readthedocs.io/en/latest/build_docker/#nvidia-docker2

### configure docker to run without sudo access
If you are a regular user without without access to sudo, you must be added to the docker group. More details are dicsussed in the *post-installation steps*  here (https://docs.docker.com/engine/install/linux-postinstall/).

`sudo groupadd docker`

`sudo usermod -aG docker $USER`

Also run the following command to activate the changes to groups:

`newgrp docker`

Also, to run CARLA server with docker (the X11 port stuff), the container needs access to $XAUTHORITY , this is a common issue with GUI in containers. This does not require sudo because **user** owns $XAUTHORITY 

`chmod 644 $XAUTHORITY`

Now you should be able to run the `docker` commands below. All remaining `docker` commands should not require sudo, and this documents assumes you have completed this step.

## Installing CARLA

### Options for Installing CARLA
There are multple ways to install and run the CARLA package. Which is the right way, who knows.

*Option 1:* Download and Extract from CARLA package from Github (https://github.com/carla-simulator/carla/releases) - if you just need a client - or do developement
  * CARLA Client - This is easy - requires numpy and pygame only (or use requirements.txt) 
  * CARLA Server -  This appears to be a very involved - requires building CARLA and UNREAL4 (https://carla.readthedocs.io/en/latest/build_linux/) - I have not tested this yet.
   
*Option 2:* Install CARLA package with `apt install` - this should be very straight forward - but hard to change versions - for a general user
  * CARLA Client - I have not tested this yet.
  * CARLA Server - I have not tested this yet.

*Option 3:* Use Docker to pull and run a CARLA image (https://carla.readthedocs.io/en/latest/build_docker/) - for development and testing - extremely portability
  * CARLA Client - This should be easy, but this does not work - see bottom of this document
  * CARLA Server - This works good, but it did require some figuring out - see middle of this document

I am using Option 3, Docker Approach for the server for flexibility in testing. Currently, my working demo is a hybrid of approach 1 and 3 from above. It would nice if we had full functionality in a Docker container (method 3 only) because this would allow for complete portability. I am working on this.

### Pull CARLA image with docker
Choose a version of CARLA that you want to use and pull (download an image) with docker. You can see the available tags here (https://hub.docker.com/r/carlasim/carla/tags?page=1&ordering=last_updated). 

#### Stable

`docker pull carlasim/carla:0.8.4`

#### Developement

`docker pull carlasim/carla:0.9.10.1 `

#### Developement - latest
There is a new version out. ***latest*** was updated around 11/23/2020

`docker pull carlasim/carla:latest`

### Bring CARLA into home directory for testing
#### Option A: copy egg from docker image
This method is preffered becuase it does not make sense to download the package twice. Also, this ensures that you are working on exactly the same version. I learned this here (https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71)

##### Step 1: find container ID
This can be done in multple ways. One way is to open `bash` in the container. This can be done with the command below.

```
docker run \
 -p 2000-2002:2000-2002 \
 --runtime=nvidia \
 --gpus all \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -it \
 carlasim/carla:latest \
 bash
```

You can see the ID in the terminal where you would expect the hostname to be.

```
carla@0d9f3b22c18b:~$
```

Altentively, you can see find the container ID with the following command. 

`
docker ps -a
`

##### Step 2: Copy the PythonAPI source from the container to the home folder of the host computer.

`
docker cp <container id>:<src path> <dst path>
`

for example:

```
mkdir -p ~/carla_simulator/carla/

docker cp 75a9e2e56930:/home/carla/PythonAPI ~/carla_simulator/carla/

cd carla_simulator/carla09101/PythonAPI/
````

Now you have a copy of the PythonAPI in home, so if you bork it up you can get a fresh copy.

#### Option B: Download and extract CARLA pre-compiled package from Github (reccomended option by CARLA for choosing versions)
Download and extract the appropriate version from Github. (https://github.com/carla-simulator/carla)
I am currently putting the package in ` ~/carla_simulator/carla<version number>`
This option might by needed if you do not have docker. This could happen with an `AMD` gpu.

### Setup CARLA PythonAPI Dependencies
#### Setup Option 1 (reccomended): Use the PythonAPI CONDA Environment - This saves time and is preferred method during testing
Once way to use the PythonAPI in Ubuntu 20.04 in with CONDA. Install conda following instructions here (https://docs.anaconda.com/anaconda/install/linux/). Use CONDA for a virtual environment I have setup for conveinence. This way you do not have to set the paths each time or install dependencies. 
Here is the CONDA cheatsheet: https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf

This turtorial (https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71) shows a similar way that uses `virtualenv`. There are one or two bugs in the tutorial, but overall it was very useful to read because this person is doing something very similar to me. 

Create a environment to use the PythonAPI in (this only needs to be done once). 

If you are using **Python2.7**:

`conda create --name carla python=2.7`

**or**, if you are using **Python3.7**:

`conda create --name carla python=3.7`

then actitvate the environment (this needs to be done at the start of each session)

`conda activate carla`

finally add the paths to the conda environment so that you do not have to do this each time
this line shows to set a env var permanently in the conda environment

`conda env config vars set CARLA_ROOT=~/carla_simulator/carla`

re-actitvate the environment after setting vars 

`conda activate carla`

If you are using **Python2.7**:

`conda env config vars set PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py2.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla`

**or**, if you are using **Python3.7**:

`conda env config vars set PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla`

re-actitvate the environment after setting vars again (could this be combined?)

`conda activate carla`

You need to have `numpy` and `pygame` installed. The CARLA website reccomends doing like this. 

`pip3 install --user numpy pygame`

However, you can also install them with pip and the `requirements.txt` file. I am not sure which is better. It seems that using the requirements.txt in conda takes long time. What does this mean, I dont know.

now that `CARLA_ROOT` is set you can install the python requirements with the folllowing:

`pip3 install -r ${CARLA_ROOT}/PythonAPI/examples/requirements.txt`

`automatic_control.py` requires the networkx module to be install - i used conda to install it (the env most still be active of course)

`conda install networkx`

Now you can test the different features included in the API.

#### Setup Option 2: install neccesary deps with apt and/or pip (not in conda or virualenv)
The PythonAPI requires NUMPY and PYGAME (https://carla.readthedocs.io/en/latest/start_quickstart/). 
Do I need the `--user` option ? What does that even do? I think I know.

If you are using **Python2.7**:

`pip install --user pygame numpy`

**or**, if you are using **Python3.7**:

`pip3 install --user pygame numpy`

Before you can use the PythonAPI you have to set PYTHONPATH to the .egg file. (CARLA_ROOT is just intermediate variable to save length)

`export CARLA_ROOT=~/carla_simulator/carla`

Choose the appropriate version of Python and set `PYTHON_PATH`.

If you are using **Python2.7**:

```export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py2.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla```

**or**, if you are using **Python3.7**:

```export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla```

Then, you can run *some* of the examples in `/PythonAPI/examples` and `/PythonAPI/utils`, but several of the scripts tend to fail. I assume this is because there are missing dependencies. These appear to be installed with `requirements.txt`.

## CARLA Versions Tested  
 
 - [x] carla 0.8.4
 - [x] carla 0.9.10 
 - [x] carla 0.9.10.1 
 - [x] carla latest
 
## Using CARLA Version:latest

I just started experimenting with the version. I assume it has some bug fixes, but maybe it has new bugs! We will see.
 
## Using CARLA Version 0.9.10.1

This requires modern nividia drivers(>390), I installed  nvidia450 -> nvidia455

`docker pull carlasim/carla:0.9.10.1`

### CARLA Server - The server is the world simulation

### Run the server in a docker container
This will run the script `CarlaUE4.sh` in the carla container. Using the `--name` option to choose a name for the container or the container starts with a random funny name. If these lines require `sudo` see instructions above for configuring permissions.

#### Run CarlaUE4.sh with default server parameters
 ```
 docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 ./CarlaUE4.sh
 ```
#### Run CarlaUE4.sh with various server parameters   
 ```
 docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20
 ```
 
 The command is repeated below in a readable format.
 
 ```
  docker run --name carlaserver \
  -e SDL_VIDEODRIVER=x11 \
  -e DISPLAY=$DISPLAY \
  -e XAUTHORITY=$XAUTHORITY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $XAUTHORITY:$XAUTHORITY \
  -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
  -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 \
  ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20
  ```      
 
  *Environment Variables*: `-e` defines environment varibles to be used in the container
 
  *Volumes*: `-v` defines volumes that will be visible to the container
  
  *Ports*: `-p` defines one to one mapping of ports host - container
 
  *mystery it*: `-it` this is something that I need to read about   
 
  *Graphics Quality*: Run the graphics in `Low` or `Epic` quality mode. The `Low` setting increases the display framerate significantly. If you run `0.9.10.1` in `Low` with `-opengl` the screen appears washed out with white and other colors. This is an over exposure issue related to the quality setting transistion that seems to be known in previous versions (not talked about much it in 0.9.10.1). If you run in `Low` then use `vulkan`. If you run in `Epic` you can use either `opengl` or `vulkan`.

  *Graphics Library*: Run the graphics with `vulkan` or `opengl`. Previously I was unable to run the server in `vulkan` mode. This is a known issue with 0.9.10.1, but I finally found a solution here (https://github.com/carla-simulator/carla/issues/3377). The fix is to start the server with`--gpus 'all,"capabilities=graphics,utility,display,video,compute"'`. We were previously using `--gpus all`. With this change you can now run with out without the `-opengl` flag. I wonder why the fix was so obscure and hard to find. 

Running in `vulkan` fixed the over exposure white screen issues. The white screen issue still happens with `-opengl` and `-quality-level=Low`.

  *Framerate*: Set the frame rate with `-benchmark` and `fps=<framerate>`. You can also chang the framerate from the client side using `PythonAPI/utils/config.py --fps <framerate>`, and this is shown later. Note: Either will change the simulation time, not the display time see post `asdf` for more info. 

#### Running Headless
You can run the server headless using `SDL_VIDEODRIVER=offscreen` and no display will be shown. It does not seem to greatly the affect the display FPS. 

 ``` 
 docker run -e SDL_VIDEODRIVER=offscreen -e DISPLAY=:99 -v /tmp/.X11-unix:/tmp/.X11-unix -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10.1    ./CarlaUE4.sh -opengl 
 ```

or shown below so you can read the commands

 ```
 sudo docker run \
    -e SDL_VIDEODRIVER=offscreen \
    -e DISPLAY=:99 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -p 2000-2002:2000-2002 \
    -it \
    --gpus all \
    carlasim/carla:0.9.10.1 ./CarlaUE4.sh -opengl
 ```
 
#### running `bash` in the container
This will run BASH in the carla container without starting the simulator.

```
docker run --name carlabash --rm --gpus all -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -it carlasim/carla:0.9.10.1 bash
```

You can start the server from inside the container. I am not sure why you woulREMOTEd want to do this, but the link I mentioned does it this way.

`SDL_VIDEODRIVER=x11 ./CarlaUE4.sh -opengl` 

#### Closing the Server
In version 0.9.10 you can ctrl-c to close the server, but I want to check that this is ok, i think the container is removed so it should be fine
unless you want to run that same container again with docker start or restart. For now, you have to remove the container before you can start it again. This should be fixed but it is not at the moment.

#### Cleaning up 
You sometime need to remove the container before you can start the server again. I think there is an easy fix for this. 

`docker container rm carlaserver`

#### Warning 
It is not reccomended to run the docker as `--privileged` even though some forums may suggest it. This gives container root access to host, and this is risky.
Someone suggested this in a forum somewhere, but that does not mean it is a good idea. It is even suggested to do so in the dockerfile!

### CARLA PythonAPI - this is a set of tools and example for interacting with the CARLA server
There are all kinds of things that you can try. "get in the there and mess around" - CARLA docs
the API is located in the carla directory `/carla/PythonAPI`  or `${CARLA_ROOT}/PythonAPI`


#### Spawn NPC Vehicles and Pedestrains 

`python3 ${CARLA_ROOT}/PythonAPI/examples/spawn_npc.py -n 20`

#### Start a CARLA Client - The client is a vehicle driving in the world server

I origanally wanted the client to be run from inside the container. I am not sure exactly why. It seems like it should be available in the container...
On the client side I have had some trouble with the 'no module named carla issue' - https://github.com/carla-simulator/carla/issues/1137
this is related to properly setting the path for the 'carla' python module from /carla/PythonAPI. 

In Ubuntu 20.04 (server machine) I downloaded and extracted carla 0.9.10 - 'pip3 install pygame' did not work so I had to use 'apt install python3-pygame'
i had to set the PYTHONPATH for the carla module to work. Basically the PYTHONPATH must include the path to .egg file for the right version of carla, I think that this is the same problem I am having in the docker container 'no module named carla'

#### Running the client in users home directory (~/) of the local (server) machine 

#### run CARLA client in CONDA Environment 

`conda activate carla`

This starts a client and lets you drive with PYGAME. Also because these scripts at home they will easy to modify.

`python3 ${CARLA_ROOT}/PythonAPI/examples/manual_control.py`

If the client is remote then you have to inlcude the IP address of the host.

`python3 ${CARLA_ROOT}/PythonAPI/examples/manual_control.py --host 192.168.254.45` 

#### Configuring the CARLA server from a client
A new useful feature I have just discovered is `/PythonAPI/utils/config.py`. This scripts is used to configure a running CARLA server. You can do things like change the town map and other things. This is very useful becuase is it a pain (so much that I was unable to do so!) from the server side. I guess this makes sensse...

Here is an example that shows how to change the town map.

`python3 ${CARLA_ROOT}/PythonAPI/util/config.py --map Town04`

And this line changes the weather. 

`python3 ${CARLA_ROOT}/PythonAPI/util/config.py --weather HardRainNoon`

This sets the simulation fixed frame (frames per second). This does not affect the framerate displayed in server or client windows.

`python3 ${CARLA_ROOT}/PythonAPI/util/config.py --fps 10`

#### Timeout Error with remote use of PythonAPI
Sometimes running the PythonAPT remote throws an error like this. 
```
'No recommended values for 'speed' attribute
Traceback (most recent call last):
  File "/home/thill/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1137, in <module>
    main()
  File "/home/thill/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1129, in main
    game_loop(args)
  File "/home/thill/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1046, in game_loop
    controller = KeyboardControl(world, args.autopilot)
  File "/home/thill/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 292, in __init__
    world.player.set_autopilot(self._autopilot_enabled)
RuntimeError: time-out of 2000ms while waiting for the simulator, make sure the simulator is ready and connected to 127.0.0.1:2000'
```
This can be fixed by increasing the connection timeout that is set in the python scripts. For example I increased it to 5 seconds by
editing line 1038 in `manual_control.py`. I wonder why it defaults to something that works so poorly. 


### CARLA ROS-BRIDGE (ros-melodic only)
This gives us access to data from the simulation in ROS
Follow the instructions on the ROS-BRIDGE github (https://github.com/carla-simulator/ros-bridge)

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

#### run the server before testing

`docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus all -p 2000-2002:2000-2002 carlasim/carla:0.9.10.1 ./CarlaUE4.sh -opengl`

#### run the CARLA-ROS-BRIDGE 
NOTE: the `carla-ros-bridge` 

`export CARLA_ROOT=~/carla_simulator/carla09101`

`export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py2.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla`

`roslaunch carla_ros_bridge carla_ros_bridge.launch host:=192.168.254.45`

 or start with an `ego vehicle` instead

`roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch`

#### run rostopic to test

`rostopic list`

`rostopic echo /carla/ego_vehicle/imu/imu1`

You should now be able to see the data from the simulator in ROS, cool.

#### Testing carla-ros-bridge in ros-noetic
I have successfully tested this in Ubuntu18.04 using both intallation methods shown here. `ros-noetic` is not supported yet. You can copmile from source in ubuntu20.04 there is a python version error when you try the launch files. ALso, `apt` cannot find the the package `carla-ros-bridge`. This somewhat confirms that it isnot yet supported in `focal fossa`

This the main reason I am holding onto `Ubuntu18.04`.

### Issues with version 0.9.10.1

####  xdg-user-dir: not found
I ran into this  error: `sh: 1: xdg-user-dir: not found`. This seems to be common issue, and the CARLA teams says it can be ignored.
There is some discussion here (https://github.com/carla-simulator/carla/issues/3156).There are still warnings but it seems like the simulation has started.

#### white screen wash out

## Using CARLA Version 0.8.4 (stable)
this is a hybrid of approach 1 (download and extract) and method 3 (run in docker) from the list above 

### Start the CARLA server in a CARLA Version 0.8.4 container
run the default script 'CarlaUE4.sh' in a carla 0.8.4 container and give a name 'carlaserver'

`docker run --name carlaserver -p 2000-2002:2000-2002 --runtime=nvidia --gpus all carlasim/carla:0.8.4 \
/bin/bash CarlaUE4.sh -quality-level=low -carla-server -benchmark -fps=10`

this starts the server, now it is waiting for a client to connect

### Start a client (0.8.4) on the host machine 
change to the PythonClient directory and run one of the example scripts

`cd ~/carla_simulator/carla084/PythonClient`
`./manual_control.py --autopilot`

this is NOT WORKING - `PORT2000 CLOSED`

### Start a client (0.8.4) on a remote computer - This works
First change to the PythonClient directory and run one of the example scripts

`cd ~/carla_simulator/carla084/PythonClient`

`./manual_control.py --autopilot --host 192.168.x.x`

### Drive the car around with the keyboard in PYGAME.
You have to take the parking break off first! At the moment the server<--->client relationship works!

Note: the directory `/PythonClient` has changed `/PythonAPI` in the later versions 

### Shutdown the CARLA server 

In version 084 'ctrl-c' does not stop the preocess

You cannot just close the process, you have to stop the container
This process needs to be improved. I am supposed to be able to use the --name option to give
container a persistent name but I have not made this work yet.

For now, to stop the container you must first list the running containers

`docker ps`

OR

`docker container ls`

and you will get something like this:

```
CONTAINER ID        IMAGE                  COMMAND                  CREATED             STATUS              PORTS                              NAMES
7b2ab18618af        carlasim/carla:0.8.4   "/bin/bash CarlaUE4.…"   20 minutes ago      Up 20 minutes       0.0.0.0:2000-2002->2000-2002/tcp   elastic_kare
```
Read the goofy name over on the right and that is the 'name' you will use to stop the containers.It is a good idea to choose your own name with the `--name` option.

`docker stop elastic_kare`

Run the server - notice the `opengl` flag. 

`docker run -p 2000-2002:2000-2002 --runtime=nvidia --gpus all carlasim/carla:0.8.4 /bin/bash CarlaUE4.sh DISPLAY= ./CarlaUE4.sh -opengl -carla-server`

Run the client. Notice that this script can be easiyl modified. `PythonClient` is a set of examples.
`cd ~/carla_simlulator/carla084/PythonClient`

`/.manual_control_twh.py --autopilot --host 192.168.1.2 -q Low`

## Making Custom Maps for CARLA 

### Generating Custom Maps with OpenStreetMap (Generate maps with OpenStreetMap)
I started trying to build a custom town. This is one of my big goals for this project. I want to run CARLA in a virtual TNTECH Campus.

I have tried to follow this CARLA tutorial here (https://carla.readthedocs.io/en/latest/tuto_G_openstreetmap/), but I am stuck. 

Progress so far (steps from tutorial in lin above)

#### Step 1 -  Obtain a map with OpenStreetMap
I have exported two maps of TNTECH campus as `.osm` files from OpenStreetMap named `map.osm` and `map2.osm`. These are located in `carla/openstreetmap`

#### Step 2 -  Convert to OpenDRIVE format
I made a script `convert_map.py` to convert the `.osm` file to a `.xodr` file using the sample code in the tutorial. I used `utils/config.py` as a template mainly for the imports lines. This step appears to work and the output file is produced. The line below runs the script

````
cd ~/carla_simulator/carla/PythonAPI/carla/
python3 ${CARLA_ROOT}/PythonAPI/util/convert_map.py
````

If you will recieve the error below, this is because ou must be in the `carla/PythonAPI/carla/` directoty to run this script. I assume this is just a path issue that can be addressed. For now, use `cd` as shown above.

```
Warning: Cannot read local schema '../carla/data/xsd/types_file.xsd', will try website lookup.
```

#### Step 3 - Import into CARLA

I have tried **method a)** by making a copy of `config.py` called `import_map.py`. 
```
cp ${CARLA_ROOT}/PythonAPI/util/condig.py ${CARLA_ROOT}/PythonAPI/util/import_map.py 
```
I did this so I could adjust the parameters, but I am not sure what to adjust. I am not sure if this is a problem with CARLA or my map.
```
python3 ${CARLA_ROOT}/PythonAPI/util/import_map.py --osm-path=/home/thill/carla_simulator/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
I commented on this Github post here (https://github.com/carla-simulator/carla/issues/3009), but I have not heard anything back yet.


I have tried method **b)** from the tutorial and nothing happens. This method is effectively the same as **a)**, and thre results are the same. The command and the outout are shown below.
```
python3 ${CARLA_ROOT}/PythonAPI/util/config.py --osm-path=/home/thill/carla_simulator/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```

You were doing it wrong. The command below uses the `-x` to load the `.xodr` file which makes sense right?

```
python3 ${CARLA_ROOT}/PythonAPI/util/config.py -x /home/thill/carla_simulator/openstreetmap/map2.xodr
```

The map loads fine, but the map is distorted. This is a known issue (https://github.com/carla-simulator/carla/issues/3009).



### Adding a Map with RoadRunner
(https://carla.readthedocs.io/en/latest/tuto_A_add_map/#introduction)
*RoadRunner is the recommended software to create a map due to its simplicity* - CARLA docs
I have not tried to follow this yet because it requires RoadRunner, but I have requested a trial license from MATHWORKS/

## THILLROBOT DEVELOPMENT DOCS BELOW HERE - Proceed at your own risk
### alternatively run the client in the container - this is what I really want but it does not work yet
I would really like for the client and server to be in the docker container. To me it seems to make sense for me to be able to run both in the container. 

#### Try to `run` the carla server in a docker container, and then `run` the client in the same container. 
Start the carla server in a docker container. Apparantely I was not using the name option. I need to add the name option here. 

`sudo docker run -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10 ./CarlaUE4.sh -opengl`

You must set the paths CORRECTLY forthe python scripts to run without import errors, but there may still be other errors. Fixing these errors is my main goal in this section. I also realized that this seems to work just the same. Only the first python path is required (i am not sure if this is ok). 

`export CARLA_ROOT=~/`
`export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla`

use to -e or --env to set env vars in the container

`--env PYTHONPATH=~/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:~/PythonAPI/carla/agents:~/PythonAPI/carla`

`-e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg`

`run` the carla server in a docker container

`sudo docker run --name carla -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10 ./CarlaUE4.sh -opengl`

Next, `run` a client on the server machine this time so there is no ip needed, you do need the --net=host option for the client and server to talk.

`sudo docker run -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --net=host -it --gpus all carlasim/carla:0.9.10 /PythonAPI/examples/manual_control.py --env CARLA_ROOT=~/ --env PYTHONPATH=~/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:~/PythonAPI/carla/agents:~/PythonAPI/carla`

#### Alternatively,`run` the carla server in a docker container, and `exec` the the client in the same container as the server - not working 
`sudo docker exec -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:/home/carla/PythonAPI/carla/agents:/home/carla/PythonAPI/carla carla python3 PythonAPI/examples/manual_control.py`

`Traceback (most recent call last):
  File "PythonAPI/examples/manual_control.py", line 77, in <module>
    import carla
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/__init__.py", line 8, in <module>      YOU CAN SEE THE PATHS ARE WRONG HERE
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 9, in <module>      THERE SHOULD NOT BE TWO carla directories
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 7, in __bootstrap__ Actually you are wrong carla is the name of the container and the python module
ImportError: libxerces-c-3.2.so: cannot open shared object file: No such file or directory
`
#### Something else: `run` the carla server in a docker container, and then `run` the client in a separate container. 
To do this use the --name option to force the containers to be different.

Start the carla server in a docker container named `carlaserver`

`sudo docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10 ./CarlaUE4.sh -opengl`

Then, start the the client in the different container named `carlaclient`

`sudo docker run --name carlaclient -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:/home/carla/PythonAPI/carla/agents:/home/carla/PythonAPI/carla -v /tmp/.X11-unix:/tmp/.X11-unix -it --gpus all carlasim/carla:0.9.10 python3 PythonAPI/examples/manual_control.py`

This is not seem to be any different. 

#### Mike was trying to help me fix the missing library file (libxerces-c-3.2.so) issue. This library issue was fixed by installing missinhg librbaries in container. 
Start the server in a container, use -v to mount /usr/lib/x86_64-linux-gnu/:/usr/local/host/lib on the host computer

`sudo docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /usr/lib/x86_64-linux-gnu/:/usr/local/host/lib -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10 ./CarlaUE4.sh -opengl`

OR with the LD_LIBRARY_PATH variable set

`sudo docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /usr/lib/x86_64-linux-gnu/:/usr/local/host/lib -e LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu:/usr/local/nvidia/lib:/usr/local/nvidia/lib64:/usr/local/nvidia/lib:/usr/local/nvidia/lib64:/usr/local/host/lib -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10 ./CarlaUE4.sh -opengl`

Now try the client side. We are trying to mount the library in host

`sudo docker exec -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:/home/carla/PythonAPI/carla/agents:/home/carla/PythonAPI/carla carlaserver python3 PythonAPI/examples/manual_control.py
[sudo] password for thill:
Traceback (most recent call last):
  File "PythonAPI/examples/manual_control.py", line 77, in <module>
    import carla
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/__init__.py", line 8, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 9, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 7, in __bootstrap__
ImportError: libxerces-c-3.2.so: cannot open shared object file: No such file or directory`

That did not fix the libxerces issue, at least we tried. Thanks Mike.

OKIE DOKIE!  I think i figured out the libxerces-c issue. well, maybe not but I think someone else did. Look at version 0.9.10.1
(https://github.com/carla-simulator/carla/releases)

"Fixed dependency of library Xerces-c on package" - I think they might mean 'of'
Well here we go with the latest version (16 days old).

#### Now we are going to repeat those tests with carla 0.9.10.1
run bash in the container - works

`sudo -E docker run --name carla --privileged --rm --gpus all -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -it carlasim/carla:0.9.10.1 bash`

Start the carla server in a docker container

`sudo docker run --name carla -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 2000-2002:2000-2002 -it --gpus all carlasim/carla:0.9.10.1 ./CarlaUE4.sh -opengl`

Then, start the the client in the same container as the server - not working

`sudo docker exec -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:/home/carla/PythonAPI/carla/agents:/home/carla/PythonAPI/carla carla python3 PythonAPI/examples/manual_control.py`

`Traceback (most recent call last):
  File "PythonAPI/examples/manual_control.py", line 77, in <module>
    import carla
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/__init__.py", line 8, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 9, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 7, in __bootstrap__
ImportError: libjpeg.so.8: cannot open shared object file: No such file or directory`

#### I was still stuck so I finally reached out to the guys at CARLA
Wow, another similar error, different library. Does this mean that they fixed the xerces error and not this one? I am a little confused about that. At this point I have spent some time on this. I finally broke down and asked the CARLA team. I posted my question. I was terrified that they would make fun of me, but they were vey helpful and responsive. Here is my post (https://github.com/carla-simulator/carla/issues/3236#issuecomment-711022225):

*I am having a similar issue while trying to run the PythonAPI in a carlasim/carla:0.9.10.1 docker container. The server runs with some warnings, but the client does not run and shows the following error when I run the client inside the container.*

```
  File "PythonAPI/examples/manual_control.py", line 77, in <module>
    import carla
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/__init__.py", line 8, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 9, in <module>
  File "/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg/carla/libcarla.py", line 7, in __bootstrap__
ImportError: libjpeg.so.8: cannot open shared object file: No such file or directory

```

*Has anyone successfully run the PythonAPI inside a carla docker container? I have read #2909, and #3236, but I have not found a solution yet. I am new to docker and carla so it may be something simple that I am doing wrong.*

As you can read in the link above the CARLA team was veryh helpful, but their suggestions have only lead me to more issues. Nicoloas said that carla is not runtime for the client (I am not sure what he means exactly), and that I will have to go into the client with bash and install the libraries with `apt-get`. This is very counter intutive to me.

#### most recent attempt at running carla client in container - I am trying to following suggestions from carla team.
For any of this to work the docker must be able to access the internet, to do this edit the /etc/default/docker file and give DNS ip address
add this line to the bottom of /etc/default/docker to allow a container to access the internet

`DOCKER_OPTS="--dns <your_dns_server_1> --dns <your_dns_server_2>"`

You can use `echo` to so append the file from the coammand line. It is shown below.

`sudo echo "DOCKER_OPTS=" --dns 192.168.254.45" >> /etc/default/docker"`

Then restart docker.

`sudo service docker restart`

Now that docker can connect to the web, start bash in a running container

`sudo docker exec -it -u 0:0 <container_name> /bin/bash`

`apt-get update`

`apt-get install vim` You probably do not need a text editor, but it cannot hurt right?

`apt-get install python3-pip` This might be the problem. Nicholas said he does not use pip in the container. 

`pip3 install -r PythonAPI/examples/requirements.txt` I do not think running requirements.txt is neccesary

`apt-get install libjpeg-turbo8 libtiff-dev libxerces-c3.2` Notice the `libjpeg` is in `libjpeg-turbo`

now execute the client in the running container- throws weird error (document this!)

 `python3 PythonAPI/examples/manual_control.py`

instead, exit bash in the container and run it from the outside 

`exit`

`sudo docker exec -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg carlaserver python3 PythonAPI/examples/manual_control.py`

OK, more news! Running the installs in the container get us past the library issue but, now we are running into another issue with the python client related to the fonts and other fun things. 

Nicholas from CARLA team said first test that you can run 'tutorial.py'. OK, lets try that. Also, he said that he uses apt-get and not pip. this makes sense in the docker. let try this one more time.

`sudo docker exec -e PYTHONPATH=/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg carlaserver python3 PythonAPI/examples/tutorial.py`

`export PYTHONPATH=$PYTHONPATH:/home/carla/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg:/home/carla/PythonAPI/carla/agents:/home/carla/PythonAPI/carla`

I am still stuck on running the API in a container. whatever



### Have a Nice Day!
