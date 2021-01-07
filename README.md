# carla_simulator
This README is intended to be a guide to using CARLA. This repository is *not* a distribution of the CARLA package.

October 07, 2020 - December 06, 2020 - December 29, 2020 - January 05, 2020

## Watch
You can see some demonstration videos on [Youtube](https://www.youtube.com/channel/UCH3bAvnmCLCRjyyorfUJXKg)

## Useful Resources

- [Official Carla Documentation](https://carla.readthedocs.io/en/latest/)

- [CORSERA](https://usermanual.wiki/Document/CARLASetupGuideUbuntu.271743992/help)

- [COROS + CARLA 0.9.10.1 (ROS with docker)](https://hub.docker.com/r/johannhaselberger/coros)

I am not alone, and this is good.

## Requirements
 
### Software

* CARLA - the core of this project
* Python - Python2.7 and Python3.7 are used
* NUMPY and PYGAME minumum Python dependencies
* additional Python deps needed for full PythonAPI
* docker CE
* nvidia-docker2 (this requires nvidia drivers and driver version limits carla version)
* docker UE4
* ROS Melodic (Noetic in testing)
* CARLA_ROS_BRIDGE
* CONDA/ANACONDA (for virtual python emvironments)

### Hardware



## Installing CARLA

### Options for Installing and Using CARLA
There are multiple ways to install and use the CARLA package. Choose the option which based on your desired functionality. 

**Installing CARLA Option 1: Run in Pre-Compiled Package** - *This option is for for general use and testing.* 
  * CARLA Client - The PythonAPI can be used without compiling or building. There are python dependencies that must be met.
  * CARLA Server - The server can be run without compiling or building. The server can be accesed remotely.
  
**Installing CARLA Option 2: Build from Source** - *This option is for development and map generation. Building requires ~30G of storage and significant memory.* 
  * CARLA Client - Can the PythonAPI can be used without compiling or building? There are python dependencies that must be met.
  * CARLA Server + UE Editor - After building, the provided tools can be used to edit CARLA worlds in the UE4 editor.
  * Map Ingestion Tools + Package Distribution Tools - New maps can be ingested or exported, and distributions of carla can be built. 
   
**Installing CARLA Option 3: Run in Docker** - *This option is for general use, testing, and developement.* 
  * CARLA Client - This does not work at the moment. Also, this does not seem to be needed. Use Option 1 for the `PythonAPI`.
  * CARLA Server - This has been tested and works good. The server is portable and can be accesed remotely.
  
**Installing CARLA Option 4: Build in Docker** - *This option is for development, map generation, and package distribution. Building requires ~300G of storage space and significant memory.*
  * CARLA Client - The PythonAPI can be used after building. There are python dependencies that must be met.
  * CARLA Server - The server can be run after building, and the server is portable and can be accesed remotely.
  * Map Ingestion Tools + Package Distribution Tools - New maps can be ingested or exported, and distributions of CARLA can be built.

### Installing CARLA Option 1: - Run in Pre-Compiled Package  
*This option is for for general use and testing.* 
Download and extract the CARLA package from [Github](https://github.com/carla-simulator/carla/releases). Choose versions by downloading the appropriate compressed file. In this document, the top directory of the package will be known as `<CARLA_ROOT>`. Download the map assets separately as a compressed file, and place them it the `<CARLA_ROOT>/Import` directory. Navigate to `<CARLA ROOT>` and run the import script to bring the assets into the package as shown below.

```
cd <CARLA ROOT>
./ImportAssets.sh
```

###### After *Installing CARLA*, continue to *Installing Python Dependecies* to complete the installation

### Installing CARLA Option 2: - Build from Source 
##### Build CARLA from Source (older method)
*This option is for development and map generation. Building requires ~30G of storage and significant memory.*

Follow the docs for CARLA [Linux Build](https://carla.readthedocs.io/en/latest/build_linux/).

 Clone or Download and Extract the CARLA package from Github (https://github.com/carla-simulator/carla/releases) is this the right link?

This section needs documentation.

Build carla from source in 18.04 from source following the docs [here](https://carla.readthedocs.io/en/latest/build_linux/). 

###### After *Installing CARLA*, continue to *Installing Python Dependecies* to complete the installation
  
### Installing CARLA Option 3: - Run in Docker
*This option is for general use, testing, and developement.* 

#### Install `docker-ce` and `nvidia-docker2` 
Following the instructions for running [CARLA in Docker](https://carla.readthedocs.io/en/latest/build_docker/) in the carla docs. This requires the modern nvidia drivers and a GPU. 
* Step 1: [Install Docker CE](https://carla.readthedocs.io/en/latest/build_docker/#docker-ce) **Be careful not to install docker CE with apt and the script!**
* Step 2: [Install Nvidia Docker 2](https://carla.readthedocs.io/en/latest/build_docker/#nvidia-docker2)

**NOTE:** Do not run the `docker run hello-world` test until you have completed the section below to run without sudo. Read the link below carefully for more information. 

#### Configure Docker to Run without `sudo`
If you are a regular user without without access to sudo, you must be added to the docker group. More details are dicsussed in the *post-installation steps*  [here](https://docs.docker.com/engine/install/linux-postinstall/).

`sudo groupadd docker`

`sudo usermod -aG docker $USER`

Also run the following command to activate the changes to groups:

`newgrp docker`

Also, to run CARLA server with docker (the X11 port stuff), the container needs access to $XAUTHORITY , this is a common issue with GUI in containers. (`chmod` does not require sudo because **user** owns $XAUTHORITY) 

`chmod 644 $XAUTHORITY`

Now you should be able to run the `docker` commands below. All remaining `docker` commands should not require sudo, and this documents assumes you have completed this step. Try the hello world test or the nvidia-docker2 test now.

#### Configure Docker Container DNS 
I am still not sure about this issue. For a docker container to access the internet, the file `/etc/resolv.conf` must contain the host DNS instead of `127.0.0.53` or some other invalid address. You DNS in the container should be inherited from the the hosts file `/etc/default/docker` which cannot be edited directly as it is a symbolic link to `/run/systemd/resolve/stub-resolv.conf`. Do not edit this file either, but you can change the link to point to `/run/systemd/resolve/resolv.conf` instead which shold contain the hist DNS ip address. The following command can be used change the link between two files.
```
!!! ln command mentioned above is missing here - find github issue link also !!!
```

Also, there is another part of the *fix* I am using. 
add this line to the bottom of /etc/default/docker to allow a container to access the internet

`DOCKER_OPTS="--dns <your_dns_server_1> --dns <your_dns_server_2>"`

You can use `echo` to so append the file from the coammand line. It is shown below.

`sudo echo "DOCKER_OPTS=" --dns 192.168.254.254" >> /etc/default/docker"`

Then restart docker.

`sudo service docker restart`

#### Pull CARLA Image with Docker

Use Docker to pull a CARLA image following the docs [here](https://carla.readthedocs.io/en/latest/build_docker/).
Choose the version of CARLA that you want to use and pull (download an image) with docker. You can see the available tags at the docker hub [here](https://hub.docker.com/r/carlasim/carla/tags?page=1&ordering=last_updated). 

##### Stable

`docker pull carlasim/carla:0.8.4`

##### Developement

`docker pull carlasim/carla:0.9.11`

##### Developement - latest

`docker pull carlasim/carla:latest`

#### Bring CARLA into home directory for `PythonAPI`

Even though this is the CARLA in Docker option, the `PythonAPI` will be used locally on the host. Copy the `PythonAPI/` with egg file from thge docker image. This method is preffered becuase it does not make sense to download the package twice. Also, this ensures that you are working on exactly the same version. I learned this [here](https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71)

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
 carlasim/carla:0.9.11 \
 bash
```

sudo docker run -p 2000-2002:2000-2002 --runtime=nvidia --gpus all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -it carlasim/carla:0.9.11 bash

You can see the ID in the terminal where you would expect the hostname to be.

```
carla@0d9f3b22c18b:~$
```

Altentively, you can see find the container ID with the following command. 

`
docker ps -a
`

##### Step 2: Copy the PythonAPI source from the container to the home folder of the host computer

`
docker cp <container id>:<src path> <dst path>
`

for example:

```
mkdir -p ~/carla_simulator/carla/

docker cp 75a9e2e56930:/home/carla/PythonAPI ~/carla_simulator/carla/

cd carla_simulator/carla09101/PythonAPI/
````

Now you have a copy of the PythonAPI on the host, and if you bork it up you can easily fresh copy.

###### After *Installing CARLA*, continue to *Installing Python Dependecies* to complete the installation

### Installing CARLA Option 4: Build in Docker
*This option is for development, map generation, and package distribution. Building requires ~300G of storage space and significant memory.*

##### Build CARLA + map tools with Docker (reccomended method for map ingestion)
Follow the docs for [Building Carla in a Docker](https://github.com/carla-simulator/carla/tree/master/Util/Docker).
The reccomended procedure is to build CARLA from the latest source into a docker container using `ue4-docker`. 

Clone a copy of CARLA from [github](https://github.com/carla-simulator/carla) before performing the Docker build. The required Dockerfile is in `carla/Util/Docker`.

Follow this [tutorial](https://github.com/carla-simulator/carla/tree/master/Util/Docker) to build CARLA in a docker. This takes a long time and requires alot of memory and storage.

Setup the dependencies with conda and setup firewall. Also, setup DNS for docker container (see xyz)
```
conda activate <CARLA ENV>
pip3 install ue4-docker
```
```
ue4-docker setup
```

Build Unreal Engine and CARLA with Docker
```
cd carla/Util/Docker 
```
```
ue4-docker build 4.24.3 --no-engine --no-minimal
```
Build the image with all the prerequisites to build Carla in a Ubuntu 18.04
```
docker build -t carla-prerequisites -f Prerequisites.Dockerfile .
```
Finally create the actual Carla image, it will search for carla-prerequisites:latest:
This last step requies a 14GB download and a long compile. 
```
docker build -t carla -f Carla.Dockerfile .
```
###### Out of Memory issue
The compile operation may crash if the system runs out of memory. This happened several times during the `compiling shaders` process. The default Ubuntu setup with LVM gives a small ~900 MB swap partition. I increased the swap partition siginificantly following these [instuctions](https://blog.sleeplessbeastie.eu/2020/07/29/how-to-expand-swap-partition-after-system-installation/). The instructions are for 20.04 and the device is encrypted so you cannot follow them exactly. This needs to be documented. You can read about issue [#3590](https://github.com/carla-simulator/carla/issues/3590) on Github.

###### rsync issue
With carla:latest right after 0.9.11 release the `docker build` step failed with a different error. You can read about issue [#3758](https://github.com/carla-simulator/carla/issues/3758) on Github. The fix for this is described in the link, but there was some confusion about the Dockerfile. The file I am using is shown here. I need to learn more about docker to understand this completely. 

1. In `Util/Docker`, create a file called `MyPackage.sh`
2. `cd ..`
3. run `cat BuildTools/Package.sh > Docker/MyPackage.sh`
4. Change line 166 in `MyPackage.sh` to `copy_if_changed "./Unreal/CarlaUE4/Plugins/" "${DESTINATION}/Plugins/"`
5. `cd Docker`
6. change `Carla.Dockerfile` to:

```
FROM carla-prerequisites:latest

ARG GIT_BRANCH

USER ue4

RUN cd /home/ue4 && \
  if [ -z ${GIT_BRANCH+x} ]; then git clone --depth 1 https://github.com/carla-simulator/carla.git; \
  else git clone --depth 1 --branch $GIT_BRANCH https://github.com/carla-simulator/carla.git; fi && \
  cd /home/ue4/carla && \
  ./Update.sh && \
  make CarlaUE4Editor && \
  make PythonAPI && \
  make build.utils
WORKDIR /home/ue4/carla
COPY MyPackage.sh .  
RUN cat MyPackage.sh > Util/BuildTools/Package.sh 
RUN make package
RUN rm -r /home/ue4/carla/Dist

WORKDIR /home/ue4/carla
```
After applying the fix from `@will-sloan` the build finished succesfully. 

###### After *Installing CARLA*, continue to *Installing Python Dependecies* to complete the installation


## Installing Python Dependencies
At minimum `numpy` and `pygame` are required, and other Python modules are required for some features. It is reccomended to use a vitrual environment such and `venv` or `conda` to manage the (Python?) dependencies.
 
### Python Dependencies Option 1: Use CONDA Environments
This is the reccomended method to manage the Python dependencies and is the primary method used in this guide.
Install conda following instructions [here](https://docs.anaconda.com/anaconda/install/linux/). This way you do not have to set the paths each time or install dependencies. 
The CONDA [cheatsheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) is very useful.

#### Create Virtual Environment
Create a environment to use the PythonAPI in (this only needs to be done once). 

If you are using **Python2.7**:

`conda create --name carla python=2.7`

**or**, if you are using **Python3.7**:

`conda create --name carla python=3.7`

then actitvate the environment (this needs to be done at the start of each session)

`conda activate carla`

#### Add Neccesary Paths to `PYTHONPATH`
finally add the paths to the conda environment so that you do not have to do this each time
this line shows to set a env var permanently in the conda environment.

`
conda env config vars set PYTHONPATH=$PYTHONPATH:<CARLA ROOT>/PythonAPI/carla/dist/<CARLA DIST>.egg:<CARLA PATH>/PythonAPI/carla/agents:<CARLA ROOT>/PythonAPI/carla
`

To run the server you must include the path to the *.egg* file in `PYTHONPATH`. Replace `<CARLA ROOT>` with the absolute path to the CARLA package directory, and replace `<CARLA DIST>` with the distribution name of the package. The python version of you are using should match the *.egg* file name. 
For Example:

`
conda env config vars set PYTHONPATH=$PYTHONPATH:~/carla_simulator/carla/PythonAPI/carla/dist/carla-0.9.11-py3.7-linux-x86_64.egg:~/carla_simulator/carla/PythonAPI/carla/agents:~/carla_simulator/carla/PythonAPI/carla
`

Or:

`
conda env config vars set PYTHONPATH=$PYTHONPATH:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla/dist/carla-0.9.11-py3.6-linux-x86_64.egg:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla/agents:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla
`

re-actitvate the environment after setting environment variables
`conda activate carla`

#### Install Python Dependencies
You need to have `numpy` and `pygame` installed. The CARLA website reccomends doing like this. 

`pip3 install --user numpy pygame`

Alternatively,you can also install them with pip and the `requirements.txt` file. I am not sure which is better. The `requirements.txt` file installs more dependencies.

`pip3 install -r <CARLA PATH>/PythonAPI/examples/requirements.txt`

`automatic_control.py` requires the networkx module to be install - i used conda to install it (the env most still be active of course)

`conda install networkx`

Now you can test the different features included in the API.

### Python Dependencies Option 2: Use VENV Environments
I have only done limited testing for this option. This method has been reccomended by the CARLA team and others.

This [turtorial](https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71) shows a similar way that uses `virtualenv`. There are one or two bugs in the tutorial, but overall it was very useful to read because this person is doing something very similar to me. 

### Python Dependencies Option 3: `$USER` or System wide Installation
This method is not reccomended because the dependecies may conflict with other projects.  
The PythonAPI requires NUMPY and PYGAME as described in the [docs.](https://carla.readthedocs.io/en/latest/start_quickstart/)
Do I need the `--user` option ? What does that even do? I think I know. FIGURE THIS OUT - USE CONDA TO KEEP DEPS STRAIGHT !!!

If you are using **Python2.7**:

`pip install --user pygame numpy`

**or**, if you are using **Python3.7**:

`pip3 install --user pygame numpy`

To run the server you must include the path to the *.egg* file in `PYTHONPATH`. Replace `<CARLA ROOT>` with the absolute path to the CARLA package directory, and replace `<CARLA DIST>` with the distribution name of the package. Choose the appropriate version of Python.

`
export PYTHONPATH=$PYTHONPATH:<CARLA ROOT>/PythonAPI/carla/dist/<CARLA DIST>:<CARLA ROOT>/PythonAPI/carla/agents:<CARLA ROOT>/PythonAPI/carla
`

For example:
`
export PYTHONPATH=$PYTHONPATH:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla/dist/carla-0.9.11-py3.6-linux-x86_64.egg:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla/agents:/home/thill/carla_simulator/carla_0911_dirty/PythonAPI/carla
`

You can run *some* of the examples in `/PythonAPI/examples` and `/PythonAPI/utils`, but several of the scripts tend to fail. I assume this is because there are missing dependencies. These appear to be installed with `requirements.txt`. Option 1 is preffered.

###### After *Installing Python Dependencies*, continue to *Using CARLA* to test the simulator.


## Using CARLA 

### The CARLA Server
The server is the world simulation and must be started first.


### Using CARLA Option 1: Run in Pre-Compiled Package
*This option is for for general use and testing.*
  * CARLA Client - The PythonAPI can be used without compiling or building. There are python dependencies that must be met.
  * CARLA Server - The server can be run without compiling or building. The server can be accesed remotely.

The server can be run in a distribution package (pre-compiled) with the provided script. 

Move to `<CARLA ROOT>` and run the script to start the server. 
```
cd <CARLA ROOT>
./CarlaUE4.sh
```
A window will open showing CARLA Town01 from the observer view. You can fly around using the mouse and arrrow keys. Add actors to the world with the `PythonAPI` as described below.


### Using CARLA Option 2: Build from Source
*This option is for CARLA development and map generation. Building requires ~30G of storage and significant memory.* 
  * CARLA Client - Can the PythonAPI can be used without compiling or building? There are python dependencies that must be met.
  * CARLA Server + UE Editor - After building, the provided tools can be used to edit CARLA worlds in the UE4 editor.
  * Map Ingestion Tools + Package Distribution Tools - New maps can be ingested or exported, and distributions of carla can be built. 

Once the package is built there are many tools available. Read the docs for CARLA [Linux Build](https://carla.readthedocs.io/en/latest/build_linux/).

* `make help` 	Prints all available commands.
* `make launch` 	Launches CARLA server in Editor window.
* `make PythonAPI` 	Builds the CARLA client.
* `make package` 	Builds CARLA and creates a packaged version for distribution.
* `make clean` 	Deletes all the binaries and temporals generated by the build system.
* `make rebuild` 	make clean and make launch both in one command.

The server can be run in a locally built package, but this is mainly for developement purposes.  
Move to `<CARLA ROOT>` and run the script to start the server and the Unreal Editor. 
```
cd <CARLA ROOT>
make launch
```
A window will open showing CARLA Town01 from the observer view. You can fly around using the mouse and arrrow keys. Add actors to the world with the `PythonAPI` as described below.


### Using CARLA Option 3: Run in Docker
*This option is for general use, testing, and developement.* 
  * CARLA Client - This does not work at the moment. Also, this does not seem to be needed. Use Option 1 for the `PythonAPI`.
  * CARLA Server - This has been tested and works good. The server is portable and can be accesed remotely.

  
Alternatively, the server can be run in a docker container. Use the `--name` option to choose a name for the container or the container starts with a random funny name. If these lines require `sudo` see instructions above for configuring docker permissions.

#### Run CarlaUE4.sh with default server parameters
 ```
 docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' -p 2000-2002:2000-2002 carlasim/carla:0.9.11 ./CarlaUE4.sh
 ```
#### Run CarlaUE4.sh with various server parameters   
 ```
 docker run --name carlaserver -e SDL_VIDEODRIVER=x11 -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:$XAUTHORITY -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' -p 2000-2002:2000-2002 carlasim/carla:0.9.11 ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20
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
  -p 2000-2002:2000-2002 carlasim/carla:0.9.11 \
  ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20
  ```      
  
  *Environment Variables*: `-e` defines environment varibles to be used in the container
 
  *Volumes*: `-v` defines volumes that will be visible to the container
  
  *Ports*: `-p` defines one to one mapping of ports host - container
 
  *mystery it*: `-it` this is something that I need to read about   
 
  *Graphics Quality*: Run the graphics in `Low` or `Epic` quality mode. The `Low` setting increases the display framerate significantly. If you run `0.9.10.1` in `Low` with `-opengl` the screen appears washed out with white and other colors. This is an over exposure issue related to the quality setting transistion that seems to be known in previous versions (not talked about much it in 0.9.10.1). If you run in `Low` then use `vulkan`. If you run in `Epic` you can use either `opengl` or `vulkan`.

  *Graphics Library*: Run the graphics with `vulkan` or `opengl`. Previously I was unable to run the server in `vulkan` mode. This is a known issue with 0.9.10.1, but I finally found a solution [here](https://github.com/carla-simulator/carla/issues/3377). The fix is to start the server with`--gpus 'all,"capabilities=graphics,utility,display,video,compute"'`. We were previously using `--gpus all`. With this change you can now run with out without the `-opengl` flag. I wonder why the fix was so obscure and hard to find. 

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
    carlasim/carla:0.9.11 ./CarlaUE4.sh -opengl
 ```
 
#### running `bash` in the container
This will run BASH in the carla container without starting the simulator.

```
docker run --name carlabash --rm --gpus all -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -it carlasim/carla:0.9.11 bash
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

### Using CARLA Option 4: Build in Docker  
  *This option is for development, map generation, and package distribution. Building requires ~300G of storage space and significant memory.*
  * CARLA Client - The PythonAPI can be used after building. There are python dependencies that must be met.
  * CARLA Server - The server can be run after building, and the server is portable and can be accesed remotely.
  * Map Ingestion Tools + Package Distribution Tools - New maps can be ingested or exported, and distributions of CARLA can be built.

###### After Starting Server in *Using CARLA*, Add Actors and Configure the simulator in *Using PythonAPI* 

## Using PythonAPI - this is a set of tools and example for interacting with the CARLA server

These commands are independent of the *Using CARLA Option* that you chose above.

There are all kinds of things that you can try. "get in the there and mess around" - CARLA docs
the API is located in the carla directory `/carla/PythonAPI` 

#### Spawn NPC Vehicles and Pedestrains 

`python3 PythonAPI/examples/spawn_npc.py -n 20`

#### Start a CARLA Client - The client is a vehicle driving in the world server

I origanally wanted the client to be run from inside the container. I am not sure exactly why. It seems like it should be available in the container...
On the client side I have had some trouble with the 'no module named carla issue' - [#1137](https://github.com/carla-simulator/carla/issues/1137)
this is related to properly setting the path for the 'carla' python module from `/carla/PythonAPI`. 

In Ubuntu 20.04 (server machine) I downloaded and extracted carla 0.9.10 - `pip3 install pygame` did not work so I had to use `apt install python3-pygame`
i had to set the PYTHONPATH for the carla module to work. Basically the `PYTHONPATH` must include the path to *.egg* file for the right version of carla, I think that this is the same problem I am having in the docker container 'no module named carla'

#### Run the client on the local (server) machine 

Activate the CONDA environment and move to the top of the CARLA packge your are using.  
```
conda activate carla
cd <CARLA ROOT>
```

Start a client. You are the driver of a single car which you control through the pygame window. These scripts can be easily to modified.

`python3 PythonAPI/examples/manual_control.py`

If the client is remote then you have to inlcude the IP address of the host.

`python3 PythonAPI/examples/manual_control.py --host 192.168.254.45` 

#### Configuring the CARLA server with PythonAPI
Many useful features are inlcuded in `/PythonAPI/utils/config.py`. This script is used to configure a running CARLA server. You can change the town map and other parameters. 

The command below changes the CARLA map and environment. 

`python3 PythonAPI/util/config.py --map Town04`

And this line changes the weather. 

`python3 PythonAPI/util/config.py --weather HardRainNoon`

This sets the simulation fixed frame (frames per second). This does not affect the framerate displayed in server or client windows.

`python3 PythonAPI/util/config.py --fps 10`

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
Follow the instructions on the ROS-BRIDGE [github](https://github.com/carla-simulator/ros-bridge)

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
There is some discussion [here](https://github.com/carla-simulator/carla/issues/3156).There are still warnings but it seems like the simulation has started.

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

## Tested Hardware

### Server+Client Computer:

* Computer: MSI H87-G43 (caseless miracle)
* CPU:      i7-4770k @ 3.5 x 8
* Graphics: Geforce GTX 1650
* RAM:      16 GB + 16 GB swap
* OS:       Ubuntu18.04

### Server Computer:

* Computer: Dell t1600 (sleepy box)
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

## CARLA Version Notes
 
 - [x] carla 0.8.4
 - [x] carla 0.9.10 
 - [x] carla 0.9.10.1
 - [x] carla 0.9.11
 - [ ] carla latest 
 
### Version:latest

Is this the same as 0.9.11 ?
 
### Version 0.9.11

I just started experimenting with the version. I assume it has some bug fixes, but maybe it has new bugs! We will see.

This requires modern nividia drivers(>390), I installed  nvidia450 -> nvidia455

`docker pull carlasim/carla:0.9.10.1`

### Version 0.8.4

This is the **stable** version. Breif testing of this version is shown at the bottom of the README.


## Changelog
## Goals/Things to Do

- [x] split this README into multple pages - it has become a montser

- [ ] figure out how to use carla settings file
- [x] install and test ROS_BRIDGE in ros melodic
- [ ] install and test ROS_BRIDGE in ros noetic (this is not clearly supported yet)

- [x] build carla from source and test
- [x] build carla with docker and test

- [ ] figure out steering wheel and pedal controls for demo - testdrive an autonomous car
- [ ] record a *metric* for Dr. Canfield
- [ ] use RVIZ to visualize the data from carla
- [ ] make a custom map with open street map and carla tools - i am getting much closer 
- [ ] get access to RoadRunner and make custom town - i have talked to Mike and ken about this.

- [x] learn to use CONDA for python client - this will help with testing - done - big improvement
- [x] start the server in a different town, HDMaps/Town02.pcd  
- [x] change the town from the client side, HDMaps/Town02.pcd 
- [ ] document and test basic use of CARLA - not in a docker container
- [ ] clean up this document, it is a huge mess - it is a little better

- [x] test client on local machine - not in docker - Done - Working
- [x] test client on remote machine - not in docker - Done - Working
- [x] test client on local machine - in a docker   - DONE - not working
- [x] test server on local machine - in a docker - DONE - Working
- [ ] test server on local machine - not in a docker - NOT DONE
- [ ] test ros_bridge with COROS  


This is a work in progress, and I am open to comments and/or suggestions. 
### Have a Nice Day!
