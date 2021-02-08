
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
                "Source": "/home/thill/test",
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
