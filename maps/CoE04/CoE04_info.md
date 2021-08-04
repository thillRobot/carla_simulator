# Information Page for custom CARLA map: CoE04 

## General Information 
map name: CoE04 (College of Engineering 03)
date created: April 15, 2021

This map covers the college of engineering at TNTech.

intended package: TNTech???

## Data Sources


### Map Bounding Box Latitude and Longitude

min lat (S): 36.1700  # This bounding box covers all TNTech campus. This is a big map for showing off, but it is too big for testing. 
max lat (N): 36.1800  
min lon (W):-85.5120  
max lon (E):-85.4980

min lat (S): 36.1713  # This bounding box covers the center of campus including CoE, Main Quad, Library. This is a medium...
max lat (N): 36.1796
min lon (W):-85.5088
max lon (E):-85.5018

min lat (S): 36.17450  # This bounding box covers the CoE and the Library. This is a small map for testing the workflow.
max lat (N): 36.17750  # This is the bounding box that will be used for CoE04.
min lon (W):-85.50800
max lon (E):-85.50500


### Origin

??? - This will be set in RoadRunner I think 

Download OpenStreetMap Data using JOSM or https://www.openstreetmap.org/

save single layer as CoE04.osm

convert .osm to with .xodr with carla (notice the weird paths, this is discussed in maps.md)

******@********:~/carla_simulator/carla/PythonAPI/carla$ python3 ../util/convert_osm_xodr.py 
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Intersecting left turns at junction '203380404' from lane '19585049#0_0' and lane '-19585049#5_0' (increase junction radius to avoid this).
Warning: Could not write OpenDRIVE geoReference. Only unshifted Coordinate systems are supported (offset=7684531.66,-4019288.35)




Downloaded Digital Elevation Model from http://www.tngis.org/lidar

CoE04 spans DEM tiles#: 2108661NE 2108661NW 2108661SW 2108661SE
centered around the engineering quad (Clement, Brown, Prescott, Bruner)



minimumHeight=  m
maximumHeight=  m



## QGIS
CRS: [EPSG:4326]
clipping 

road runner projection settings:

World:

XODR file:

OSM file:

XODR -> OSM offset correction. Applied in Road runner
x:
y:


files to be ingested into carla

map CoE04 is in package TNTech04
