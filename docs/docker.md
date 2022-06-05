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
