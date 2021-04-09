# Information Page for custom CARLA map: CoE03 

## General Information 
map name: CoE03 (College of Engineering 03)

This map covers  

intended package: TNTECH03

data sources:


Map Bounding Box Latitude and Longitude:

min lat (S): 36.1700
max lat (N): 36.1800
min lon (W):-85.5120
max lon (E):-85.4980

origin:

Download OpenStreetMap Data using JOSM or https://www.openstreetmap.org/


save single layer as COE07.osm

conveted with netconvert

$ netconvert --osm maps/COE07/COE07.osm --opendrive-output maps/COE07/COE07.xodr --proj.plain-geo --osm.elevation
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Found sharp turn with radius 5.08 at the start of edge '-543974955#2'.
Warning: Found sharp turn with radius 8.25 at the end of edge '519457948'.
Warning: Found sharp turn with radius 5.08 at the end of edge '543974955#2'.
Warning: Could not write OpenDRIVE geoReference. Only unshifted Coordinate systems are supported (offset=-633584.56,-4003337.27)
Warning: Could not compute smooth shape for edge '519457931#1'.
Warning: Could not compute smooth shape for edge '519457948'.
Warning: Could not compute smooth shape from lane '519457948_0' to lane '519457932_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5065257090' to fix this.
Warning: Could not compute smooth shape from lane '-574606042#0_0' to lane '-574606040#2_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5515063755' to fix this.
Warning: Could not compute smooth shape from lane '574606040#2_0' to lane '574606042#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5515063755' to fix this.
Success.


Downloaded Digital Elevation Model from http://www.tngis.org/lidar

Downtown01 spans DEM tiles#: 2108661NE 2108661NW 2108661SW 2108661SE
centered around downtown Cookeville and dogwood park

DEM tile#: 2108669SW
shape file (?): 2108661NE.img 2108661NW.img 2108661SW.img 2108661SE.img
converted data to meters (this is not shown in geo-referencing CRS)
merged and clipped into: 2108661_2108669_meters_wgs84.tif and Downtown01.tif



minimumHeight=  m
maximumHeight=  m



## QGIS
CRS: [EPSG:4326]
clipping from layer 2108669SW_21086691NW

-85.509338269,-85.503937853,36.173239676,36.178266479 [EPSG:4326]


road runner projection settings:

World:
COMPD_CS["CompoundCS",PROJCS["unnamed",GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4326"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",36.163],PARAMETER["central_meridian",-85.502],PARAMETER["scale_factor",1],PARAMETER["false_easting",0],PARAMETER["false_northing",0],UNIT["metre",1]],VERT_CS["EGM96 geoid height",VERT_DATUM["EGM96 geoid",2005,EXTENSION["PROJ4_GRIDS","egm96_15.gtx"],AUTHORITY["EPSG","5171"]],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["Up",UP],AUTHORITY["EPSG","5773"]]]

XODR file:
COMPD_CS["CompoundCS",PROJCS["unnamed",GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4326"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",36.163],PARAMETER["central_meridian",-85.502],PARAMETER["scale_factor",1],PARAMETER["false_easting",0],PARAMETER["false_northing",0],UNIT["metre",1]],VERT_CS["EGM96 geoid height",VERT_DATUM["EGM96 geoid",2005,EXTENSION["PROJ4_GRIDS","egm96_15.gtx"],AUTHORITY["EPSG","5171"]],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["Up",UP],AUTHORITY["EPSG","5773"]]]

OSM file:
COMPD_CS["CompoundCS",GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4326"]],VERT_CS["EGM96 geoid height",VERT_DATUM["EGM96 geoid",2005,EXTENSION["PROJ4_GRIDS","egm96_15.gtx"],AUTHORITY["EPSG","5171"]],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["Up",UP],AUTHORITY["EPSG","5773"]]]

2108669_2108661_2108653_meters.tif was used for elevation data in roadrunner

XODR -> OSM offset correction. Applied in Road runner
x:-1381.000
y:-6441.000



files to be ingested into carla

COE01_blndr.fbx  renamed to COE01.fbx
COE01_rr4carla.xodr  renamed to COE01.xodr
COE01_rr4carla.rrdata.xml  renamed to COE01.rrdata.xml

map COE01 is in package TNTECH01
