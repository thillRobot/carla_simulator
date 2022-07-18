# docker.md - using CARLA in docker

This document needs work!


## Use CARLA in Docker

add/find/update this section





## Build Unreal Engine and CARLA in Docker

Follow the official instructions or building Unreal Engine and CARLA in Docker [here](https://carla.readthedocs.io/en/0.9.13/build_docker_unreal/). I used the 0.9.13 version selector.

The first step went fine. I used my Github user name and a  personal access token here for the password.

```
docker build --build-arg EPIC_USER=<GitHubUserName> --build-arg EPIC_PASS=<GitHubPassword> -t carla-prerequisites -f Prerequisites.Dockerfile .
```

During the second step of the build there was an error related to a failed download from Autodesk of the FBXSDK. Apparently, autodesk has moved the download link. I followed [#4862](https://github.com/carla-simulator/carla/issues/4862) to solve the problem. The edit to line 20 in `/BuildTools/BuildUtilsDocker.sh` worked, but the `Carla.Dockerfile` did not work as shown in the post. This is because the directory structure has changed slightly. 

I copied `BuildTools/BuildUtilsDocker.sh` to `Docker/MyBuildUtilsDocker.sh` and changed line 20 to:

```
wget --user-agent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0" -c "${FBXSDK_URL}" -P "${CARLA_DOCKER_UTILS_FOLDER}"
``` 

Next, I modified `Carla.Dockerfile` to copy and use the changes. The modified Dockerfile is shown below.

```
FROM carla-prerequisites:latest

ARG GIT_BRANCH

USER carla
WORKDIR /home/carla

RUN cd /home/carla/ && \
  if [ -z ${GIT_BRANCH+x} ]; then git clone --depth 1 https://github.com/carla-simulator/carla.git; \
  else git clone --depth 1 --branch $GIT_BRANCH https://github.com/carla-simulator/carla.git; fi && \
  cd /home/carla/carla && \
  ./Update.sh && \
  make CarlaUE4Editor && \
  make PythonAPI
WORKDIR /home/carla/carla
COPY MyBuildUtilsDocker.sh .  
RUN cat MyBuildUtilsDocker.sh > Util/BuildTools/BuildUtilsDocker.sh && \
    make build.utils && \
    make package && \
    rm -r /home/carla/carla/Dist

WORKDIR /home/carla/carla

```

Now, compile again with the following line:

```
docker build -t carla -f Carla.Dockerfile . --build-arg GIT_BRANCH=0.9.13
```


It is still compiling now, but I think this fixed the download issue. I do not really like the way the fix is applied above so I would like to change. I do not see why the modified script MyBuildUtilsDocker needs to be in a different directory. After the compile works, we will investigate this further.

Woop Woop, the compile finished!

```
...

Town01.pcd
Town02.pcd
Town03.pcd
Town04.pcd
Town05.pcd
Town06.pcd
Town07.pcd
Readme.md
Package.sh: Packaging CARLA release.
Package.sh: CARLA release created at /home/carla/carla/Dist/CARLA_0.9.13-dirty.tar.gz
Package.sh: Success!
Removing intermediate container 8303cfdeca9c
 ---> d68bd3e8f052
Step 9/9 : WORKDIR /home/carla/carla
 ---> Running in 3d4b3612cdfe
Removing intermediate container 3d4b3612cdfe
 ---> 69d1f7be220b
Successfully built 69d1f7be220b
Successfully tagged carla:latest
```

The docs say that this docker build is for working with custom maps. This is what we need. 

That will not work unless your / partition is huge (or you have LVM enabled). If that is the case follow the steps below.

Solution from [Digital Ocean Post](https://www.digitalocean.com/community/questions/how-to-move-the-default-var-lib-docker-to-another-directory-for-docker-on-linux) Note: first solution with `-g` option is obsolete, use second solution as shown

## build Unreal Engine and CARLA in Docker - use mounted volume for `data-root` 

root `/` did not have enough space, because it is only 200GB, 

To fix this do the following: (WARNING! This may result in loss of previous images and containers, reverting has not been tested)

Create new directory if does not already exist

```
mkdir /mnt/<PATH TO DATA ROOT>/docker
```

Stop the docker service

```
sudo systemctl stop docker
```

Set the `data-root` location for docker in the docker daemon config file `/etc/docker/daemon.json`. The updated file is shown below.

```
{
   "data-root": "/mnt/<PATH TO DATA ROOT>/docker", 
   "runtimes": {
        "nvidia": {
            "path": "nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
```

Start the service
```
sudo systemctl start docker
```

Test that is worked with `hello-world'
```
docker run hello-world

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
...

```


If that worked check the working directory of the image.

```
docker images

REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    feb5d9fea6a5   9 months ago   13.3kB

```

Copy the image ID from the list and use it it check the working directory.

```
docker inspect feb5d9fea6a5 | grep WorkDir

                "WorkDir": "/mnt/storage0/docker/overlay2/94fada88aacc3d87e196d8b2f1df6baf246bd56d5d95a1905979bf71a7e698c1/work"

```

Woop woop, it looks like it worked!








Old stuff below here:

How to bind mount a host directory when running a docker container

docker run -d \
    -it \
    --name devtest \
    -v "$(pwd)"/test:/home \
    ubuntu

docker inspect devtest

"Mounts": [
            {
                "Type": "bind",
                "Source": "/home/$USER/test",
                "Destination": "/home",
                "Mode": "",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],

you can see that /test has been mounted

docker exec -it -u 0:0 devtest /bin/bash

root@39fbdcf254d3:/# cd home
root@39fbdcf254d3:/home# ls
test.txt

you can see the files from host directory

docker run -d \
    -it \
    --name devtest \
    -v "$(pwd)"/test:/home \
    -it ubuntu /bin/bash




    docker run --name carlabash\
 -e SDL_VIDEODRIVER=x11 \
 -e DISPLAY=$DISPLAY \
 -e XAUTHORITY=$XAUTHORITY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v $XAUTHORITY:$XAUTHORITY \
 -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
 -p 2000-2002:2000-2002 carlasim/carla:0.9.11 \
 ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20


 docker start carlabash\
SDL_VIDEODRIVER=x11 \
DISPLAY=$DISPLAY \
XAUTHORITY=$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $XAUTHORITY:$XAUTHORITY \
-it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
-p 2000-2002:2000-2002 carlasim/carla:0.9.11 \
./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20






## testing CARLA in docker on Ubuntu 20.04 
Host: New Office Rig - Lenovo P350
 CPU: i7 11700k
 GPU: RTX A4000 16GB


login in as regular user,

release xauthority permissions

```
xhost +

access control disabled, clients can connect from any host
```

```
docker run -e DISPLAY=$DISPLAY --net=host --gpus all --runtime=nvidia carlasim/carla:0.9.12 /bin/bash CarlaUE4.sh -opengl
=======
## Testing CARLA in Docker on new office machine (P350) 

I have tried the example docker line from the CARLA docs and I am getting an error. It seems like the XAUTH stuff is not working right, but I am really not sure. I do not remember having these issues on my other machine (it was 18.04 and this is 20.04).

```
sudo docker run --privileged --gpus all --net=host -e DISPLAY=$DISPLAY carlasim/carla:0.9.12 /bin/bash ./CarlaUE4.sh
```

This returns an error and the simulator does not open :( .
```

sh: 1: xdg-user-dir: not found
error: XDG_RUNTIME_DIR not set in the environment.
error: XDG_RUNTIME_DIR not set in the environment.
error: XDG_RUNTIME_DIR not set in the environment.
<<<<<<< HEAD
```

The simulator did not open.

Next try this:

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


4.24.3-0+++UE4+Release-4.24 518 0
Disabling core dumps.
sh: 1: xdg-user-dir: not found
ALSA lib confmisc.c:767:(parse_card) cannot find card '0'
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_card_driver returned error: No such file or directory
ALSA lib confmisc.c:392:(snd_func_concat) error evaluating strings
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_concat returned error: No such file or directory
ALSA lib confmisc.c:1246:(snd_func_refer) error evaluating name
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_refer returned error: No such file or directory
ALSA lib conf.c:5007:(snd_config_expand) Evaluate error: No such file or directory
ALSA lib pcm.c:2495:(snd_pcm_open_noupdate) Unknown PCM default
ALSA lib confmisc.c:767:(parse_card) cannot find card '0'
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_card_driver returned error: No such file or directory
ALSA lib confmisc.c:392:(snd_func_concat) error evaluating strings
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_concat returned error: No such file or directory
ALSA lib confmisc.c:1246:(snd_func_refer) error evaluating name
ALSA lib conf.c:4528:(_snd_config_evaluate) function snd_func_refer returned error: No such file or directory
ALSA lib conf.c:5007:(snd_config_expand) Evaluate error: No such file or directory
ALSA lib pcm.c:2495:(snd_pcm_open_noupdate) Unknown PCM default
^CFUnixPlatformMisc::RequestExitWithStatus
FUnixPlatformMisc::RequestExit
^CFUnixPlatformMisc::RequestExit
```

The simulator opened! 


Now try again with 0.9.12

```
docker run --name carlaserver     -e SDL_VIDEODRIVER=x11     -e DISPLAY=$DISPLAY     -e XAUTHORITY=$XAUTHORITY     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $XAUTHORITY:$XAUTHORITY     -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"'     -p 2000-2002:2000-2002 carlasim/carla:0.9.12     ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20

4.26.2-0+++UE4+Release-4.26 522 0
Disabling core dumps.
sh: 1: xdg-user-dir: not found
```

The simulator did not open.

Now try again with 0.9.13

```
docker run --name carlaserver     -e SDL_VIDEODRIVER=x11     -e DISPLAY=$DISPLAY     -e XAUTHORITY=$XAUTHORITY     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $XAUTHORITY:$XAUTHORITY     -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"'     -p 2000-2002:2000-2002 carlasim/carla:0.9.13     ./CarlaUE4.sh -quality-level=Epic -opengl -benchmark fps=20
```

Wow it works! this is a big deal.

Next let's try to trim down that command.


```
docker run --name carlaserver     -e SDL_VIDEODRIVER=x11     -e DISPLAY=$DISPLAY     -e XAUTHORITY=$XAUTHORITY     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $XAUTHORITY:$XAUTHORITY     -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"'     -p 2000-2002:2000-2002 carlasim/carla:0.9.13     ./CarlaUE4.sh -quality-level=Epic
```

This works.

However, if you try without the `--gpus` line it does not

``
docker run --name carlaserver     -e SDL_VIDEODRIVER=x11     -e DISPLAY=$DISPLAY     -e XAUTHORITY=$XAUTHORITY     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $XAUTHORITY:$XAUTHORITY     -it      -p 2000-2002:2000-2002 carlasim/carla:0.9.13     ./CarlaUE4.sh -quality-level=Epic
```

You get an error about no compatible Vulkan driver


Next, lets log out and try again without the `xhost +` line, nope that does not work.


Here is the final command in a readable format.

```
docker run --name carlaserver \
    -e SDL_VIDEODRIVER=x11 \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $XAUTHORITY:$XAUTHORITY \
    -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
    -p 2000-2002:2000-2002 carlasim/carla:0.9.13 \
    ./CarlaUE4.sh -quality-level=Epic
```

I posted my solution to [issue #4755](https://github.com/carla-simulator/carla/issues/4755) 


This documented needs to be cleaned up very badly... Team, get on that!










