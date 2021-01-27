# maps
This README is intended to be a guide for preparing and editing custom maps for the CARLA open source vehilce simulator.
This follows the CARLA documentation [Generate maps with OpenStreetMap](https://carla.readthedocs.io/en/latest/tuto_G_openstreetmap/).

## Generating Custom Maps with for CARLA from OpenStreetMap 

#### Requirements

This process has been tested in Ubuntu 18.04 with CARLA 0.9.10 and 0.9.11. I am primarily using a build from source for so I have access to the editor.   

(CHECK THIS ON THIS) - JAVA may be required to run some of these tools. I am using  `openjdk-8-jre`  which is am older version than the default for Ubuntu18.
```
sudo apt-get install openjdk-8-jre
```

Alternatively you can use install `jdk8` with conda which is nice, but we have to use the Borg...

```
conda activate carla
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




#### Step 2 - obtain or generate OpenDrive (.xodr) description if roads
##### Step 2 Option 1 -  Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using CARLA
CARLA should be able to do this conversion. I made a script `convert_map.py` to convert the `.osm` file to a `.xodr` file using the sample code in the carla docs. I used `utils/config.py` as a template mainly for the imports lines. This step appears to work and the output file is produced. The line below runs the script
````
cd ~/carla_simulator/carla/PythonAPI/carla/
python3 ${CARLA_ROOT}/PythonAPI/util/convert_map.py
````
###### Angular Distortion Issue! - CARLA 0.9.11 may have solve this - needs testing
The conversion runs but the resulting map is distorted in an angular sense (~20-30 degrees) - not at all useable This is a known issue (https://github.com/carla-simulator/carla/issues/3009). The angular distortion issue can be avoided by using a [osm2xodr](https://github.com/JHMeusener/osm2xodr) instead of CARLA to convert from **.osm** to **.xodr**.

###### Cannot read local schema
If you will recieve the error below, this is because you must be in the `carla/PythonAPI/carla/` directory to run this script. I assume this is just a path issue that can be addressed. For now, use `cd` as shown above. I found this here (insert link - go find post)
```
Warning: Cannot read local schema '../carla/data/xsd/types_file.xsd', will try website lookup.
```

##### Step 2 Option 2 - Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using osm2xodr

###### sm2xodr
This package can be used convert the **.osm** file to **.xodr** file which can be ingested by carla. [osm2xodr](https://github.com/JHMeusener/osm2xodr)
This is a custom script that I made from the example that came with the package.
**PyProj** and **osmread** are required to for **osm2xodr**. I installed them in the conda environment as shown below.

```
conda activate carla09101
```
```
conda install -c conda-forge pyproj -n carla09101
```
```
pip3 install osmread
```

Run the cscript to convert the files. For now the filenames are hardcoded in the python script, but I would like to add command line arguments for the filenames.
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

##### Step 2 Option 4 - Convert using CARLA and OSM2ODR
I need to test this. Look at `carla/Util/OSM2ODR/src/OSM2ODR.cpp` 
I might be confused...This might just be the source for Step 2 Option 1


#### Step 3 - Import OpenDrive into CARLA (Standalone mode)

I have tried **method a)** by making a copy of `config.py` called `import_map.py`. This script should load the **.xodr** file into the simulator as the map allow you to adjust the parameters of the import.
```
cp ${CARLA_ROOT}/PythonAPI/util/condif.py ${CARLA_ROOT}/PythonAPI/util/import_map.py
```
With the simulator running, execute the python script to load the new map. There are no errors, but nothing happens except `No nodes loaded.` is shown.
```
python3 ${CARLA_ROOT}/PythonAPI/util/import_map.py --osm-path=/home/thill/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```
I also tried method **b)** from the tutorial and nothing happens. This method is effectively the same as **a)**, and the results are the same. The command and the outout are shown below. Once again, `No nodes loaded.` is shown.
```
python3 ${CARLA_ROOT}/PythonAPI/util/config.py --osm-path=/home/thill/openstreetmap/map2.xodr
Converting OSM data to opendrive
No nodes loaded.
```

I commented on this Github post here (https://github.com/carla-simulator/carla/issues/3009), but I have not heard anything back yet. Now I feel dumb, but at least I solved my own problem. I may have been reading the tutorials wrong, or they were misleading.

The solution is to run `config.py` or your custom script with the `-x` option to load the `.xodr` file. This makes sense right?
```
python3 ${CARLA_ROOT}/PythonAPI/util/config.py -x /home/thill/openstreetmap/map2.xodr
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

Alternatively you can download a portable version of blender. I like this option better, and I am currently using `blender-2.83.10-linux64`

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

##### Map Ingestion Option 1: use `make`
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


#### Step 7 - Import Map for Use in CARLA



After the map has been ingested and cleaned up, a standalone map asset package can be exported with the following command. In CARLA 0.9.11 you must apply the fix described in [issue #3758](https://github.com/carla-simulator/carla/issues/3758) or the compile will fail.

```
make package ARGS="--packages=Package03"

```
This results in a standalone asset package directory in `carla/Dist` which can be imported into a CARLA package for use with the simulator.



##### Map Ingestion + Package Export Option 2: use `docker-ue4` and `docker_tools.py`
Use this option if you have been using the docker tools primarily or if you do not have a CARLA build environmnent
```
cd <CARLA ROOT>/Util/Docker

./docker_tools.py --input <CARLA ROOT>/Import --output ~<CARLA ROOT>/Ingested --packages Package03
```
Place the package source in the `--input` directory, and carla in docker generate a compressed file containing the assets package in the `--output` directory. Example: `Package03_0.9.11-dirty.tar.gz`. This file can be imported into a CARLA package for use. I do not beleive the map can be edited afterwards with this option, but you should be able to load the map in the simulator.


#### Step 7 - Importing Map Asset Package into CARLA
Move the compressed asset package to the `carla/Import` directory of the package in which you will use `PythonAPI/util/config.py` to set the map.
Import the assets with the script provided.

```
./ImportAssets.sh
```
If the import was successful you should see the asset packages under `carla/CarlaUE4/content/`. With the simulator running, change to a newly imported map.

The import seems to have worked. There is a problem with the location. The spawning locations are not where the town is apparantely. YOU ARE SUPER CLOSE!
I have solved the location problem with properly georeferenced files. This needs documentation.



### adding elevation to the .xodr file - first try is shown below 

Elevation maps work! The workflow needs documentation.

osm2xodr will accept a digital elevation map as a 16int .png
the corners of the image must match the corners of the .osm file
and the minimum and max elevation must be know


package name: Cookeville01

map name: TNTECH01

data sources:

Downloaded Digital Elevation Model from http://www.tngis.org/lidar

DEM tile#: 2108669SW
shape file: 2108669SW.img
exported:
topo file: 2108669SW_16.png

Download OpenStreetMap Data using JOSM or https://www.openstreetmap.org/
bounding box:

min lat (N): 36.182298693
max lat (S): 36.171215387
min lon (W): -85.525670251
max lon (E): -85.501885697
osm file: 2108669SW.osm

files were copied and renamed for map ingestion

2108669SW.osm -> TNTECH01.osm
2108669SW_16.png -> TNTECH.png

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



make launch for TNTECH01 - failed - ou tof memory


NEW LESSON! First time loading a level, Wait for the level to compile the distance feilds before you click anything. Avoid crashing during first load of a level or the level may become corrupted and unusble.


error when turning on autopilot, makes me thin something is wrong with the opendrive file

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

Other Issues

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
