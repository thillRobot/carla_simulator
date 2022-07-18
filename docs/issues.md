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

## Issues

Discussions of issues are scattered througout the READMEs also. Should they all come here? I am not sure. 

- **Merging DEM (or other) layers in QGIS (3.16)**

  Merging separate layers into has given me trouble twice now. Changing the projection of a layer using 'save as' in the layer tree menu can cause the resulting layer to be not exactly rectangular. You can see the edges are out of square by about one or two pixels. Merge will not work on layers that are not perfectly square because the whitespace introduced in the edges messes up the color scaling terribly. I assume there is a solution to this issue, but I have not figure it out yet. 

  The layers should be perfectly square in their native CRS, so you need to merge them before transforming them. I merged them into one layer for each full DEM tile (four quadrants) and then I merged the three full tiles into one large tile that basically covers the whole city. I want to expand the map to cover more of the county, but that will take some clicking. I am not sure when I want to do all thatm, maybe now! The elevation may be much more noticeable outside of the city. 

- **OOM Death During Build**
  Out of memory crash during ` make launch ` for TNTECH01 - failed - out of memory - This has been solved my increasing the swap partition size significantly. You can read about this in issue (#3590)[https://github.com/carla-simulator/carla/issues/3590]

  Theere are instructions for increasing the swap size here in this (blog)[https://sleeplessbeastie.eu/2020/07/29/how-to-expand-swap-partition-after-system-installation/]

```
...
CommandUtils.Run: Took 1641.562567s to run UE4Editor, ExitCode=137
...
Log.WriteException: ERROR: Cook failed.
...
```
 Ahhh!! I thought that having faster RAM had solved the problem, nope! OOM death on a basically fresh system with 32Gb(3200Mhz) RAM + 1Gb(automicatic) Swap LVM. This is just not enough swap space! 

```
  ...
  LogShaderCompilers: Display: Worker (9/13): shaders left to compile 7944
  LogTexture: Display: Building textures: T_v3Skin_n (BC5, 8192X8192)
  LogShaderCompilers: Display: Worker (12/13): shaders left to compile 7934
  LogShaderCompilers: Display: Worker (10/13): shaders left to compile 7924
  LogTexture: Display: Building textures: T_fjacktVn_orm (AutoDXT, 4096X4096)
  LogShaderCompilers: Display: Worker (4/13): shaders left to compile 7914
  LogTexture: Display: Building textures: T_fjacktVn_n (BC5, 4096X4096)
  LogShaderCompilers: Display: Worker (3/13): shaders left to compile 7904
Took 248.971566s to run UE4Editor, ExitCode=137
ERROR: Cook failed.
       (see /home/thill/Library/Logs/Unreal Engine/LocalBuildLogs/Log.txt for full exception trace)
AutomationTool exiting with ExitCode=25 (Error_UnknownCookFailure)
RunUAT ERROR: AutomationTool was unable to run successfully.
Util/BuildTools/Linux.mk:16: recipe for target 'package' failed
make: *** [package] Error 25

```

- **Editor Crashes while Building Mesh Fields or Compliling Shaders**
The first time you load a new level, wait for the level to compile the distance feilds before you click anything. Avoid crashing during first load of a level or the level may become corrupted and unusble.

- **.osm to xodr angular distortion issue** 

- **broken junctions in xodr file**
If an NPC car drives through a broken junction, then it will dissappear. If the player car drives through a broken junction the simulator will crash. 

The junctions can be fixed manually in RoadRunner, but it is a pain to do. 

error when turning on autopilot, makes me think something is wrong with the opendrive file

```
No recommended values for 'speed' attribute
WARNING: attempting to destroy an actor that is already dead: Actor 515 (vehicle.mustang.mustang) 
Traceback (most recent call last):
  File "Dist/CARLA_Shipping_0.9.11-dirty/LinuxNoEditor/PythonAPI/examples/manual_control.py", line 1187, in <module>
    main()
  File "Dist/CARLA_Shipping_0.9.11-dirty/LinuxNoEditor/PythonAPI/examples/manual_control.py", line 1179, in main
    game_loop(args)
  File "Dist/CARLA_Shipping_0.9.11-dirty/LinuxNoEditor/PythonAPI/examples/manual_control.py", line 1103, in game_loop
    world.tick(clock)
  File "Dist/CARLA_Shipping_0.9.11-dirty/LinuxNoEditor/PythonAPI/examples/manual_control.py", line 293, in tick
    self.hud.tick(self, clock)
  File "Dist/CARLA_Shipping_0.9.11-dirty/LinuxNoEditor/PythonAPI/examples/manual_control.py", line 580, in tick
    t = world.player.get_transform()
RuntimeError: trying to operate on a destroyed actor; an actor's function was called, but the actor is already destroyed.
```
- **WARNING: cannot parse georeference**

```
python3 PythonAPI/examples/spawn_npc.py -n 50
^[[DWARNING: cannot parse georeference: ''. Using default values.
WARNING: cannot parse georeference: ''. Using default values.
Nav: failed loading binary
spawned 50 vehicles and 0 walkers, press Ctrl+C to exit.
^C
destroying 50 vehicles

destroying 0 walkers
```

- **Car cannot drive up steep hills!**
Avoid added very steep hills on the road because if they are too steep then the cars will not be able to drive up them and this will cause a traffic jam! 


- Partial Ubuntu Upgrade Issue
... i have run into the partial upgrade issue again. I suppose this is related to the compilers for CARLA build from source.




- Using CARLA to convert OSM to XODR - THIS IS THE ISSUE LOL

I have tried **method a)** by making a copy of `config.py` called `import_map.py`. This script should load the **.xodr** file into the simulator as the map allow you to adjust the parameters of the import.
```
cp PythonAPI/util/config.py PythonAPI/util/import_map.py
```
With the simulator running, execute the python script to load the new map. There are no errors, but nothing happens except `No nodes loaded.` is shown.
```
python3 PythonAPI/util/import_map.py --osm-path=/home/<USER>/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
I also tried method **b)** from the tutorial and nothing happens. This method is effectively the same as **a)**, and the results are the same. The command and the outout are shown below. Once again, `No nodes loaded.` is shown.
```
python3 PythonAPI/util/config.py --osm-path=/home/<USER>/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
There is some information about this in issue(3009)[https://github.com/carla-simulator/carla/issues/3009]




## setting up QGIS - I do not think this goes here...

<USER>@<COMPUTER>:~$ sudo apt install gnupg software-properties-common
Reading package lists... Done
Building dependency tree       
Reading state information... Done
gnupg is already the newest version (2.2.4-1ubuntu1.4).
gnupg set to manually installed.
software-properties-common is already the newest version (0.96.24.32.14).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

<USER>@<COMPUTER>:~$ wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
gpg: WARNING: unsafe ownership on homedir '/home/<USER>/.gnupg'
gpg: keyring '/etc/apt/trusted.gpg.d/qgis-archive.gpg' created

gpg: key ****************: 1 signature not checked due to a missing key
gpg: key ****************: public key "QGIS Archive Automatic Signing Key (2020) <qgis-developer@lists.osgeo.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
gpg: no ultimately trusted keys found

<USER>@<COMPUTER>:~$ sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg


this keys issue seems weird to me, because I do not remember seeing it the first time I did the same install...hmmm...
either way QGIS seems to work fine









#### Issues installing the PythonAPI with VENV ... SOLVED I THINK

first attempt from pip, did not work, notice that it is trying to install CARLA 0.9.5, check [issue #4937](https://github.com/carla-simulator/carla/issues/4937)

```
pip install carla

Collecting carla
  Using cached carla-0.9.5.tar.gz (3.9 kB)
    ERROR: Command errored out with exit status 1:
     command: /home/tntech.edu/thill/.venv/carla-env/bin/python3 -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-install-_frh7dho/carla/setup.py'"'"'; __file__='"'"'/tmp/pip-install-_frh7dho/carla/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' egg_info --egg-base /tmp/pip-install-_frh7dho/carla/pip-egg-info
         cwd: /tmp/pip-install-_frh7dho/carla/
    Complete output (7 lines):
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/tmp/pip-install-_frh7dho/carla/setup.py", line 114, in <module>
        ext_modules=get_libcarla_extensions(),
      File "/tmp/pip-install-_frh7dho/carla/setup.py", line 31, in get_libcarla_extensions
        linux_distro = platform.dist()[0]  # pylint: disable=W1505
    AttributeError: module 'platform' has no attribute 'dist'
    ----------------------------------------
ERROR: Command errored out with exit status 1: python setup.py egg_info Check the logs for full command output.
```

The suggestion to choose the version did not work either. It is still hung on version 0.9.5

```
pip install carla==0.9.13

ERROR: Could not find a version that satisfies the requirement carla==0.9.13 (from versions: 0.9.5)
ERROR: No matching distribution found for carla==0.9.13
```

Let's try again with a fresh venv.

```
deactivate
rm -rf ~/.venv/carla-env
```
```
python3 -m venv ~/.venv/carla-env 
source ~/.venv/carla-env/bin/activate
```

That was not the problem. I used `ensurepip` to get it working. I am not really sure what happened there...

```
(carla-env)$ python -m ensurepip

Looking in links: /tmp/tmphhzn_khg
Requirement already satisfied: setuptools in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (44.0.0)
Requirement already satisfied: pip in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (20.0.2)
Requirement already satisfied: pkg_resources in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (0.0.0)
```

```
(carla-env)$ python -m ensurepip --upgrade

Looking in links: /tmp/tmpwf33e47q
Requirement already up-to-date: setuptools in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (44.0.0)
Requirement already up-to-date: pip in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (20.0.2)
Requirement already up-to-date: pkg_resources in /home/tntech.edu/thill/.venv/carla-env/lib/python3.8/site-packages (0.0.0)
(carla-env) thill@BRWN305-D01:~/carla-simulator/dist$ pip install --upgrade pip
Collecting pip
  Downloading pip-22.1.2-py3-none-any.whl (2.1 MB)
     |████████████████████████████████| 2.1 MB 4.2 MB/s 
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 20.0.2
    Uninstalling pip-20.0.2:
      Successfully uninstalled pip-20.0.2
Successfully installed pip-22.1.2
```

Then reinstall the dependencies
```
(carla-env)$ pip install pygame numpy
Collecting pygame
  Using cached pygame-2.1.2-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (21.8 MB)
Collecting numpy
  Using cached numpy-1.23.1-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (17.1 MB)
Installing collected packages: pygame, numpy
Successfully installed numpy-1.23.1 pygame-2.1.2

```

Finally, you can install CARLA from a .whl file. This one was manully downloaded from [pypi/carla](https://pypi.org/project/carla/)
```
(carla-env)$ pip install carla-0.9.13-cp38-cp38-manylinux_2_27_x86_64.whl 

Processing ./carla-0.9.13-cp38-cp38-manylinux_2_27_x86_64.whl
Installing collected packages: carla
Successfully installed carla-0.9.13
```

I assume this means that you could skip the manual download and use pip for that too. Let's try that instead.
