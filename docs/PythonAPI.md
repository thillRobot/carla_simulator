# PythonAPI
This is intended to be a guide to using the PythonAPI to interact with CARLA. This is not a distribution or source code of the PythonAPI.

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

````
conda env config vars set PYTHONPATH=$PYTHONPATH:~/carla_simulator/carla/PythonAPI/carla/dist/carla-0.9.11-py3.7-linux-x86_64.egg:~/carla_simulator/carla/PythonAPI/carla/agents:~/carla_simulator/carla/PythonAPI/carla
````

Or:

````
conda env config vars set PYTHONPATH=$PYTHONPATH:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla/dist/carla-0.9.11-py3.6-linux-x86_64.egg:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla/agents:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla
````

re-actitvate the environment after setting environment variables
```
conda activate carla
```

#### Install Python Dependencies
You need to have `numpy` and `pygame` installed. The CARLA website reccomends doing like this.

```
pip3 install --user numpy pygame
```

Alternatively,you can also install them with pip and the `requirements.txt` file. I am not sure which is better. The `requirements.txt` file installs more dependencies.

```
pip3 install -r <CARLA PATH>/PythonAPI/examples/requirements.txt`
```

`automatic_control.py` requires the networkx module to be install - i used conda to install it (the env most still be active of course)

```
conda install networkx
```

Now you can test the different features included in the API.

### Python Dependencies Option 2: Use VENV Environments
I have only done limited testing for this option. This method has been reccomended by the CARLA team and others.

This [turtorial](https://antc2lt.medium.com/carla-on-ubuntu-20-04-with-docker-5c2ccdfe2f71) shows a similar way that uses `virtualenv`. There are one or two bugs in the tutorial, but overall it was very useful to read because this person is doing something very similar to me.

### Python Dependencies Option 3: `$USER` or System wide Installation
This method is not reccomended because the dependecies may conflict with other projects.  
The PythonAPI requires NUMPY and PYGAME as described in the [docs.](https://carla.readthedocs.io/en/latest/start_quickstart/)
Do I need the `--user` option ? What does that even do? I think I know. FIGURE THIS OUT - USE CONDA TO KEEP DEPS STRAIGHT !!!

If you are using **Python2.7**:

```
pip install --user pygame numpy
```

**or**, if you are using **Python3.7**:

```
pip3 install --user pygame numpy
```

To run the server you must include the path to the *.egg* file in `PYTHONPATH`. Replace `<CARLA ROOT>` with the absolute path to the CARLA package directory, and replace `<CARLA DIST>` with the distribution name of the package. Choose the appropriate version of Python.

```
export PYTHONPATH=$PYTHONPATH:<CARLA ROOT>/PythonAPI/carla/dist/<CARLA DIST>:<CARLA ROOT>/PythonAPI/carla/agents:<CARLA ROOT>/PythonAPI/carla
```

For example:
```
export PYTHONPATH=$PYTHONPATH:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla/dist/carla-0.9.11-py3.6-linux-x86_64.egg:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla/agents:/home/<USER>/carla_simulator/carla_0911_dirty/PythonAPI/carla
```
Currently I am using this below. Notice there is no `agents/` or `carla/` anymore. It seems to work with just the **.egg** file. The distribution of carla used below`carla/Dist/CARLA_Shipping_0.9.11-dirty` was packaged by a carla from source and renamed `carla_shipping`.

```
export PYTHONPATH=$PYTHONPATH:~/carla_simulator/dist/CARLA_Shipping_0.9.11/LinuxNoEditor/PythonAPI/carla/dist/carla-0.9.11-py3.6-linux-x86_64.egg
```

You can run *some* of the examples in `/PythonAPI/examples` and `/PythonAPI/utils`, but several of the scripts tend to fail. I assume this is because there are missing dependencies. These appear to be installed with `requirements.txt`. Option 1 is preffered.

###### After *Installing Python Dependencies*, continue to *Using PythonAPI* to interact with the simulator.

## Using PythonAPI - this is a set of tools and example for interacting with the CARLA server

These commands are independent of the *Using CARLA Option* that you chose above.

There are all kinds of things that you can try. "get in the there and mess around" - CARLA docs
the API is located in the carla directory `/carla/PythonAPI`

#### Spawn NPC Vehicles and Pedestrians

```
python3 PythonAPI/examples/spawn_npc.py -n 20 -w 20
```

Alternatively, use the modified script to spawn NPCs without the female character 0-8. Certain 2 wheel vehicles are also banned. 

```
python3 PythonAPI/examples/spawn_custom.py -n 20 -w 20
```

#### Start a CARLA Client - The client is a vehicle driving in the world server

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

```
python3 PythonAPI/examples/manual_control.py
```

If the client is remote then you have to inlcude the IP address of the host.

```
python3 PythonAPI/examples/manual_control.py --host 192.168.254.45
```

#### Configuring the CARLA server with PythonAPI
Many useful features are inlcuded in `/PythonAPI/utils/config.py`. This script is used to configure a running CARLA server. You can change the town map and other parameters.

The command below changes the CARLA map and environment.

```
python3 PythonAPI/util/config.py --map <map_name>
```

And this line changes the weather.

```
python3 PythonAPI/util/config.py --weather HardRainNoon`
```

This sets the simulation fixed frame (frames per second). This does not affect the framerate displayed in server or client windows.

```
python3 PythonAPI/util/config.py --fps 10
```

