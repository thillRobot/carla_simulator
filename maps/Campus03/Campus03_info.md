# Campus03_info

## Map Information 
map name: Campus03 
this map covers the entire TNTECH campus

intended package name: TNTECH03

data sources:

Map Bounding Box Latitude and Longitude (verified for Campus03)

min lat (S): 36.1700
max lat (N): 36.1800
min lon (W):-85.5120
max lon (E):-85.5020

origin:

Download OpenStreetMap Data using  https://www.openstreetmap.org/ 

.osm downloaded 02/23/2022, export and save as Campus03.osm


## Consversion from OSM to XODR
conveted with netconvert from sumo

```
~/carla_simulator$ netconvert --osm maps/Campus03/Campus03.osm --opendrive-output maps/Campus03/Campus03.xodr --proj.plain-geo --osm.elevation
Warning: Environment variable SUMO_HOME is not set, schema resolution will use slow website lookups.
Warning: Environment variable SUMO_HOME is not set, using built in type maps.
Warning: Discarding unknown compound 'usage.branch' in type 'railway.rail|usage.branch' (first occurence for edge '286697763').
Warning: Discarding unusable type 'waterway.drain' (first occurence for edge '471891054').
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Discarding unknown compound 'cycleway.lane' in type 'cycleway.lane|cycleway.lane|highway.residential' (first occurence for edge '574210687').
Warning: Ambiguity in turnarounds computation at junction '4900047672'.
Warning: Ambiguity in turnarounds computation at junction '4900047687'.
Warning: Found sharp turn with radius 6.61 at the start of edge '-19585049#3'.
Warning: Found sharp turn with radius 4.86 at the start of edge '-518680621#1'.
Warning: Found sharp turn with radius 5.08 at the start of edge '-543974955#2'.
Warning: Found sharp turn with radius 5.02 at the start of edge '-607064334#11'.
Warning: Found sharp turn with radius 8.04 at the start of edge '-607064334#3'.
Warning: Found sharp turn with radius 8.25 at the end of edge '519457948'.
Warning: Found sharp turn with radius 5.08 at the end of edge '543974955#2'.
Warning: Found sharp turn with radius 7.70 at the end of edge '550010100#0'.
Warning: Found sharp turn with radius 8.44 at the end of edge '550010100#1'.
Warning: Found sharp turn with radius 3.18 at the end of edge '574210689#1'.
Warning: Minor green from edge '-19584048#12' to edge '-543974951#8' exceeds 19.44m/s. Maybe a left-turn lane is missing.
Warning: Minor green from edge '19584048#11' to edge '111561261#0' exceeds 19.44m/s. Maybe a left-turn lane is missing.
Warning: Minor green from edge '-111561261#0' to edge '19584048#12' exceeds 19.44m/s. Maybe a left-turn lane is missing.
Warning: Minor green from edge '-19584048#4' to edge '-556046622#11' exceeds 19.44m/s. Maybe a left-turn lane is missing.
Warning: Minor green from edge '19584048#3' to edge '556046622#12' exceeds 19.44m/s. Maybe a left-turn lane is missing.
Warning: Intersecting left turns at junction '203336397' from lane '528255675#3_0' and lane '-528255675#4_0' (increase junction radius to avoid this).
Warning: Speed of straight connection '19589438#1_0->556046628#2_0' reduced by 5.30 due to turning radius of 13.40 (length=3.87, angle=32.59).
Warning: Speed of straight connection '-556046622#0_0->556046628#0_0' reduced by 5.86 due to turning radius of 11.74 (length=3.27, angle=32.15).
Warning: Speed of straight connection '-19585049#4_0->-19585049#3_0' reduced by 5.25 due to turning radius of 13.57 (length=1.66, angle=22.47).
Warning: Could not compute smooth shape for edge '-550640109'.
Warning: Could not compute smooth shape for edge '519457931#1'.
Warning: Could not compute smooth shape for edge '519457948'.
Warning: Could not compute smooth shape for edge '550640109'.
Warning: Could not compute smooth shape from lane '188778990#1_0' to lane '188778988#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '1994055100' to fix this.
Warning: Could not compute smooth shape from lane '519457948_0' to lane '519457932_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5065257090' to fix this.
Warning: Could not compute smooth shape from lane '-528255675#24_0' to lane '550010101#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5312847033' to fix this.
Warning: Could not compute smooth shape from lane '-550010117_0' to lane '550010116_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5312847082' to fix this.
Warning: Could not compute smooth shape from lane '574210689#1_0' to lane '574210691#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5512522054' to fix this.
Warning: Could not compute smooth shape from lane '-574606042#0_0' to lane '-574606040#2_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5515063755' to fix this.
Warning: Could not compute smooth shape from lane '574606040#2_0' to lane '574606042#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '5515063755' to fix this.
Warning: Could not compute smooth shape from lane '1026804367_0' to lane '1026804366#0_0'. Use option 'junctions.scurve-stretch' or increase radius of junction '9466853626' to fix this.
Warning: 6 total messages of type: Found sharp turn with radius % at the end of edge '%'.
Warning: 10 total messages of type: Found sharp turn with radius % at the start of edge '%'.
Warning: 7 total messages of type: Minor green from edge '%' to edge '%' exceeds %m/s. Maybe a left-turn lane is missing.
Success.
```

## Elevation Model

Digital Elevation Model downloaded from http://www.tngis.org/lidar

Campus03 spans DEM tiles#: 2108661NW 2108661NE 2108669SW 2108661SE

these dem tiles have been combined into a single QGIS project putnam_dem_2108669_2108661_2108653.qgz 

converted data to meters (this is not shown in geo-referencing CRS)

merged and clipped into: 


minimumHeight=  (m)
maximumHeight=  (m)


-85.52560, 36.18229
-85.47831, 36.16013

Coordinate Reference Systems

Geographics Coordinate CRS [EPSG:4326]: 

WGS 84
WKT
GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4326"]]
Proj4
+proj=longlat +datum=WGS84 +no_defs
Extent
-180.00, -90.00, 180.00, 90.00

Custom CRS:

WKT
PROJCS["unnamed",GEOGCS["GRS 1980(IUGG, 1980)",DATUM["unknown",SPHEROID["GRS80",6378137,298.257222101],TOWGS84[0,0,0,0,0,0,0]],PRIMEM["Greenwich",0],UNIT["degree",0.0174532925199433]],PROJECTION["Lambert_Conformal_Conic_2SP"],PARAMETER["standard_parallel_1",35.25],PARAMETER["standard_parallel_2",36.41666666666666],PARAMETER["latitude_of_origin",34.33333333333334],PARAMETER["central_meridian",-86],PARAMETER["false_easting",1968500],PARAMETER["false_northing",0],UNIT["Foot_US",0.3048006096012192]]
Proj4
+proj=lcc +lat_1=35.25 +lat_2=36.41666666666666 +lat_0=34.33333333333334 +lon_0=-86 +x_0=600000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=us-ft +no_defs
Extent
Extent not known


## Processing in Roadrunner 

This step not yet completed for Campus03

road runner projection settings:

World:


XODR file:

OSM file:

2108669_2108661_2108653_meters.tif to be used for elevation data in roadrunner

XODR -> OSM offset correction. Applied in Road runner
x:
y:


get buildings from blender-osm


files to be ingested into carla 

Campus03_buildings_roads.fbx  renamed to Campus03.fbx
Campus03_rr4carla.xodr  renamed to Campus03.xodr
Campus03_rr4carla.rrdata.xml  renamed to Campus03.rrdata.xml

