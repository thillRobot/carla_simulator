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

###### Cannot read local schema
You must be in the `carla/PythonAPI/carla/` directory to run this script. I assume this is just a path issue that can be addressed. For now, use `cd` as shown above. I found this here (insert link - go find post)
```
Warning: Cannot read local schema '../carla/data/xsd/types_file.xsd', will try website lookup.
Traceback (most recent call last):
  File "PythonAPI/util/convert_osm_xodr.py", line 50, in <module>
    xodr_data = carla.Osm2Odr.convert(osm_data, settings)
RuntimeError: unsupported protocol in URL
 In file 'built in type map'
 At line/column 1/0.

  The types could not be loaded from 'built in type map'.
```
I have no idea why this is happening, but it does not seem to matter. This workaround seems to be just fine.


###### Angular Distortion Issue! - CARLA 0.9.11 may have solved this - actually I think it might be me...
The conversion runs but the resulting map is distorted in an angular sense (20-30 degrees) - not at all useable This is a known issue (https://github.com/carla-simulator/carla/issues/3009). The angular distortion issue can be avoided by using a (osm2xodr)[https://github.com/JHMeusener/osm2xodr] instead of CARLA to convert from **.osm** to **.xodr**.

@Axel1092 has a suggestion for properly handling the georefencing in issue (3009)[https://github.com/carla-simulator/carla/issues/3009] and he implies that the problem has been solved. However several people are still having the issue. I assume we are not correctly setting the geoferencing for the xodr file.  

@JHMeusener has provided a fix (here)[https://github.com/JHMeusener/CarlaSimpleXODRProjectionWorkaround] and mentioned in issue (3686)[https://github.com/carla-simulator/carla/issues/3686#issuecomment-789629967]. I have not tried this yet. He mentions that it might only work in Europe. 

I thought that the issue was fixed in CARLA, but since Jim's post there has been some related activity from the CARLA team. I guess they are working on a fix (here)[https://github.com/carla-simulator/carla/pull/3901], but I am not sure yet. 

I have test again with updated CARLA 0.9.11 using the steps shown above, and the angular distortion issue is still happening. You can clearly see that the map shown in this image is not correct.

<img src="https://github.com/thillRobot/carla_simulator/blob/master/png_images/angular_distortion_01.png" alt="drawing" width="200"/>
