docker run -it \
    --name="sumo_container" \
    --runtime=nvidia \
    sumo \
    netconvert --osm /$CARLA_WS/carla_simulator/maps/Campus03/Campus03.osm --opendrive-output /$CARLA_WS/carla_simulator/maps/Campus03/Campus03.xodr --proj.plain-geo --osm.elevation
