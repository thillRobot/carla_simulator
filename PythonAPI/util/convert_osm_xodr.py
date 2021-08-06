#!/usr/bin/env python

# Copyright (c) 2019 Computer Vision Center (CVC) at the Universitat Autonoma de
# Barcelona (UAB).
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This script started as 'config.py' and has been modified by Tristan Hill
# Now it is 'convert_osm_xodr.py' and it comes from the sample code provided 
# in the CARLA docs (here)[https://carla.readthedocs.io/en/0.9.11/tuto_G_openstreetmap/]

"""
Configure and inspect an instance of CARLA Simulator.

For further details, visit
https://carla.readthedocs.io/en/latest/configuring_the_simulation/
"""

import glob
import os
import sys

try:
    sys.path.append(glob.glob('../carla/dist/carla-*%d.%d-%s.egg' % (
        sys.version_info.major,
        sys.version_info.minor,
        'win-amd64' if os.name == 'nt' else 'linux-x86_64'))[0])
except IndexError:
    pass

import carla

# Read the .osm data # the paths are very strange I know, I need to look into this again
#f = open("../../../maps/CoE04/CoE04.osm", 'r') # Windows will need to encode the file in UTF-8. Read the note below. 
f = open("../../../maps/Campus02/Campus02_modified_for_Carla.osm", 'r')
osm_data = f.read()
f.close()

# Define the desired settings. In this case, default values.
settings = carla.Osm2OdrSettings()
# Convert to .xodr
xodr_data = carla.Osm2Odr.convert(osm_data, settings)

# save opendrive file
#f = open("../../../maps/CoE04/CoE04_CARLA.xodr", 'w')
f = open("../../../maps/Campus02/Campus02_CARLA.xodr", 'w')
f.write(xodr_data)
f.close()