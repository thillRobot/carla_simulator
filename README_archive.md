# carla_simulator
The place for keeping all thillRobot CARLA related notes THAT ARE OLD AND ARCHIVED.

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

`sudo echo "DOCKER_OPTS=" --dns 192.168.254.254" >> /etc/default/docker"`

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


