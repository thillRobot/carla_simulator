# maps
 This README is intended to be a guide for preparing and editing custom maps for the CARLA open source vehilce simulator.

## Making Custom Maps for CARLA

### Generating Custom Maps with OpenStreetMap (Generate maps with OpenStreetMap)
I started trying to build a custom town. This is one of my big goals for this project. I want to run CARLA in a virtual TNTECH Campus.

I have tried to follow this CARLA tutorial [here](https://carla.readthedocs.io/en/latest/tuto_G_openstreetmap/), but I am stuck.

Progress so far (steps from tutorial in link above)

#### Step 1 -  Obtain a map with OpenStreetMap
I have exported two maps of TNTECH campus as `.osm` files from OpenStreetMap named `map.osm` and `map2.osm`. These are located in `carla/openstreetmap`
This can be done with the web app(openstreetmap.org), or you can get the data directly with the java app `josm` shown below.

#### Step 2 - Prepare Map with Third Party Tools
JAVA is required to run these tools. I am using  `openjdk-8-jre`  which is am older version than the default for Ubuntu18.
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


##### - JOSM - Extensible Editor for OpenStreetMap(.osm)
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


#### Step 2 -  Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using CARLA
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
#### Step 2 Alternate - Convert OpenStreetMap (.osm) to OpenDRIVE format (.xodr) using osm2xodr

##### - osm2xodr
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

#### Step 3 - Import into CARLA

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

#### Step 4 Option 1 - Add building models with OSM2WORLD
This option works but it produces a flat map. OSM2WORLD claims to have *fragile* support for importing elevation. Use option 2 to include the terrain.

For now, this is a two step process.
##### - OSM2WORLD -
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

##### - Blender
This app can be used to convert a **.obj** file into a **.fbx** file which hopefully can be ingested by carla.
```
sudo apt install blender
```
Run the app.
```
blender
```
Click import mesh **.obj** and after model loads export it as a **.fbx** file.

#### Step 4 Option 2 - Add building models with blender-osm
I bought the [premium version](https://gumroad.com/d/e7703715fa18c929097f66c4a6ab9be2) for $17 and it was certainly worth it. Reads the [docs](https://github.com/vvoovv/blender-osm/wiki/Premium-Version) here.

Make sure to read a follow the intallation instructions. Most importantly download blender-osm and the assets separately. The install will not work if you download them together. I have test the package add-on in portable versions of blender 2.8 and 2.9 and it works. The ways trees are distributed is better in 2.8.

Use the osm imported to first import the terrain. Then import the building models and trees onto the terrain.

Export the model as an **.fbx** file to be ingested.

#### Step 5 - Compile CARLA for Map ingestion
A compiled versiuon of carla is required for map ingestion and some other tools. There are two options shown below for compiling CARLA.




##### Prepare Files for Map Ingestion
Preparation of the files is [here](https://carla.readthedocs.io/en/latest/tuto_A_add_map/) in a separate page of the carla docs.
One **.xodr** file and one **.fbx** file are required for each map along with one **.json** file for each map asset package.  I wrote the **.json** file manually, but the carla documents claim that this can be generated automatically. The directory structure of these files is described in the docs.   

Move the files to be ingested into `carla/Import/` of the compiled CARLA package which will generate the assets package.

```
+-- Import
|    +-- Package03
|    |    +-- Map03
|    |    |    +-- Map03.fbx
|    |    |    +-- Map03.xodr
|    |    +-- Package03.json
|    +-- README.md
```

#### Step 4 - Perform Map Ingestion
##### Map Ingestion Option 1: use `make`
This is option is for ingesting maps into a compiled from source CARLA package.

```
cd <CARLA ROOT>

make import
```
If the ingestion was successful you should see the asset packages under `<CARLA ROOT>/CarlaUE4/content/`  or `<CARLA ROOT>/Unreal/CarlaUE4/content/`
With the simulator running, change to a newly imported map.


##### Map Ingestion Option 2: use `docker-ue4` and `docker_tools.py`
Use this option if you have been using the docker tools primarily or if you do not have a CARLA build environmnent
```
cd <CARLA ROOT>/Util/Docker

./docker_tools.py --input <CARLA ROOT>/Import --output ~<CARLA ROOT>/Ingested --packages Package03
```
This will generate a compressed file containing the assets package in the specified directory. Example: `Package03_0.9.11-dirty.tar.gz`. This file can be imported into a CARLA package for use.

#### Step 6 - Importing Asset Package into CARLA
Move the compressed asset package to the `carla/Import` directory of the package in which you will use `PythonAPI/util/config.py` to set the map.
Import the assets with the script provided.
```
./ImportAssets
```
If the import was successful you should see the asset packages under `carla/CarlaUE4/content/`. With the simulator running, change to a newly imported map.

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

The import seems to have worked. There is a problem with the location. The spawning locations are not where the town is apparantely. YOU ARE SUPER CLOSE!


### text below here is out of place ?

I was able to perform the map ingestion by preparing the files manually as described below and running the following. This process needs to be documented and tested further.

```
some stuff here
```
After the map has been imported a standalone asset package can be exported with the following command.

```
make package ARGS="--packages=Package03"

```
This results in a standalone asset package directory in `carl/Dist`.

I beleive that this package must be exported to be used for distribution.


### adding elevation to the .xodr file - first try is shown below

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









### Adding a Map with RoadRunner
(https://carla.readthedocs.io/en/latest/tuto_A_add_map/#introduction)
*RoadRunner is the recommended software to create a map due to its simplicity* - CARLA docs
I have not tried to follow this yet because it requires RoadRunner, but I have requested a trial license from MATHWORKS.

I have a licensed copy running now. Now I am not sure what to do with it.



make launch for TNTECH01 - failed - ou tof memory


Signal 11 caught.
Malloc Size=65538 LargeMemoryPoolOffset=65554
CommonUnixCrashHandler: Signal=11
Malloc Size=65535 LargeMemoryPoolOffset=131119
Malloc Size=744080 LargeMemoryPoolOffset=875216
[2021.01.11-01.20.25:742][886]LogCore: === Critical error: ===
Unhandled Exception: SIGSEGV: invalid attempt to read memory at address 0x0000000000000000




[2021.01.11-01.19.48:930][613]LogMeshUtilities: Finished distance field build in 7.8s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6179
[2021.01.11-01.19.56:242][670]LogMeshUtilities: Finished distance field build in 7.3s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6178
[2021.01.11-01.20.02:927][716]LogMeshUtilities: Finished distance field build in 6.7s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6176
[2021.01.11-01.20.10:225][768]LogMeshUtilities: Finished distance field build in 7.3s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6175
[2021.01.11-01.20.18:322][831]LogMeshUtilities: Finished distance field build in 8.1s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6174
[2021.01.11-01.20.25:322][883]LogMeshUtilities: Finished distance field build in 7.0s - 64x64x64 distance field, 64 triangles, Range [-0.2, 1.0], TNTECH01_Terrain_pine_low_poly_Dupli_6173
Signal 11 caught.
Malloc Size=65538 LargeMemoryPoolOffset=65554
CommonUnixCrashHandler: Signal=11
Malloc Size=65535 LargeMemoryPoolOffset=131119
Malloc Size=744080 LargeMemoryPoolOffset=875216
[2021.01.11-01.20.25:742][886]LogCore: === Critical error: ===
Unhandled Exception: SIGSEGV: invalid attempt to read memory at address 0x0000000000000000

[2021.01.11-01.20.25:742][886]LogCore: Fatal error!

0x00007f5fec5dcc12 libUE4Editor-VulkanRHI.so!VulkanRHI::FOldResourceHeapPage::FOldResourceHeapPage(VulkanRHI::FOldResourceHeap*, VulkanRHI::FDeviceMemoryAllocation*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanMemory.cpp:732]
0x00007f5fec5de26a libUE4Editor-VulkanRHI.so!VulkanRHI::FOldResourceHeap::AllocateResource(VulkanRHI::FOldResourceHeap::EType, unsigned int, unsigned int, bool, bool, char const*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanMemory.cpp:1166]
0x00007f5fec60193a libUE4Editor-VulkanRHI.so!VulkanRHI::FResourceHeapManager::AllocateImageMemory(VkMemoryRequirements const&, unsigned int, char const*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Public/VulkanMemory.h:812]
0x00007f5fec5f9226 libUE4Editor-VulkanRHI.so!FVulkanSurface::FVulkanSurface(FVulkanDevice&, VkImageViewType, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FRHIResourceCreateInfo const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:561]
0x00007f5fec5fcf40 libUE4Editor-VulkanRHI.so!FVulkanTextureBase::FVulkanTextureBase(FVulkanDevice&, VkImageViewType, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FRHIResourceCreateInfo const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:1645]
0x00007f5fec5ff5c5 libUE4Editor-VulkanRHI.so!FVulkanTexture3D::FVulkanTexture3D(FVulkanDevice&, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FResourceBulkDataInterface*, FClearValueBinding const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:1934]
0x00007f5fec5fa2db libUE4Editor-VulkanRHI.so!FVulkanDynamicRHI::RHICreateTexture3D(unsigned int, unsigned int, unsigned int, unsigned char, unsigned int, unsigned int, FRHIResourceCreateInfo&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:987]
0x00007f5fec5f4530 libUE4Editor-VulkanRHI.so!FVulkanDynamicRHI::RHICreateTexture3D_RenderThread(FRHICommandListImmediate&, unsigned int, unsigned int, unsigned int, unsigned char, unsigned int, unsigned int, FRHIResourceCreateInfo&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Public/VulkanDynamicRHI.h:284]
0x00007f602c95d87e libUE4Editor-Engine.so!FDistanceFieldVolumeTextureAtlas::UpdateAllocations() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Engine/Private/DistanceFieldAtlas.cpp:407]
0x00007f601df237f5 libUE4Editor-Renderer.so!FDeferredShadingSceneRenderer::PrepareDistanceFieldScene(FRHICommandListImmediate&, bool) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/DeferredShadingRenderer.cpp:568]
0x00007f601df25dda libUE4Editor-Renderer.so!FDeferredShadingSceneRenderer::Render(FRHICommandListImmediate&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/DeferredShadingRenderer.cpp:1187]
0x00007f601e3d2986 libUE4Editor-Renderer.so!RenderViewFamily_RenderThread(FRHICommandListImmediate&, FSceneRenderer*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/SceneRendering.cpp:3473]
0x00007f601e3d223d libUE4Editor-Renderer.so!TEnqueueUniqueRenderCommandType<FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::FDrawSceneCommandName, FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::$_92>::DoTask(ENamedThreads::Type, TRefCountPtr<FGraphEvent> const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Public/RenderingThread.h:198]
0x00007f601e3d4be6 libUE4Editor-Renderer.so!TGraphTask<TEnqueueUniqueRenderCommandType<FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::FDrawSceneCommandName, FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::$_92> >::ExecuteTask(TArray<FBaseGraphTask*, TSizedDefaultAllocator<32> >&, ENamedThreads::Type) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Public/Async/TaskGraphInterfaces.h:847]
0x00007f602faca72b libUE4Editor-Core.so!FNamedTaskThread::ProcessTasksNamedThread(int, bool) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/Async/TaskGraph.cpp:686]
0x00007f602fac9443 libUE4Editor-Core.so!FNamedTaskThread::ProcessTasksUntilQuit(int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/Async/TaskGraph.cpp:582]
0x00007f602b14303f libUE4Editor-RenderCore.so!RenderingThreadMain(FEvent*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Private/RenderingThread.cpp:339]
0x00007f602b1ca462 libUE4Editor-RenderCore.so!FRenderingThread::Run() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Private/RenderingThread.cpp:488]
0x00007f602fb60d57 libUE4Editor-Core.so!FRunnableThreadPThread::Run() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/HAL/PThreadRunnableThread.cpp:25]
0x00007f602fb285f0 libUE4Editor-Core.so!FRunnableThreadPThread::_ThreadProc(void*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/HAL/PThreadRunnableThread.h:177]
0x00007f603061f6db libpthread.so.0!UnknownFunction(0x76da)
0x00007f60271b571f libc.so.6!clone(+0x3e)

