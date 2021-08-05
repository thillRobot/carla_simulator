# issues 
This is a file for logging issues related to the CARLA simulator 
I guess I should use the Github issue feature, but I think this will do for now.

### Issues - Version 0.9.10.1

####  xdg-user-dir: not found
I ran into this  error: `sh: 1: xdg-user-dir: not found`. This seems to be common issue, and the CARLA teams says it can be ignored.
There is some discussion [here](https://github.com/carla-simulator/carla/issues/3156).There are still warnings but it seems like the simulation has started.

#### white screen wash out


### Issues - Version 0.9.11
 
#### Out of Memory issue
The compile operation may crash if the system runs out of memory. This happened several times during the `compiling shaders` process. The default Ubuntu setup with LVM gives a small ~900 MB swap partition. I increased the swap partition siginificantly following these [instuctions](https://blog.sleeplessbeastie.eu/2020/07/29/how-to-expand-swap-partition-after-system-installation/). The instructions are for 20.04 and the device is encrypted so you cannot follow them exactly. This needs to be documented. You can read about issue [#3590](https://github.com/carla-simulator/carla/issues/3590) on Github.

#### rsync issue
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

#### Timeout Error with remote use of PythonAPI
Sometimes running the PythonAPI remote throws an error like this.
```
'No recommended values for 'speed' attribute
Traceback (most recent call last):
  File "/home/<USER>/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1137, in <module>
    main()
  File "/home/<USER>/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1129, in main
    game_loop(args)
  File "/home/<USER>/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 1046, in game_loop
    controller = KeyboardControl(world, args.autopilot)
  File "/home/<USER>/carla_simulator/carla_0910//PythonAPI/examples/manual_control.py", line 292, in __init__
    world.player.set_autopilot(self._autopilot_enabled)
RuntimeError: time-out of 2000ms while waiting for the simulator, make sure the simulator is ready and connected to 127.0.0.1:2000'
```
This can be fixed by increasing the connection timeout that is set in the python scripts. For example I increased it to 5 seconds by
editing line 1038 in `manual_control.py`. I wonder why it defaults to something that works so poorly.


