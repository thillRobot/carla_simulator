# maps
This README is intended to be a personal guide for preparing and editing custom maps for the CARLA open source vehilce simulator. 
*Use at your own risk*. This follows the CARLA documentation [Generate maps with OpenStreetMap](https://carla.readthedocs.io/en/latest/tuto_G_openstreetmap/).

## Generating Custom Maps with for CARLA from OpenStreetMap 

#### Requirements

This process has been tested in Ubuntu 18.04 with CARLA 0.9.10 and 0.9.11. I am primarily using a build from source for so I have access to the Unreal Editor. I am sure there is a way to use the editor without a build from source CARLA, but I have not looked into this yet. 

(CHECK THIS ON THIS) - JAVA may be required to run some of these tools. I am using  `openjdk-8-jre`  which is am older version than the default for Ubuntu18 (jdk11 I think).
```
sudo apt-get install openjdk-8-jre
```

Alternatively you can use `jdk8` inside conda which is nice, but we have to use the Borg...*RESISTANCE IS FUTILE!*

```
conda activate <env>
```

```
conda install -c cidermole jdk8
```

#### Step 1 -  Obtain a map from OpenStreetMap
##### Step 1 Option 2 OpenStreetMap [web app](www.openstreetmap.org)
Export a .osm file using with the [web app](www.openstreetmap.org). Choose a bounding box (lattitude, longitude) and record these values. You may need them later. Save or export the OpenStreetMap data as a **.osm** file. I have exported two maps of TNTECH campus as `.osm` files from OpenStreetMap named `map.osm` and `map2.osm`. These are located in `carla/openstreetmap`, and the is infomation each map in a file called `<map_name>_info.txt`

##### Step 1 Option 2 JOSM - Extensible Editor for OpenStreetMap(.osm)
Alternatively, you can import the data directly from OpenStreetMap using the Java app `josm`.
This JAVA app can be used to download maps from OpenStreetMap end edit **.osm** files. Read more on the [josm Github](https://josm.openstreetmap.de/). Install the packge with with apt following the instructions [here](https://josm.openstreetmap.de/wiki/Download#Ubuntu)

Setup sources and download keys
```
sudo vim /etc/apt/sources.list
deb https://josm.openstreetmap.de/apt focal universe
wget -q https://josm.openstreetmap.de/josm-apt.key -O- | sudo apt-key add -
```
Install JOSM
```
sudo apt-get update
sudo apt-get remove josm josm-plugins

# tested version
sudo apt-get install josm
# development version
sudo apt-get install josm-latest
```
Run the app. Find information in the josm [wiki](https://josm.openstreetmap.de/wiki/Introduction) related to using the tool.

```
josm
```

Alternatively, you can download and run the *.jar* file. Note: JOSM is not working in a conda env right now. So does it require JDK8? (no JDK11 I think)
```
cd ~/openstreetmap/josm
java -jar josm.jar
```

Choose a bounding box (lattitude, longitude) and record these values. You may need them later. Save or export the OpenStreetMap data as a **.osm** file. 

#### Step 2 - obtain or generate OpenDrive (.xodr) description of roads
##### Step 2 Option 1 -  Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using CARLA
CARLA should be able to do this conversion. I made a script `convert_map.py` to convert the `.osm` file to a `.xodr` file using the sample code in the carla docs. I used `utils/config.py` as a template mainly for the imports lines. This step appears to work and the output file is produced. The line below runs the script

I know the paths look funny. This is also reflected in the python script convert_map.py. 

```
cd ~/carla_simulator/carla/PythonAPI/carla
python3 ../util/convert_map.py
```

If you do this this way below which seems more intutive, you will have the `local schema` error shown.

````
cd ~/carla_simulator/carla
python3 PythonAPI/util/convert_map.py
````

###### Cannot read local schema
You must be in the `carla/PythonAPI/carla/` directory to run this script. I assume this is just a path issue that can be addressed. For now, use `cd` as shown above. I found this here (insert link - go find post)
```
Warning: Cannot read local schema '../carla/data/xsd/types_file.xsd', will try website lookup.
```

###### Angular Distortion Issue! - CARLA 0.9.11 may have solve this - needs testing
The conversion runs but the resulting map is distorted in an angular sense (20-30 degrees) - not at all useable This is a known issue (https://github.com/carla-simulator/carla/issues/3009). The angular distortion issue can be avoided by using a (osm2xodr)[https://github.com/JHMeusener/osm2xodr] instead of CARLA to convert from **.osm** to **.xodr**.

@Axel1092 has a suggestion for properly handling the georefencing in issue (3009)[https://github.com/carla-simulator/carla/issues/3009] and he implies that the problem has been solved. However several people are still having the issue. I assume we are not correctly setting the geoferencing for the xodr file.  

@JHMeusener has provided a fix (here)[https://github.com/JHMeusener/CarlaSimpleXODRProjectionWorkaround] and mentioned in issue (3686)[https://github.com/carla-simulator/carla/issues/3686#issuecomment-789629967]. I have not tried this yet. He mentions that it might only work in Europe. 

I thought that the issue was fixed in CARLA, but since Jim's post there has been some related activity from the CARLA team. I guess they are working on a fix (here)[https://github.com/carla-simulator/carla/pull/3901], but I am not sure yet. 


##### Step 2 Option 2 - Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using osm2xodr

###### osm2xodr
This package can be used convert the **.osm** file to **.xodr** file which can be ingested by carla. [osm2xodr](https://github.com/JHMeusener/osm2xodr)
This is a custom script that I made from the example that came with the package.
**PyProj** and **osmread** are required to for **osm2xodr**. I installed them in the conda environment as shown below.

```
conda activate carla09101

conda install -c conda-forge pyproj -n carla09101
```

Here I am using pip3 install inside of conda? I am not sure this makes sense. 
```
pip3 install osmread
```

Run the script to convert the files. For now the filenames are hardcoded in the python script, but I would like to add command line arguments for the filenames.
```
cd <ROOT PATH>/osm2xodr
python3 main.py
```

##### Step 2 Option 3 - Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using netconvert from SUMO (traffic sim)
This appears to be maintained (eclipse) which is good.  Install sumo by adding the repository as shown in the [instructions](https://sumo.dlr.de/docs/Downloads.php).

```
sudo add-apt-repository ppa:sumo/stable
sudo apt-get update
sudo apt-get install sumo sumo-tools sumo-doc
```
Now you can use `netconvert` which is a command line tool that comes with SUMO. I am testing elevation from OSM or geotiff currently. 

```
netconvert --osm maps/TNTECH04/TNTECH04.osm --opendrive-output maps/TNTECH04/TNTECH.xodr --proj.plain-geo --heightmap.geotiff maps/TNTECH04/TNTECH04_16.tif --osm.elevation
```

This process work **but** there is a problem with the junctions in the resulting .xodr file. This can be corrected in Roadrunner, but it takes a long time. Also, the resulting juctions are different than the real junctions. This is not an ideal solution. Solving the angular distortion issue mentioned above (or learning the right way) should make this problem irrelevant. You can read about the corrupt junction in issue (#3009)[https://github.com/carla-simulator/carla/issues/3009] and others. See more discussion in issues section below. 

##### Step 2 Option 4 - Convert using CARLA and OSM2ODR
I need to test this. Look at `carla/Util/OSM2ODR/src/OSM2ODR.cpp` 
I might be confused...This might just be the source for Step 2 Option 1

#### Step 3 - Import OpenDrive into CARLA (Standalone mode)

I have tried **method a)** by making a copy of `config.py` called `import_map.py`. This script should load the **.xodr** file into the simulator as the map allow you to adjust the parameters of the import.
```
cp PythonAPI/util/config.py PythonAPI/util/import_map.py
```
With the simulator running, execute the python script to load the new map. There are no errors, but nothing happens except `No nodes loaded.` is shown.
```
python3 PythonAPI/util/import_map.py --osm-path=/home/thill/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
I also tried method **b)** from the tutorial and nothing happens. This method is effectively the same as **a)**, and the results are the same. The command and the outout are shown below. Once again, `No nodes loaded.` is shown.
```
python3 PythonAPI/util/config.py --osm-path=/home/thill/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
There is some information about this in issue(3009)[https://github.com/carla-simulator/carla/issues/3009]

The solution is to run `config.py` or your custom script with the `-x` option to load the `.xodr` file. This makes sense right?
```
python3 PythonAPI/util/config.py -x /home/thill/openstreetmap/map2.xodr
```

The map loads in the simulator. You may have to fly around to see them, but the roads from imported from OpenStreetMap should be shown in the map.

#### Step 4 - Adding models (props) to the map (not Standalone mode)
##### Step 4 Option 1 - Add building and flat terrain models with OSM2WORLD
This option works but it produces a flat map. OSM2WORLD claims to have *fragile* support for importing elevation. Use option 2 to include the terrain.

For now, this is a two step process.
##### OSM2WORLD -
This Java app can be used to convert a **.osm** file into **.obj** file which contains the buildings and other objects and polygons.
Download the package [here](http://osm2world.org/download/) and extract it somewhere reasonable.
```
cd ~/carla_simulator/OSM2World/latest
java -jar OSM2World.jar
```

```
./osm2world.sh --gui
```
Open a .osm file and save as a .obj file

##### Blender - a powerful tool for modifying and creating meshes
This app can be used to convert a **.obj** file into a **.fbx** file which can be ingested by carla.
```
sudo apt install blender
```
Run the app.
```
blender
```

**Alternatively you can download a portable version of blender. I like this option better, and I am currently using `blender-2.83.10-linux64`**

Download and extract the appropriate file from the blender website (here)[https://www.blender.org/download].

```
cd blender-2.83.10-linux64
./blender
```


I think you could spend quite a while learning to use blender...

Import models such as **.obj** or **.fbx**, and mdify the models to your liking. Export a single **.fbx** file to be imported into Carla as the physical world.


##### Step 4 Option 2 - Add building models and 3D terrain with blender-osm
I bought the [premium version](https://gumroad.com/d/e7703715fa18c929097f66c4a6ab9be2) for $17 and it was certainly worth it. Reads the [docs](https://github.com/vvoovv/blender-osm/wiki/Premium-Version) here. 

Note: Make sure to read a follow the intallation instructions. Most importantly download blender-osm and the assets separately. The install will not work if you download them together. I have test the package add-on in portable versions of blender 2.8 and 2.9 and it works. The ways trees are distributed is better in 2.8.

Now that I have worked on this some more, I realize that I could get the buildings from OSM2WORLD and move them in the Z manually. 

This option allows you to download a terrin model into blender. This looks really nice but is heavy to render. I am currently only using the terrain from road runner which based on the DEM, but it is not nearly as smooth.

Use the osm imported to first import the terrain. Then import the building models and trees onto the terrain.

Export the model as an **.fbx** file to be ingested. There is some talk about how the **normal smoothing** should be set in the export, and I am not sure what is correct. I think this is related to the *near zero binomial* warning that appears when compiling the map.

#### Step 5 - Compile CARLA for Map ingestion
A compiled versiuon of carla is required for map ingestion and some other tools. There are some options shown below for using docker instead of compiling from source. Currently, I am compiling using the default python3 installation in Ubuntu18. `python3 --version Python 3.6.9`. I used the dependcies install as they are shown in the official CARLA docs. I have tried to compile in a venv, but I ran into some problems (figure this out!).

#### Step 6 - Map Ingestion into CARLA 
##### Prepare Files for Map Ingestion
Preparation of the files is [here](https://carla.readthedocs.io/en/latest/tuto_A_add_map/) in a separate page of the carla docs.
One **.xodr** file and one **.fbx** file are required for each map along with one **.json** file for each map asset package.  I wrote the **.json** file manually, but the carla documents claim that this can be generated automatically. The directory structure of these files is described in the docs.   

Move the files to be ingested into `carla/Import/` of the compiled CARLA package which will generate the assets package.

Apparently, the .json file and the directory structo re is not needed anymore because roadrunnner generates an XML file instead (look into this). I am still doing though because I am stubborn.

```
+-- Import
|    +-- Package03
|    |    +-- Map03
|    |    |    +-- Map03.fbx
|    |    |    +-- Map03.xodr
|    |    +-- Package03.json
|    +-- README.md
```

##### Step 6 Option 1 - use `make import` 
This is option is for ingesting maps into a compiled from source CARLA package.

```
cd <CARLA ROOT>

make import
```
If the ingestion was successful you should see the asset packages under `<CARLA ROOT>/CarlaUE4/content/`  or `<CARLA ROOT>/Unreal/CarlaUE4/content/`.

Once the map has been ingested into the build from source CARLA package it can be edited in the Unreal Editor. Go the top of the package directory and start the editor.

```
make launch
```
When the Unreal editor loads, go to file > open level and find the level you just ingested. The first time you open a level (the new map) you will have to wait until the shaders compile. Be patient, and do not mess with the mouse (fly around or click on stuff) until it finsihes. You will not get a message to just watch or use `top`. After is compiles the level, you can fly around and check it out. The level will be above you becauase you start at sea level and the map is at the proper height (in meters) of the city you modeled (hopefully). 

When I do this, the items (actors) in the level are all white. They have material names, but it doesnt seem like they have been imported. Can I use the same assests that were used by `blender-osm`? Do I want to? The CARLA materials seems pretty nice. For now, I am manually changing all the materials. TNTECH is all brick so that made things easier, but doing this a large map is no small task. A small map is pretty quick.

Click `build` if prompted to by the editor. Save the level and close the editor when you are finished.


#### Step 7 - Export Map Asset for Use in CARLA


After the map has been ingested and cleaned up, a standalone map asset package can be exported with the following command. In CARLA 0.9.11 you must apply the fix described in [issue #3758](https://github.com/carla-simulator/carla/issues/3758) or the compile will fail.

```
make package ARGS="--packages=<PACKAGE NAME>"

```
This results in a standalone asset package directory in `carla/Dist` which can be imported into a CARLA package for use with the simulator.


#### Step 8 - Importing Map Asset Package into CARLA
Move the compressed asset package to the `carla/Import` directory of the package in which you will use `PythonAPI/util/config.py` to set the map.
Import the assets with the script provided.

```
./ImportAssets.sh
```
If the import was successful you should see the asset packages under `carla/CarlaUE4/content/`. With the simulator running, change to a newly imported map.

The import seems to have worked. This needs better documentation.


#### Docker Option Combines Step 6 and Step 7 

##### Map Ingestion + Package Export Option 2: use `docker-ue4` and `docker_tools.py`
Use this option if you have been using the docker tools primarily or if you do not have a CARLA build environmnent
```
cd <CARLA ROOT>/Util/Docker

./docker_tools.py --input <CARLA ROOT>/Import --output <CARLA ROOT>/Ingested --packages <PACKAGE NAME>
```
Place the package source in the `--input` directory, and carla in docker generate a compressed file containing the assets package in the `--output` directory. Example: `Package03_0.9.11-dirty.tar.gz`. This file can be imported into a CARLA package for use. I do not beleive the map can be edited afterwards with this option, but you should be able to load the map in the simulator.

Now complete **Step 8** for the docker option.


### adding elevation to the .xodr file - first try is shown below 

Elevation maps work! The workflow needs documentation.

osm2xodr should accept a digital elevation map as a 16int .png
the corners of the image must match the corners of the .osm file
and the minimum and max elevation must be known

data sources:

Downloaded Digital Elevation Model from http://www.tngis.org/lidar

Download OpenStreetMap Data using JOSM or https://www.openstreetmap.org/
bounding box:

files were copied and renamed for map ingestion


### Adding Elevation Data and Terrain from GIS data

Managing spatial data is all about frame of reference. In GIS this is called CRS (coordinate reference system) and it is all handled automatically as long as you know the proper CRS for each file. Use QGIS (3.16 Hannover in Ubuntu 18.04) to prepare files for Tennessee [here](http://www.tngis.org/lidar.htm). These files will have a custom CRS, and in general we want all GIS or spatial images to use a geographic coordinate system with lattitude and longitude known as WGS 84. (CRS EPSG: 4326) There is also a projected coordinate system known as WGS 84 (CRS EPSG: 4978). 

This needs docomentation.


### Adding Elevation Data and Terrain from OSM data

You can use the `blender-osm` add on to create terrain from osm data. The add on can import the osm data from the web.


### Adding a Map with RoadRunner
(https://carla.readthedocs.io/en/latest/tuto_A_add_map/#introduction)
*RoadRunner is the recommended software to create a map due to its simplicity* - CARLA docs

I have a licensed copy running now. 

Roadrunner seems to work to add elevation data to the roads and can export an .xodr. The UI is terrible.

#### Installing RoadRunner from Mathworks 

Go to Mathworks.com and sign in. Then find My Account and you should see My Software. If you have the license it should be in the list. ITS helped me set that up, but Roadrunner came with our university MATLAB installation. It is worth checking because you might have access too. I know you do if you are at Tennessee Tech.

Follow these instructions on the Mathworks (website)[ https://www.mathworks.com/help/roadrunner/ug/install-and-activate-roadrunner.html#:~:text=Go%20to%20the%20License%20Center,tab%2C%20click%20Activate%20a%20Computer ]

The Roadrunner download is in a weird place. You have to act like you are going to download MATLAB, even if you just want RoadRunner. Also, the versions are tied together. However, you *can* download and run RoadRunner without having MATLAB installed. 

I have tested 2020b, but now 2021a is out. In general the 2020b version seemed a little buggy, therefore I am inclined to download and install the new version. I still have MATLAB 2020b installed, but I do not think it matters. My guess is that the versions need to be the same if you want some integration between the two programs, but for now I am using RoadRunner standalone. 


## Testing the Custom Map

Start the simulator, then use the `PythonAPI` to change the map to the newly created custom map. 

```
cd <CARLA ROOT>
./CarlaUE4.sh -opengl
```

```
python3 PythonAPI/util/config.py --map <map_name>
```

## Issues

Discussions of issues are scattered througout the READMEs also. Should they all come here? I am not sure. 

- **OOM Death During Build**
  Out of memory crash during ` make launch ` for TNTECH01 - failed - out of memory - This has been solved my increasing the swap partition size significantly. You can read about this in issue ()[https://github.com/carla-simulator/carla/issues/3590]

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





## setting up QGIS - I do not think this goes here...

to begin, i have run into the partial upgrade issue again

<USER>@<COMPUTER>:~$ sudo apt update
[sudo] password for thill: 
Hit:1 http://dl.google.com/linux/chrome/deb stable InRelease
Hit:2 https://download.sublimetext.com apt/stable/ InRelease                                                                               
Hit:3 http://us.archive.ubuntu.com/ubuntu bionic InRelease                                                                                 
Get:4 http://us.archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]                                                               
Hit:6 http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu bionic InRelease                                                             
Get:7 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]                                
Hit:8 http://packages.ros.org/ros/ubuntu bionic InRelease                                                           
Get:9 http://us.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]                                      
Get:10 http://us.archive.ubuntu.com/ubuntu bionic-updates/main amd64 DEP-11 Metadata [295 kB]    
Get:11 http://us.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 DEP-11 Metadata [290 kB]                                     
Get:12 http://us.archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 DEP-11 Metadata [2,468 B]                                       
Get:13 http://us.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 DEP-11 Metadata [9,292 B]                      
Get:14 http://security.ubuntu.com/ubuntu bionic-security/main amd64 DEP-11 Metadata [49.0 kB]                                              
Hit:5 https://apt.llvm.org/xenial llvm-toolchain-xenial-8 InRelease                                                     
Get:15 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 DEP-11 Metadata [60.3 kB]
Get:16 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 DEP-11 Metadata [2,464 B]
Fetched 960 kB in 1s (829 kB/s)                                               
Reading package lists... Done
Building dependency tree       
Reading state information... Done
All packages are up to date.

<USER>@<COMPUTER>:~$ sudo apt install gnupg software-properties-common
Reading package lists... Done
Building dependency tree       
Reading state information... Done
gnupg is already the newest version (2.2.4-1ubuntu1.4).
gnupg set to manually installed.
software-properties-common is already the newest version (0.96.24.32.14).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

<USER>@<COMPUTER>:~$ wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
gpg: WARNING: unsafe ownership on homedir '/home/thill/.gnupg'
gpg: keyring '/etc/apt/trusted.gpg.d/qgis-archive.gpg' created

gpg: key F7E06F06199EF2F2: 1 signature not checked due to a missing key
gpg: key F7E06F06199EF2F2: public key "QGIS Archive Automatic Signing Key (2020) <qgis-developer@lists.osgeo.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
gpg: no ultimately trusted keys found

<USER>@<COMPUTER>:~$ sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg


this keys issue seems weird to me, because I do not remember seeing it the first time I did the same install...hmmm...
either way QGIS seems to work fine