[2021.01.11-01.20.25:750][886]LogExit: Executing StaticShutdownAfterError
Malloc Size=1048576 LargeMemoryPoolOffset=1923808
LogPlatformFile: Not using cached read wrapper
LogTaskGraph: Started task graph with 4 named threads and 7 total threads with 1 sets of task threads.
LogICUInternationalization: ICU TimeZone Detection - Raw Offset: -6:00, Platform Override: ''
LogInit: Build: ++UE4+Release-4.24-CL-0
LogInit: Engine Version: 4.24.3-0+++UE4+Release-4.24
LogInit: Compatible Engine Version: 4.24.0-0+++UE4+Release-4.24
LogInit: Net CL: 0
LogInit: OS: GenericOSVersionLabel (GenericOSSubVersionLabel), CPU: Intel(R) Core(TM) i7-4770K CPU @ 3.50GHz, GPU: GenericGPUBrand
LogInit: Compiled (64-bit): Jan  9 2021 03:04:02
LogInit: Compiled with Clang: 8.0.1 (tags/RELEASE_801/final)
LogInit: Build Configuration: Shipping
LogInit: Branch Name: ++UE4+Release-4.24
LogInit: Command Line:  -Abslog="/home/thill/carla_simulator/carla/Unreal/CarlaUE4/Saved/Logs/CarlaUE4-CRC.log" "/home/thill/carla_simulator/carla/Unreal/CarlaUE4/Saved/Crashes/crashinfo-CarlaUE4-pid-7815-EB409A033967464EB6545AB21BAFDD51/"
LogInit: Base Directory: /home/thill/UnrealEngine_4.24/Engine/Binaries/Linux/
LogInit: Installed Engine Build: 1
LogInit: Presizing for max 100000 objects, including 0 objects not considered by GC, pre-allocating 0 bytes for permanent pool.
LogInit: Object subsystem initialized
LogConfig: Applying CVar settings from Section [ConsoleVariables] File [/home/thill/.config/Epic/CrashReportClient/Saved/Config/Linux/Engine.ini]
[2021.01.11-01.20.25:964][  0]LogInit: Unix hardware info:
[2021.01.11-01.20.25:964][  0]LogInit:  - we are the first instance of this executable
[2021.01.11-01.20.25:964][  0]LogInit:  - this process' id (pid) is 8458, parent process' id (ppid) is 7815
[2021.01.11-01.20.25:964][  0]LogInit:  - we are not running under debugger
[2021.01.11-01.20.25:964][  0]LogInit:  - machine network name is 'ubuntu18-caseless'
[2021.01.11-01.20.25:965][  0]LogInit:  - user name is 'thill' (thill)
[2021.01.11-01.20.25:965][  0]LogInit:  - we're logged in locally
[2021.01.11-01.20.25:965][  0]LogInit:  - we're running with rendering
[2021.01.11-01.20.25:965][  0]LogInit:  - CPU: GenuineIntel 'Intel(R) Core(TM) i7-4770K CPU @ 3.50GHz' (signature: 0x306C3)
[2021.01.11-01.20.25:965][  0]LogInit:  - Number of physical cores available for the process: 4
[2021.01.11-01.20.25:965][  0]LogInit:  - Number of logical cores available for the process: 8
[2021.01.11-01.20.25:965][  0]LogInit:  - Cache line size: 64
[2021.01.11-01.20.25:965][  0]LogInit:  - Memory allocator used: binned2
[2021.01.11-01.20.25:965][  0]LogInit:  - This binary is optimized with LTO: no, PGO: no, instrumented for PGO data collection: no
[2021.01.11-01.20.25:965][  0]LogInit:  - This is an internal build.
[2021.01.11-01.20.25:965][  0]LogCore: Skipped benchmarking clocks because the engine is running in a standalone program mode - CLOCK_MONOTONIC will be used.
[2021.01.11-01.20.25:965][  0]LogInit: Unix-specific commandline switches:
[2021.01.11-01.20.25:965][  0]LogInit:  -ansimalloc - use malloc()/free() from libc (useful for tools like valgrind and electric fence)
[2021.01.11-01.20.25:965][  0]LogInit:  -jemalloc - use jemalloc for all memory allocation
[2021.01.11-01.20.25:965][  0]LogInit:  -binnedmalloc - use binned malloc  for all memory allocation
[2021.01.11-01.20.25:965][  0]LogInit:  -filemapcachesize=NUMBER - set the size for case-sensitive file mapping cache
[2021.01.11-01.20.25:965][  0]LogInit:  -useksm - uses kernel same-page mapping (KSM) for mapped memory (OFF)
[2021.01.11-01.20.25:965][  0]LogInit:  -ksmmergeall - marks all mmap'd memory pages suitable for KSM (OFF)
[2021.01.11-01.20.25:965][  0]LogInit:  -preloadmodulesymbols - Loads the main module symbols file into memory (OFF)
[2021.01.11-01.20.25:965][  0]LogInit:  -sigdfl=SIGNAL - Allows a specific signal to be set to its default handler rather then ignoring the signal
[2021.01.11-01.20.25:965][  0]LogInit:  -httpproxy=ADDRESS:PORT - redirects HTTP requests to a proxy (only supported if compiled with libcurl)
[2021.01.11-01.20.25:965][  0]LogInit:  -reuseconn - allow libcurl to reuse HTTP connections (only matters if compiled with libcurl)
[2021.01.11-01.20.25:965][  0]LogInit:  -virtmemkb=NUMBER - sets process virtual memory (address space) limit (overrides VirtualMemoryLimitInKB value from .ini)
[2021.01.11-01.20.25:965][  0]LogInit:  - Physical RAM available (not considering process quota): 16 GB (15937 MB, 16319868 KB, 16711544832 bytes)
[2021.01.11-01.20.25:965][  0]LogInit:  - VirtualMemoryAllocator pools will grow at scale 1.4
[2021.01.11-01.20.25:965][  0]LogInit:  - MemoryRangeDecommit() will be a no-op (re-run with -vmapoolevict to change)
[2021.01.11-01.20.25:981][  0]LogAssetRegistry: FAssetRegistry took 0.0001 seconds to start up
[2021.01.11-01.20.25:981][  0]LogUObjectArray: 1110 objects as part of root set at end of initial load.
[2021.01.11-01.20.25:981][  0]LogUObjectAllocator: 166096 out of 0 bytes used by permanent object pool.
[2021.01.11-01.20.25:981][  0]LogUObjectArray: CloseDisregardForGC: 0/0 objects in disregard for GC pool
[2021.01.11-01.20.25:981][  0]LogInit: Using OS detected language (en-US).
[2021.01.11-01.20.25:981][  0]LogInit: Using OS detected locale (en-US).
[2021.01.11-01.20.25:982][  0]LogTextLocalizationManager: No localization for 'en-US' exists, so 'en' will be used for the language.
[2021.01.11-01.20.25:982][  0]LogTextLocalizationManager: No localization for 'en-US' exists, so 'en' will be used for the locale.
[2021.01.11-01.20.25:993][  0]LogInit: Using OS detected language (en-US).
[2021.01.11-01.20.25:993][  0]LogInit: Using OS detected locale (en-US).
[2021.01.11-01.20.25:993][  0]LogTextLocalizationManager: No localization for 'en-US' exists, so 'en' will be used for the language.
[2021.01.11-01.20.25:993][  0]LogTextLocalizationManager: No localization for 'en-US' exists, so 'en' will be used for the locale.
[2021.01.11-01.20.25:994][  0]LogTextLocalizationManager: Compacting localization data took   0.69ms
[2021.01.11-01.20.25:994][  0]LogPackageLocalizationCache: Processed 2 localized package path(s) for 1 prioritized culture(s) in 0.000023 seconds
[2021.01.11-01.20.25:994][  0]CrashReportCoreLog: CrashReportClientVersion=1.0
[2021.01.11-01.20.25:994][  0]CrashReportCoreLog: CrashReportReceiver disabled
[2021.01.11-01.20.25:994][  0]CrashReportCoreLog: DataRouterUrl: https://datarouter.ol.epicgames.com/datarouter/api/v1/public/data
[2021.01.11-01.20.25:996][  0]LogInit: Initializing SDL.
[2021.01.11-01.20.26:149][  0]LogInit: Initialized SDL 2.0.10 revision: 12952 (hg-12952:bc90ce38f1e2) (compiled against 2.0.10)
[2021.01.11-01.20.26:149][  0]LogInit: Using SDL video driver 'x11'
[2021.01.11-01.20.26:177][  0]LogSlate: New Slate User Created.  User Index 0, Is Virtual User: 0
[2021.01.11-01.20.26:178][  0]LogSlate: Slate User Registered.  User Index 0, Is Virtual User: 0
[2021.01.11-01.20.26:224][  0]LogSlate: Using FreeType 2.10.0
[2021.01.11-01.20.26:226][  0]LogSlate: SlateFontServices - WITH_FREETYPE: 1, WITH_HARFBUZZ: 1
[2021.01.11-01.20.26:226][  0]LogInit: Using SDL_WINDOW_OPENGL
[2021.01.11-01.20.26:260][  0]LogInit: FSlateOpenGLContext::Initialize - creating OpenGL 2.1 context
[2021.01.11-01.20.26:464][  0]CrashReportCoreLog: Initial state = Unknown UploadState value
[2021.01.11-01.20.26:464][  0]CrashReportCoreLog: Initial state = Unknown UploadState value
[2021.01.11-01.20.26:470][  0]LogLinux: Scale at X=67.000000, Y=27.000000: 1.000000 (monitor=#0, HDPI=96.000000 (horz scale: 1.000000), VDPI=96.000000 (vert scale: 1.000000))
[2021.01.11-01.20.26:470][  0]LogLinux: Scale at X=1313.500000, Y=733.500000: 1.000000 (monitor=#0, HDPI=96.000000 (horz scale: 1.000000), VDPI=96.000000 (vert scale: 1.000000))
[2021.01.11-01.20.26:485][  0]LogInit: FSlateOpenGLContext::Initialize - creating OpenGL 2.1 context
[2021.01.11-01.20.26:489][  0]LogSlate: Took 0.000072 seconds to synchronously load lazily loaded font '../../../Engine/Content/Slate/Fonts/Roboto-Regular.ttf' (155K)
[2021.01.11-01.20.26:490][  0]LogSlate: Took 0.000360 seconds to synchronously load lazily loaded font '../../../Engine/Content/Slate/Fonts/Roboto-Bold.ttf' (160K)
[2021.01.11-01.20.26:494][  0]LogSlate: Took 0.000821 seconds to synchronously load lazily loaded font '../../../Engine/Content/Slate/Fonts/Roboto-Italic.ttf' (157K)
FUnixPlatformMisc::RequestExitWithStatus
FUnixPlatformMisc::RequestExit
[2021.01.11-01.28.25:848][886]LogHAL: Warning: Process (pid=8458) is still running - we will reap it in a waiter thread, but the thread handle is going to be leaked.
MallocCrash run out of memory allocating 204904 bytes, free 173344 bytes
Please increase LARGE_MEMORYPOOL_SIZE, exiting...
[2021.01.11-01.28.25:849][886]LogCore: FUnixPlatformMisc::RequestExit(1)
[2021.01.11-01.28.25:849][  0]LogSlate: Request Window 'Unreal Engine 4 Crash Reporter' being destroyed
[2021.01.11-01.28.25:849][  0]LogSlate: Window 'Unreal Engine 4 Crash Reporter' being destroyed
[2021.01.11-01.28.25:881][  0]LogCore: Engine exit requested (reason: OnRequestExit; note: exit was already requested)
[2021.01.11-01.28.25:886][  0]CrashReportCoreLog: Final state (Receiver) = Ready
[2021.01.11-01.28.25:886][  0]CrashReportCoreLog: Final state (Receiver) = Unknown UploadState value
[2021.01.11-01.28.25:890][  0]LogSlate: Slate User Destroyed.  User Index 0, Is Virtual User: 0
[2021.01.11-01.28.25:890][  0]LogCore: Engine exit requested (reason: CrashReportClientApp RequestExit; note: exit was already requested)
[2021.01.11-01.28.25:890][  0]LogExit: Preparing to exit.
[2021.01.11-01.28.25:891][  0]LogExit: Object subsystem successfully closed.
[2021.01.11-01.28.25:894][  0]LogModuleManager: Shutting down and abandoning module ImageWrapper (10)
[2021.01.11-01.28.25:894][  0]LogModuleManager: Shutting down and abandoning module InputCore (8)
[2021.01.11-01.28.25:894][  0]LogModuleManager: Shutting down and abandoning module CoreUObject (6)
[2021.01.11-01.28.25:894][  0]LogModuleManager: Shutting down and abandoning module PakFile (4)
[2021.01.11-01.28.25:894][  0]LogModuleManager: Shutting down and abandoning module RSA (3)
[2021.01.11-01.28.25:894][  0]LogExit: Exiting.
[2021.01.11-01.28.25:894][  0]LogInit: Tearing down SDL.
[2021.01.11-01.28.25:895][  0]LogCore: FUnixPlatformMisc::RequestExit(bForce=false, ReturnCode=143)
Util/BuildTools/Linux.mk:7: recipe for target 'launch' failed
make: *** [launch] Error 1
thill@ubuntu18-caseless:~/carla_simulator/carla$ I l






then again


LoginId:5127219a99924a64b10b072094d219b9-000003e8
EpicAccountId:

Caught signal

libUE4Editor-VulkanRHI.so!VulkanRHI::FOldResourceHeapPage::FOldResourceHeapPage(VulkanRHI::FOldResourceHeap*, VulkanRHI::FDeviceMemoryAllocation*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanMemory.cpp:732]
libUE4Editor-VulkanRHI.so!VulkanRHI::FOldResourceHeap::AllocateResource(VulkanRHI::FOldResourceHeap::EType, unsigned int, unsigned int, bool, bool, char const*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanMemory.cpp:1166]
libUE4Editor-VulkanRHI.so!VulkanRHI::FResourceHeapManager::AllocateImageMemory(VkMemoryRequirements const&, unsigned int, char const*, unsigned int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Public/VulkanMemory.h:812]
libUE4Editor-VulkanRHI.so!FVulkanSurface::FVulkanSurface(FVulkanDevice&, VkImageViewType, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FRHIResourceCreateInfo const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:561]
libUE4Editor-VulkanRHI.so!FVulkanTextureBase::FVulkanTextureBase(FVulkanDevice&, VkImageViewType, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FRHIResourceCreateInfo const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:1645]
libUE4Editor-VulkanRHI.so!FVulkanTexture3D::FVulkanTexture3D(FVulkanDevice&, EPixelFormat, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, FResourceBulkDataInterface*, FClearValueBinding const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:1934]
libUE4Editor-VulkanRHI.so!FVulkanDynamicRHI::RHICreateTexture3D(unsigned int, unsigned int, unsigned int, unsigned char, unsigned int, unsigned int, FRHIResourceCreateInfo&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Private/VulkanTexture.cpp:987]
libUE4Editor-VulkanRHI.so!FVulkanDynamicRHI::RHICreateTexture3D_RenderThread(FRHICommandListImmediate&, unsigned int, unsigned int, unsigned int, unsigned char, unsigned int, unsigned int, FRHIResourceCreateInfo&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/VulkanRHI/Public/VulkanDynamicRHI.h:284]
libUE4Editor-Engine.so!FDistanceFieldVolumeTextureAtlas::UpdateAllocations() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Engine/Private/DistanceFieldAtlas.cpp:407]
libUE4Editor-Renderer.so!FDeferredShadingSceneRenderer::PrepareDistanceFieldScene(FRHICommandListImmediate&, bool) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/DeferredShadingRenderer.cpp:568]
libUE4Editor-Renderer.so!FDeferredShadingSceneRenderer::Render(FRHICommandListImmediate&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/DeferredShadingRenderer.cpp:1187]
libUE4Editor-Renderer.so!RenderViewFamily_RenderThread(FRHICommandListImmediate&, FSceneRenderer*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Renderer/Private/SceneRendering.cpp:3473]
libUE4Editor-Renderer.so!TEnqueueUniqueRenderCommandType<FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::FDrawSceneCommandName, FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::$_92>::DoTask(ENamedThreads::Type, TRefCountPtr<FGraphEvent> const&) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Public/RenderingThread.h:198]
libUE4Editor-Renderer.so!TGraphTask<TEnqueueUniqueRenderCommandType<FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::FDrawSceneCommandName, FRendererModule::BeginRenderingViewFamily(FCanvas*, FSceneViewFamily*)::$_92> >::ExecuteTask(TArray<FBaseGraphTask*, TSizedDefaultAllocator<32> >&, ENamedThreads::Type) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Public/Async/TaskGraphInterfaces.h:847]
libUE4Editor-Core.so!FNamedTaskThread::ProcessTasksNamedThread(int, bool) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/Async/TaskGraph.cpp:686]
libUE4Editor-Core.so!FNamedTaskThread::ProcessTasksUntilQuit(int) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/Async/TaskGraph.cpp:582]
libUE4Editor-RenderCore.so!RenderingThreadMain(FEvent*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Private/RenderingThread.cpp:339]
libUE4Editor-RenderCore.so!FRenderingThread::Run() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/RenderCore/Private/RenderingThread.cpp:488]
libUE4Editor-Core.so!FRunnableThreadPThread::Run() [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/HAL/PThreadRunnableThread.cpp:25]
libUE4Editor-Core.so!FRunnableThreadPThread::_ThreadProc(void*) [/home/thill/UnrealEngine_4.24/Engine/Source/Runtime/Core/Private/HAL/PThreadRunnableThread.h:177]
libpthread.so.0!UnknownFunction(0x76da)
libc.so.6!clone(+0x3e)


NEW LESSON! First time loading a level, Wait for the level to compile the distance feilds before you click
