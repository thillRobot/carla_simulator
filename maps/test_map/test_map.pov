/*
 * This file was created by OSM2World 0.3.0-dev - http://osm2world.org
 * 
 * Make sure that a "osm2world_definitions.inc" file exists!
 * You can start with the one in the "resources" folder from your
 * OSM2World installation or even just create an empty file.
 */

#include "textures.inc"
#include "colors.inc"
#include "osm2world_definitions.inc"

camera {
  location <-5.696807539682542, 1249.9999534338722, -1301.0445228783167>
  look_at  <-5.696807539682542, 0.0, -51.044569444444434>
  sky <0.0, 0.7071067811865476, 0.7071067811865476>
}

//
// global scene parameters
//

global_settings { ambient_light rgb <1.000000,1.000000,1.000000> }
light_source{ <100000.000000,150000.000000,-100000.000000> color rgb <1.000000,1.000000,1.000000> parallel point_at <0,0,0> fade_power 0 }

#ifndef (season)
#declare season = summer
#end

#ifndef (time)
#declare time = day
#end

//
// material and object definitions
//

#ifndef (sky_sphere_def)
#declare sky_sphere_def = sky_sphere {
 pigment { Blue_Sky3 }
} 
#end

sky_sphere {sky_sphere_def}

#ifndef (texture_SIGN_DE_114)
#declare texture_SIGN_DE_114 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TELEKOM_MANGENTA)
#declare texture_TELEKOM_MANGENTA =   texture {
    pigment { color rgb <0.8823529481887817, 0.0, 0.45490196347236633> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_FENCE_DEFAULT)
#declare texture_FENCE_DEFAULT =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_105_10)
#declare texture_SIGN_DE_105_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_151)
#declare texture_SIGN_DE_151 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SKYBOX)
#declare texture_SKYBOX =   texture {
    pigment { color rgb <0.0, 0.0, 0.003921568859368563> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_STEEL)
#declare texture_STEEL =   texture {
    pigment { color rgb <0.7843137383460999, 0.7843137383460999, 0.7843137383460999> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_SINGLES_ASPHALT)
#declare texture_PITCH_TENNIS_SINGLES_ASPHALT =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GRAVEL)
#declare texture_GRAVEL =   texture {
    pigment { color rgb <0.4000000059604645, 0.4000000059604645, 0.4000000059604645> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GRASS_PAVER)
#declare texture_GRASS_PAVER =   texture {
    pigment { color rgb <0.3019607961177826, 0.501960813999176, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_POWER_TOWER_HORIZONTAL)
#declare texture_POWER_TOWER_HORIZONTAL =   texture {
    pigment { color rgb <0.7019608020782471, 0.7019608020782471, 0.7019608020782471> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_ADVERTISING_POSTER)
#declare texture_ADVERTISING_POSTER =   texture {
    pigment { color rgb <1.0, 1.0, 0.800000011920929> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_POSTBOX_ROYALMAIL)
#declare texture_POSTBOX_ROYALMAIL =   texture {
    pigment { color rgb <0.800000011920929, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_22)
#declare texture_SIGN_DE_101_22 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_SINGLES_CLAY)
#declare texture_PITCH_TENNIS_SINGLES_CLAY =   texture {
    pigment { color rgb <0.800000011920929, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROOF_DEFAULT)
#declare texture_ROOF_DEFAULT =   texture {
    pigment { color rgb <0.800000011920929, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_FLAGCLOTH)
#declare texture_FLAGCLOTH =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GRASS)
#declare texture_GRASS =   texture {
    pigment { color rgb <0.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_13)
#declare texture_SIGN_DE_101_13 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_102)
#declare texture_SIGN_DE_102 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_103_20)
#declare texture_SIGN_DE_103_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_SINGLES_GRASS)
#declare texture_PITCH_TENNIS_SINGLES_GRASS =   texture {
    pigment { color rgb <0.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_121_10)
#declare texture_SIGN_DE_121_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_138_20)
#declare texture_SIGN_DE_138_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_117_20)
#declare texture_SIGN_DE_117_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GARAGE_DOORS)
#declare texture_GARAGE_DOORS =   texture {
    pigment { color rgb <1.0, 0.9019607901573181, 0.5490196347236633> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_14)
#declare texture_SIGN_DE_101_14 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_138_10)
#declare texture_SIGN_DE_138_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SAND)
#declare texture_SAND =   texture {
    pigment { color rgb <0.9450980424880981, 0.9137254953384399, 0.3137255012989044> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BRIDGE_DEFAULT)
#declare texture_BRIDGE_DEFAULT =   texture {
    pigment { color rgb <0.501960813999176, 0.501960813999176, 0.501960813999176> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_133_10)
#declare texture_SIGN_DE_133_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_10)
#declare texture_SIGN_DE_101_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_108_10)
#declare texture_SIGN_DE_108_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PLASTIC)
#declare texture_PLASTIC =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_301)
#declare texture_SIGN_DE_301 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_ASPHALT)
#declare texture_PITCH_TENNIS_ASPHALT =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_25)
#declare texture_SIGN_DE_101_25 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_RAIL_DEFAULT)
#declare texture_RAIL_DEFAULT =   texture {
    pigment { color rgb <0.7529411911964417, 0.7529411911964417, 0.7529411911964417> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_UNHEWN_COBBLESTONE)
#declare texture_UNHEWN_COBBLESTONE =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_53)
#declare texture_SIGN_DE_101_53 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_ARROW_RIGHT)
#declare texture_ROAD_MARKING_ARROW_RIGHT =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_COBBLESTONE)
#declare texture_COBBLESTONE =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PLASTIC_GREY)
#declare texture_PLASTIC_GREY =   texture {
    pigment { color rgb <0.7215686440467834, 0.7215686440467834, 0.7215686440467834> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_STEPS_DEFAULT)
#declare texture_STEPS_DEFAULT =   texture {
    pigment { color rgb <0.250980406999588, 0.250980406999588, 0.250980406999588> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_54)
#declare texture_SIGN_DE_101_54 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_SOCCER)
#declare texture_PITCH_SOCCER =   texture {
    pigment { color rgb <0.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TERRAIN_DEFAULT)
#declare texture_TERRAIN_DEFAULT =   texture {
    pigment { color rgb <0.0, 1.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_EARTH)
#declare texture_EARTH =   texture {
    pigment { color rgb <0.3019607961177826, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_POWER_TOWER_VERTICAL)
#declare texture_POWER_TOWER_VERTICAL =   texture {
    pigment { color rgb <0.7019608020782471, 0.7019608020782471, 0.7019608020782471> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_SIGN_DE_250)
#declare texture_SIGN_DE_250 =   texture {
    pigment { color rgb <1.0, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TREE_TRUNK)
#declare texture_TREE_TRUNK =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_136_20)
#declare texture_SIGN_DE_136_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_WOOD)
#declare texture_WOOD =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TREE_BILLBOARD_CONIFEROUS)
#declare texture_TREE_BILLBOARD_CONIFEROUS =   texture {
    pigment { color rgb <0.0, 0.501960813999176, 0.0> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_ROAD_MARKING_ARROW_RIGHT_LEFT)
#declare texture_ROAD_MARKING_ARROW_RIGHT_LEFT =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TREE_BILLBOARD_BROAD_LEAVED_FRUIT)
#declare texture_TREE_BILLBOARD_BROAD_LEAVED_FRUIT =   texture {
    pigment { color rgb <0.0, 0.501960813999176, 0.0> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_SIGN_DE_133_20)
#declare texture_SIGN_DE_133_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_52)
#declare texture_SIGN_DE_101_52 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_FIREHYDRANT)
#declare texture_FIREHYDRANT =   texture {
    pigment { color rgb <0.800000011920929, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_136_10)
#declare texture_SIGN_DE_136_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_145)
#declare texture_SIGN_DE_145 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_123)
#declare texture_SIGN_DE_123 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_ARROW_THROUGH)
#declare texture_ROAD_MARKING_ARROW_THROUGH =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_103_10)
#declare texture_SIGN_DE_103_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TREE_CROWN)
#declare texture_TREE_CROWN =   texture {
    pigment { color rgb <0.0, 0.501960813999176, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_24)
#declare texture_SIGN_DE_101_24 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_WALL_GABION)
#declare texture_WALL_GABION =   texture {
    pigment { color rgb <0.501960813999176, 0.501960813999176, 0.501960813999176> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_55)
#declare texture_SIGN_DE_101_55 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_131)
#declare texture_SIGN_DE_131 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_GRASS)
#declare texture_PITCH_TENNIS_GRASS =   texture {
    pigment { color rgb <0.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GRITBIN_DEFAULT)
#declare texture_GRITBIN_DEFAULT =   texture {
    pigment { color rgb <0.3019607961177826, 0.501960813999176, 0.4000000059604645> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ASPHALT)
#declare texture_ASPHALT =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BRICK)
#declare texture_BRICK =   texture {
    pigment { color rgb <1.0, 0.501960813999176, 0.250980406999588> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_121_20)
#declare texture_SIGN_DE_121_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PAVING_STONE)
#declare texture_PAVING_STONE =   texture {
    pigment { color rgb <0.4000000059604645, 0.4000000059604645, 0.4000000059604645> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GLASS)
#declare texture_GLASS =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TARTAN)
#declare texture_TARTAN =   texture {
    pigment { color rgb <0.8078431487083435, 0.4274509847164154, 0.3529411852359772> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SOLAR_PANEL)
#declare texture_SOLAR_PANEL =   texture {
    pigment { color rgb <0.0, 0.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_WATER)
#declare texture_WATER =   texture {
    pigment { color rgb <0.0, 0.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_120)
#declare texture_SIGN_DE_120 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_625_21)
#declare texture_SIGN_DE_625_21 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_110_12)
#declare texture_SIGN_DE_110_12 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_KERB)
#declare texture_KERB =   texture {
    pigment { color rgb <0.4000000059604645, 0.4000000059604645, 0.4000000059604645> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ENTRANCE_DEFAULT)
#declare texture_ENTRANCE_DEFAULT =   texture {
    pigment { color rgb <0.20000000298023224, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_RAIL_SLEEPER_DEFAULT)
#declare texture_RAIL_SLEEPER_DEFAULT =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SPLIT_RAIL_FENCE)
#declare texture_SPLIT_RAIL_FENCE =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BRIDGE_PILLAR_DEFAULT)
#declare texture_BRIDGE_PILLAR_DEFAULT =   texture {
    pigment { color rgb <0.501960813999176, 0.501960813999176, 0.501960813999176> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_DASHED)
#declare texture_ROAD_MARKING_DASHED =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_12)
#declare texture_SIGN_DE_101_12 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_15)
#declare texture_SIGN_DE_101_15 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_625_11)
#declare texture_SIGN_DE_625_11 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SETT)
#declare texture_SETT =   texture {
    pigment { color rgb <0.3019607961177826, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_51)
#declare texture_SIGN_DE_101_51 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_206)
#declare texture_SIGN_DE_206 =   texture {
    pigment { color rgb <1.0, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BUILDING_DEFAULT)
#declare texture_BUILDING_DEFAULT =   texture {
    pigment { color rgb <1.0, 0.9019607901573181, 0.5490196347236633> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_RAIL_BALLAST_DEFAULT)
#declare texture_RAIL_BALLAST_DEFAULT =   texture {
    pigment { color rgb <0.250980406999588, 0.250980406999588, 0.250980406999588> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING)
#declare texture_ROAD_MARKING =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_RED_ROAD_MARKING)
#declare texture_RED_ROAD_MARKING =   texture {
    pigment { color rgb <0.6000000238418579, 0.3019607961177826, 0.3019607961177826> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_HEDGE)
#declare texture_HEDGE =   texture {
    pigment { color rgb <0.0, 0.501960813999176, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_METAL_FENCE_POST)
#declare texture_METAL_FENCE_POST =   texture {
    pigment { color rgb <0.7372549176216125, 0.7764706015586853, 0.800000011920929> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_CHAIN_LINK_FENCE)
#declare texture_CHAIN_LINK_FENCE =   texture {
    pigment { color rgb <0.7372549176216125, 0.7764706015586853, 0.800000011920929> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_21)
#declare texture_SIGN_DE_101_21 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_112)
#declare texture_SIGN_DE_112 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TREE_BILLBOARD_BROAD_LEAVED)
#declare texture_TREE_BILLBOARD_BROAD_LEAVED =   texture {
    pigment { color rgb <0.0, 0.501960813999176, 0.0> }
    finish {
      ambient 1.0
      diffuse 0.0
    }
  }
#end

#ifndef (texture_SIGN_DE_105_20)
#declare texture_SIGN_DE_105_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_TENNIS_CLAY)
#declare texture_PITCH_TENNIS_CLAY =   texture {
    pigment { color rgb <0.800000011920929, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_ARROW_THROUGH_RIGHT)
#declare texture_ROAD_MARKING_ARROW_THROUGH_RIGHT =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TUNNEL_DEFAULT)
#declare texture_TUNNEL_DEFAULT =   texture {
    pigment { color rgb <0.501960813999176, 0.501960813999176, 0.501960813999176> }
    finish {
      ambient 0.2
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_125)
#declare texture_SIGN_DE_125 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PEBBLESTONE)
#declare texture_PEBBLESTONE =   texture {
    pigment { color rgb <0.4000000059604645, 0.4000000059604645, 0.4000000059604645> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_WALL_DEFAULT)
#declare texture_WALL_DEFAULT =   texture {
    pigment { color rgb <0.501960813999176, 0.501960813999176, 0.501960813999176> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PURIFIED_WATER)
#declare texture_PURIFIED_WATER =   texture {
    pigment { color rgb <0.0, 0.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_ZEBRA)
#declare texture_ROAD_MARKING_ZEBRA =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_117_10)
#declare texture_SIGN_DE_117_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_HANDRAIL_DEFAULT)
#declare texture_HANDRAIL_DEFAULT =   texture {
    pigment { color rgb <0.7529411911964417, 0.7529411911964417, 0.7529411911964417> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_ROAD_MARKING_CROSSING)
#declare texture_ROAD_MARKING_CROSSING =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_GLASS_ROOF)
#declare texture_GLASS_ROOF =   texture {
    pigment { color rgb <0.9019607901573181, 0.9019607901573181, 0.9019607901573181> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PLASTIC_BLACK)
#declare texture_PLASTIC_BLACK =   texture {
    pigment { color rgb <0.0, 0.0, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_142_10)
#declare texture_SIGN_DE_142_10 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_POSTBOX_DEUTSCHEPOST)
#declare texture_POSTBOX_DEUTSCHEPOST =   texture {
    pigment { color rgb <1.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_TENNIS_NET)
#declare texture_TENNIS_NET =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BUS_STOP_SIGN)
#declare texture_BUS_STOP_SIGN =   texture {
    pigment { color rgb <0.9803921580314636, 0.9019607901573181, 0.05098039284348488> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_PITCH_BEACHVOLLEYBALL)
#declare texture_PITCH_BEACHVOLLEYBALL =   texture {
    pigment { color rgb <0.9450980424880981, 0.9137254953384399, 0.3137255012989044> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_11)
#declare texture_SIGN_DE_101_11 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_23)
#declare texture_SIGN_DE_101_23 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_BUILDING_WINDOWS)
#declare texture_BUILDING_WINDOWS =   texture {
    pigment { color rgb <1.0, 0.9019607901573181, 0.5490196347236633> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_METAL_FENCE)
#declare texture_METAL_FENCE =   texture {
    pigment { color rgb <0.7372549176216125, 0.7764706015586853, 0.800000011920929> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_124)
#declare texture_SIGN_DE_124 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_142_20)
#declare texture_SIGN_DE_142_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SCRUB)
#declare texture_SCRUB =   texture {
    pigment { color rgb <0.0, 0.800000011920929, 0.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101)
#declare texture_SIGN_DE_101 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_CONCRETE)
#declare texture_CONCRETE =   texture {
    pigment { color rgb <0.5490196347236633, 0.5490196347236633, 0.5490196347236633> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_WOOD_WALL)
#declare texture_WOOD_WALL =   texture {
    pigment { color rgb <0.3019607961177826, 0.20000000298023224, 0.20000000298023224> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end

#ifndef (texture_SIGN_DE_101_20)
#declare texture_SIGN_DE_101_20 =   texture {
    pigment { color rgb <1.0, 1.0, 1.0> }
    finish {
      ambient 0.5
      diffuse 0.5
    }
  }
#end



//
//Map data
//

mesh {
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <110.34076592212647, 0.0, 45.114980247329>, <110.25637142433875, 0.0, 44.118547826768946>}
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <110.25637142433875, 0.0, 44.118547826768946>, <110.44093571442818, 0.0, 43.89441021449429>}
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <110.44093571442818, 0.0, 43.89441021449429>, <111.43504919795336, 0.0, 43.78606640122647>}
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <111.43504919795336, 0.0, 43.78606640122647>, <111.57970923130263, 0.0, 45.2272912031078>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-111.56009026738944, 0.0, -55.969867648935214>, <-112.81052607347087, 0.0, -55.6502390093004>, <-113.16528715777545, 0.0, -59.63447602196205>}
  triangle { <-111.56009026738944, 0.0, -55.969867648935214>, <-113.16528715777545, 0.0, -59.63447602196205>, <-111.83024020556641, 0.0, -59.55883514775651>}
  triangle { <-111.56009026738944, 0.0, -55.969867648935214>, <-111.83024020556641, 0.0, -59.55883514775651>, <-110.83312747133058, 0.0, -59.63477061525853>}
  triangle { <-111.56009026738944, 0.0, -55.969867648935214>, <-110.83312747133058, 0.0, -59.63477061525853>, <-109.61305123195578, 0.0, -59.978565632009314>}
  triangle { <-109.61305123195578, 0.0, -59.978565632009314>, <-109.19652055292772, 0.0, -56.00031197073677>, <-110.56284572975646, 0.0, -56.0440520958306>}
  triangle { <-111.56009026738944, 0.0, -55.969867648935214>, <-109.61305123195578, 0.0, -59.978565632009314>, <-110.56284572975646, 0.0, -56.0440520958306>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-90.68754108655588, 0.0, 77.84277041559568>, <-91.53523398837598, 0.0, 69.78724914605553>}
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-91.53523398837598, 0.0, 69.78724914605553>, <-89.27917553462966, 0.0, 69.30101117996732>}
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-89.27917553462966, 0.0, 69.30101117996732>, <-85.30167381355933, 0.0, 68.87736031087518>}
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-85.30167381355933, 0.0, 68.87736031087518>, <-82.98225227974177, 0.0, 68.88740737422106>}
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-82.98225227974177, 0.0, 68.88740737422106>, <-82.13493112080187, 0.0, 76.94296775407187>}
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-82.13493112080187, 0.0, 76.94296775407187>, <-84.36100540574846, 0.0, 77.41090532774143>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <99.93933971458253, 0.0, 57.81381279408079>, <99.09346372459464, 0.0, 49.75810053572823>}
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <99.09346372459464, 0.0, 49.75810053572823>, <101.3419623813609, 0.0, 49.288264847232604>}
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <101.3419623813609, 0.0, 49.288264847232604>, <105.32060280686284, 0.0, 48.87544483250243>}
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <105.32060280686284, 0.0, 48.87544483250243>, <107.85873635690892, 0.0, 51.445548776392855>}
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <107.85873635690892, 0.0, 51.445548776392855>, <108.18790596043023, 0.0, 54.226132726768896>}
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <108.18790596043023, 0.0, 54.226132726768896>, <106.22602551738731, 0.0, 57.37645773874482>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-1.9465880416623318, 0.0, 14.05463604467667>, <-2.061819593820343, 0.0, 13.061297386721964>}
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-2.061819593820343, 0.0, 13.061297386721964>, <-1.847620240077955, 0.0, 12.799468058341455>}
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-1.847620240077955, 0.0, 12.799468058341455>, <-0.8511429753014443, 0.0, 12.715604712453493>}
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-0.8511429753014443, 0.0, 12.715604712453493>, <-0.7302170398465927, 0.0, 14.150397349911819>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-2.2429343832178295, 0.0, 10.526376768118714>, <-2.3592853394811812, 0.0, 9.533168605155579>}
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-2.3592853394811812, 0.0, 9.533168605155579>, <-0.9259266975239869, 0.0, 9.369195689870363>}
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-0.9259266975239869, 0.0, 9.369195689870363>, <-0.8149656806784428, 0.0, 10.3630204494435>}
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-0.8149656806784428, 0.0, 10.3630204494435>, <-1.027379759922045, 0.0, 10.621531941658544>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-3.5479455615124325, 0.0, 10.886637201342852>, <-3.773117518037493, 0.0, 10.702896248682935>, <-3.885723625979062, 0.0, 9.709256543128527>}
  triangle { <-3.5479455615124325, 0.0, 10.886637201342852>, <-3.885723625979062, 0.0, 9.709256543128527>, <-2.4570656167821703, 0.0, 9.544623231881285>}
  triangle { <-3.5479455615124325, 0.0, 10.886637201342852>, <-2.4570656167821703, 0.0, 9.544623231881285>, <-2.3407146605188185, 0.0, 10.53783139484442>}
  triangle { <-3.5479455615124325, 0.0, 10.886637201342852>, <-2.3407146605188185, 0.0, 10.53783139484442>, <-2.551912796613685, 0.0, 10.797649948052525>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.74642127504232, 0.0, -64.5748942312397>, <89.39644926401834, 0.0, -65.83335442445888>, <93.37495070153722, 0.0, -66.2475117757884>}
  triangle { <89.85438923031238, 0.0, -63.580739856590164>, <89.74642127504232, 0.0, -64.5748942312397>, <93.37495070153722, 0.0, -66.2475117757884>}
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <89.85438923031238, 0.0, -63.580739856590164>, <93.37495070153722, 0.0, -66.2475117757884>}
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <93.37495070153722, 0.0, -66.2475117757884>, <93.28498227285056, 0.0, -64.96082245343491>}
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <93.28498227285056, 0.0, -64.96082245343491>, <93.39385566935897, 0.0, -63.96676682947179>}
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <93.39385566935897, 0.0, -63.96676682947179>, <93.74302511519976, 0.0, -62.70591505759037>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <82.71387511384249, 0.0, -62.80440130148781>, <82.6047280379495, 0.0, -63.79842691273935>}
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <82.6047280379495, 0.0, -63.79842691273935>, <82.80490638413478, 0.0, -64.04587780108324>}
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <82.80490638413478, 0.0, -64.04587780108324>, <83.79980336103797, 0.0, -64.14677381363512>}
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <83.79980336103797, 0.0, -64.14677381363512>, <84.03680715611345, 0.0, -63.95481411338165>}
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <84.03680715611345, 0.0, -63.95481411338165>, <84.14477511138351, 0.0, -62.96065973873211>}
  triangle { <82.94934387612801, 0.0, -62.61369924896554>, <84.14477511138351, 0.0, -62.96065973873211>, <83.94435248285257, 0.0, -62.713488389376955>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <46.555992470524394, 0.0, 67.41872978374406>, <46.45986328828753, 0.0, 66.42336091728174>}
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <46.45986328828753, 0.0, 66.42336091728174>, <48.99309469101316, 0.0, 66.14865450170379>}
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <48.99309469101316, 0.0, 66.14865450170379>, <49.1125687868007, 0.0, 67.14149181991647>}
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <49.1125687868007, 0.0, 67.14149181991647>, <49.08802260944486, 0.0, 67.22543990264906>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <101.19788509480532, 0.0, 112.47634672123608>, <100.24266646645738, 0.0, 110.67893691042251>, <100.87793906184525, 0.0, 109.90664892686381>}
  triangle { <101.19788509480532, 0.0, 112.47634672123608>, <100.87793906184525, 0.0, 109.90664892686381>, <100.95038617307752, 0.0, 109.86814035252016>}
  triangle { <101.19788509480532, 0.0, 112.47634672123608>, <100.95038617307752, 0.0, 109.86814035252016>, <101.94590679320366, 0.0, 109.77359568104859>}
  triangle { <101.19788509480532, 0.0, 112.47634672123608>, <101.94590679320366, 0.0, 109.77359568104859>, <102.19342026301715, 0.0, 112.38195536117878>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <74.48351974527664, 0.0, 89.4487916493006>, <73.37240051246384, 0.0, 88.53272336337183>, <74.00857820080346, 0.0, 87.76118078589546>}
  triangle { <74.48351974527664, 0.0, 89.4487916493006>, <74.00857820080346, 0.0, 87.76118078589546>, <74.30403006659941, 0.0, 87.7303386437048>}
  triangle { <74.48351974527664, 0.0, 89.4487916493006>, <74.30403006659941, 0.0, 87.7303386437048>, <75.08583791052774, 0.0, 88.35385808620207>}
  triangle { <74.48351974527664, 0.0, 89.4487916493006>, <75.08583791052774, 0.0, 88.35385808620207>, <75.11960787127826, 0.0, 88.67717523166829>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <58.371201058528236, 0.0, 76.1634404883529>, <56.380256627076214, 0.0, 74.52320479981013>, <57.01578639536242, 0.0, 73.75112843466088>}
  triangle { <58.371201058528236, 0.0, 76.1634404883529>, <57.01578639536242, 0.0, 73.75112843466088>, <57.09204742282123, 0.0, 73.71130620920036>}
  triangle { <58.371201058528236, 0.0, 76.1634404883529>, <57.09204742282123, 0.0, 73.71130620920036>, <58.08881943941066, 0.0, 73.63102204548025>}
  triangle { <58.371201058528236, 0.0, 76.1634404883529>, <58.08881943941066, 0.0, 73.63102204548025>, <59.00737874686785, 0.0, 75.39189791087654>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <56.28296582179841, 0.0, 66.27863474708181>, <56.163491726010875, 0.0, 65.28579742886913>}
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <56.163491726010875, 0.0, 65.28579742886913>, <56.34046861676846, 0.0, 65.05172277005454>}
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <56.34046861676846, 0.0, 65.05172277005454>, <57.32828070325701, 0.0, 64.89607161590797>}
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <57.32828070325701, 0.0, 64.89607161590797>, <57.61548817116579, 0.0, 65.11417341871152>}
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <57.61548817116579, 0.0, 65.11417341871152>, <57.730776601395625, 0.0, 66.10750547691518>}
  triangle { <56.50822142991099, 0.0, 66.46278563770623>, <57.730776601395625, 0.0, 66.10750547691518>, <57.50499344650042, 0.0, 66.38250147398612>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <37.93377647051044, 0.0, 68.25143271536854>, <36.534239775385046, 0.0, 68.40370802832645>, <36.41405335278705, 0.0, 67.41095668794806>}
  triangle { <37.93377647051044, 0.0, 68.25143271536854>, <36.41405335278705, 0.0, 67.41095668794806>, <36.59809701757529, 0.0, 67.17651436694916>}
  triangle { <37.93377647051044, 0.0, 68.25143271536854>, <36.59809701757529, 0.0, 67.17651436694916>, <37.59099756499581, 0.0, 67.05756688722786>}
  triangle { <37.93377647051044, 0.0, 68.25143271536854>, <37.59099756499581, 0.0, 67.05756688722786>, <37.83764728827357, 0.0, 67.25606384890622>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.04033365139865, 0.0, -5.922312744980268>, <104.45913841769284, 0.0, -10.87520926097754>, <105.45311556406044, 0.0, -10.984796817291814>}
  triangle { <105.04033365139865, 0.0, -5.922312744980268>, <105.45311556406044, 0.0, -10.984796817291814>, <105.68935264675173, 0.0, -11.274250804150888>}
  triangle { <105.04033365139865, 0.0, -5.922312744980268>, <105.68935264675173, 0.0, -11.274250804150888>, <107.87697709633366, 0.0, -9.526595517613373>}
  triangle { <105.04033365139865, 0.0, -5.922312744980268>, <107.87697709633366, 0.0, -9.526595517613373>, <106.03267866517912, 0.0, -6.045809196852633>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <103.33740614392502, 0.0, -21.049505339545547>, <102.9628983575437, 0.0, -24.449024258809313>, <103.95689425271065, 0.0, -24.558441626677688>}
  triangle { <103.33740614392502, 0.0, -21.049505339545547>, <103.95689425271065, 0.0, -24.558441626677688>, <104.47167896851474, 0.0, -24.854366894342284>}
  triangle { <103.33740614392502, 0.0, -21.049505339545547>, <104.47167896851474, 0.0, -24.854366894342284>, <105.81981171011421, 0.0, -22.40028094556243>}
  triangle { <103.33740614392502, 0.0, -21.049505339545547>, <105.81981171011421, 0.0, -22.40028094556243>, <104.33138329029262, 0.0, -21.15909289585982>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-102.02790682527737, 0.0, -47.14216753952594>, <-101.65654407236241, 0.0, -48.070655399299795>}
  triangle { <-101.65654407236241, 0.0, -48.070655399299795>, <-101.8315636670853, 0.0, -48.909072233079186>, <-97.85395541126161, 0.0, -49.331721689725256>}
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-101.65654407236241, 0.0, -48.070655399299795>, <-97.85395541126161, 0.0, -49.331721689725256>}
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-97.85395541126161, 0.0, -49.331721689725256>, <-97.13595924754954, 0.0, -46.31387175523637>}
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-97.13595924754954, 0.0, -46.31387175523637>, <-97.48901649998378, 0.0, -45.378270036285635>}
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-97.48901649998378, 0.0, -45.378270036285635>, <-97.34061655142699, 0.0, -44.4987442540819>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <105.66806655531727, 0.0, -0.08457044963555568>, <106.66343024400328, 0.0, -0.18075323003502233>}
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <106.66343024400328, 0.0, -0.18075323003502233>, <106.89447037391268, 0.0, 0.006506447865277709>}
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <106.89447037391268, 0.0, 0.006506447865277709>, <107.00646954606573, 0.0, 1.0002147478391836>}
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <107.00646954606573, 0.0, 1.0002147478391836>, <106.80485570427291, 0.0, 1.2500814162948342>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-69.3823826795885, 0.0, 64.09518095677576>, <-70.79480617738143, 0.0, 64.23822599657196>, <-70.89591658995327, 0.0, 63.243350786070884>}
  triangle { <-69.3823826795885, 0.0, 64.09518095677576>, <-70.89591658995327, 0.0, 63.243350786070884>, <-70.70645002696602, 0.0, 63.011656524820374>}
  triangle { <-69.3823826795885, 0.0, 64.09518095677576>, <-70.70645002696602, 0.0, 63.011656524820374>, <-69.71130496284417, 0.0, 62.91323751571195>}
  triangle { <-69.3823826795885, 0.0, 64.09518095677576>, <-69.71130496284417, 0.0, 62.91323751571195>, <-69.48279401750271, 0.0, 63.10023494657305>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.37202956392713, 0.0, 62.68044826188347>, <-56.80514740737244, 0.0, 62.825778560913534>, <-56.905572776098644, 0.0, 61.83083396681987>}
  triangle { <-55.37202956392713, 0.0, 62.68044826188347>, <-56.905572776098644, 0.0, 61.83083396681987>, <-56.71570758260076, 0.0, 61.59584218477965>}
  triangle { <-55.37202956392713, 0.0, 62.68044826188347>, <-56.71570758260076, 0.0, 61.59584218477965>, <-55.7218665744455, 0.0, 61.48502679546505>}
  triangle { <-55.37202956392713, 0.0, 62.68044826188347>, <-55.7218665744455, 0.0, 61.48502679546505>, <-55.47338625140756, 0.0, 61.68559811140703>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-96.33693402449448, 0.0, 67.6927519259469>, <-96.57210882080724, 0.0, 67.50445798738039>, <-96.67965523900031, 0.0, 66.51025792304031>}
  triangle { <-96.33693402449448, 0.0, 67.6927519259469>, <-96.67965523900031, 0.0, 66.51025792304031>, <-95.4510657840248, 0.0, 66.20010966721901>}
  triangle { <-96.33693402449448, 0.0, 67.6927519259469>, <-95.4510657840248, 0.0, 66.20010966721901>, <-95.07384124458888, 0.0, 67.12623149875489>}
  triangle { <-96.33693402449448, 0.0, 67.6927519259469>, <-95.07384124458888, 0.0, 67.12623149875489>, <-95.3432847870291, 0.0, 67.58022995971605>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-110.90548391837798, 0.0, -52.4798171936226>, <-111.50983567770614, 0.0, -52.771898964785166>, <-111.60923146027581, 0.0, -53.766946942727614>}
  triangle { <-110.90548391837798, 0.0, -52.4798171936226>, <-111.60923146027581, 0.0, -53.766946942727614>, <-111.41355138048256, 0.0, -53.99997893729229>}
  triangle { <-110.90548391837798, 0.0, -52.4798171936226>, <-111.41355138048256, 0.0, -53.99997893729229>, <-110.41630684284958, 0.0, -54.07416338418768>}
  triangle { <-110.90548391837798, 0.0, -52.4798171936226>, <-110.41630684284958, 0.0, -54.07416338418768>, <-110.06403806886199, 0.0, -53.020158643385905>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-38.6339704140218, 0.0, 60.97515201252023>, <-38.735327101502236, 0.0, 59.980301862043795>}
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-38.735327101502236, 0.0, 59.980301862043795>, <-38.72994755173134, 0.0, 59.94492655825568>}
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-38.72994755173134, 0.0, 59.94492655825568>, <-38.33743654968535, 0.0, 59.0251792487881>}
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-38.33743654968535, 0.0, 59.0251792487881>, <-37.41799431072776, 0.0, 58.33678055971085>}
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-37.41799431072776, 0.0, 58.33678055971085>, <-36.424938595787786, 0.0, 58.219135555460504>}
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-36.424938595787786, 0.0, 58.219135555460504>, <-34.72937434680074, 0.0, 59.59163050775816>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-32.710889489397466, 0.0, 28.450216075159776>, <-32.813639792539156, 0.0, 27.45550889452605>, <-32.81036020746084, 0.0, 28.460491105473945>}
  triangle { <-32.813639792539156, 0.0, 27.45550889452605>, <-32.91311051060253, 0.0, 27.46578392484022>, <-32.81036020746084, 0.0, 28.460491105473945>}
  triangle { <-32.81036020746084, 0.0, 28.460491105473945>, <-32.91311051060253, 0.0, 27.46578392484022>, <-32.81036020746084, 2.0, 28.460491105473945>}
  triangle { <-32.91311051060253, 0.0, 27.46578392484022>, <-32.91311051060253, 2.0, 27.46578392484022>, <-32.81036020746084, 2.0, 28.460491105473945>}
  triangle { <-32.81036020746084, 2.0, 28.460491105473945>, <-32.91311051060253, 2.0, 27.46578392484022>, <-32.710889489397466, 2.0, 28.450216075159776>}
  triangle { <-32.91311051060253, 2.0, 27.46578392484022>, <-32.813639792539156, 2.0, 27.45550889452605>, <-32.710889489397466, 2.0, 28.450216075159776>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-32.91311051060253, 2.0, 27.46578392484022>, <-32.91311051060253, 0.0, 27.46578392484022>, <-32.813639792539156, 2.0, 27.45550889452605>}
  triangle { <-32.91311051060253, 0.0, 27.46578392484022>, <-32.813639792539156, 0.0, 27.45550889452605>, <-32.813639792539156, 2.0, 27.45550889452605>}
  triangle { <-32.813639792539156, 2.0, 27.45550889452605>, <-32.813639792539156, 0.0, 27.45550889452605>, <-32.710889489397466, 2.0, 28.450216075159776>}
  triangle { <-32.813639792539156, 0.0, 27.45550889452605>, <-32.710889489397466, 0.0, 28.450216075159776>, <-32.710889489397466, 2.0, 28.450216075159776>}
  triangle { <-32.710889489397466, 2.0, 28.450216075159776>, <-32.710889489397466, 0.0, 28.450216075159776>, <-32.81036020746084, 2.0, 28.460491105473945>}
  triangle { <-32.710889489397466, 0.0, 28.450216075159776>, <-32.81036020746084, 0.0, 28.460491105473945>, <-32.81036020746084, 2.0, 28.460491105473945>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-40.962722810229906, 0.0, 28.280250993876756>, <-39.96732887239949, 0.0, 28.184381767685714>}
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-39.96732887239949, 0.0, 28.184381767685714>, <-39.746853435364784, 0.0, 28.359925544223813>}
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-39.746853435364784, 0.0, 28.359925544223813>, <-39.61728508637496, 0.0, 29.351496037401205>}
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-39.61728508637496, 0.0, 29.351496037401205>, <-39.814767741363056, 0.0, 29.60517759665011>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.34273814637448, 0.0, -18.554086729725853>, <-55.23871938716281, 0.0, -17.559511394352977>, <-55.24328061283719, 0.0, -18.56448860564702>}
  triangle { <-55.23871938716281, 0.0, -17.559511394352977>, <-55.13926185362552, 0.0, -17.569913270274146>, <-55.24328061283719, 0.0, -18.56448860564702>}
  triangle { <-55.24328061283719, 0.0, -18.56448860564702>, <-55.13926185362552, 0.0, -17.569913270274146>, <-55.24328061283719, 2.0, -18.56448860564702>}
  triangle { <-55.13926185362552, 0.0, -17.569913270274146>, <-55.13926185362552, 2.0, -17.569913270274146>, <-55.24328061283719, 2.0, -18.56448860564702>}
  triangle { <-55.24328061283719, 2.0, -18.56448860564702>, <-55.13926185362552, 2.0, -17.569913270274146>, <-55.34273814637448, 2.0, -18.554086729725853>}
  triangle { <-55.13926185362552, 2.0, -17.569913270274146>, <-55.23871938716281, 2.0, -17.559511394352977>, <-55.34273814637448, 2.0, -18.554086729725853>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-55.13926185362552, 2.0, -17.569913270274146>, <-55.13926185362552, 0.0, -17.569913270274146>, <-55.23871938716281, 2.0, -17.559511394352977>}
  triangle { <-55.13926185362552, 0.0, -17.569913270274146>, <-55.23871938716281, 0.0, -17.559511394352977>, <-55.23871938716281, 2.0, -17.559511394352977>}
  triangle { <-55.23871938716281, 2.0, -17.559511394352977>, <-55.23871938716281, 0.0, -17.559511394352977>, <-55.34273814637448, 2.0, -18.554086729725853>}
  triangle { <-55.23871938716281, 0.0, -17.559511394352977>, <-55.34273814637448, 0.0, -18.554086729725853>, <-55.34273814637448, 2.0, -18.554086729725853>}
  triangle { <-55.34273814637448, 2.0, -18.554086729725853>, <-55.34273814637448, 0.0, -18.554086729725853>, <-55.24328061283719, 2.0, -18.56448860564702>}
  triangle { <-55.34273814637448, 0.0, -18.554086729725853>, <-55.24328061283719, 0.0, -18.56448860564702>, <-55.24328061283719, 2.0, -18.56448860564702>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-50.7690234352557, 0.0, 25.0389723395391>, <-50.66442805068221, 0.0, 26.033487198918248>, <-50.669571949317785, 0.0, 25.028512801081753>}
  triangle { <-50.66442805068221, 0.0, 26.033487198918248>, <-50.5649765647443, 0.0, 26.0230276604609>, <-50.669571949317785, 0.0, 25.028512801081753>}
  triangle { <-50.669571949317785, 0.0, 25.028512801081753>, <-50.5649765647443, 0.0, 26.0230276604609>, <-50.669571949317785, 2.0, 25.028512801081753>}
  triangle { <-50.5649765647443, 0.0, 26.0230276604609>, <-50.5649765647443, 2.0, 26.0230276604609>, <-50.669571949317785, 2.0, 25.028512801081753>}
  triangle { <-50.669571949317785, 2.0, 25.028512801081753>, <-50.5649765647443, 2.0, 26.0230276604609>, <-50.7690234352557, 2.0, 25.0389723395391>}
  triangle { <-50.5649765647443, 2.0, 26.0230276604609>, <-50.66442805068221, 2.0, 26.033487198918248>, <-50.7690234352557, 2.0, 25.0389723395391>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-50.5649765647443, 2.0, 26.0230276604609>, <-50.5649765647443, 0.0, 26.0230276604609>, <-50.66442805068221, 2.0, 26.033487198918248>}
  triangle { <-50.5649765647443, 0.0, 26.0230276604609>, <-50.66442805068221, 0.0, 26.033487198918248>, <-50.66442805068221, 2.0, 26.033487198918248>}
  triangle { <-50.66442805068221, 2.0, 26.033487198918248>, <-50.66442805068221, 0.0, 26.033487198918248>, <-50.7690234352557, 2.0, 25.0389723395391>}
  triangle { <-50.66442805068221, 0.0, 26.033487198918248>, <-50.7690234352557, 0.0, 25.0389723395391>, <-50.7690234352557, 2.0, 25.0389723395391>}
  triangle { <-50.7690234352557, 2.0, 25.0389723395391>, <-50.7690234352557, 0.0, 25.0389723395391>, <-50.669571949317785, 2.0, 25.028512801081753>}
  triangle { <-50.7690234352557, 0.0, 25.0389723395391>, <-50.669571949317785, 0.0, 25.028512801081753>, <-50.669571949317785, 2.0, 25.028512801081753>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-51.46366857394348, 0.0, 8.57862947996668>, <-51.59922438546762, 0.0, 7.58785976809513>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-51.59922438546762, 0.0, 7.58785976809513>, <-51.40723813071977, 0.0, 7.340019965234444>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-51.40723813071977, 0.0, 7.340019965234444>, <-50.41403444134449, 0.0, 7.2236308273764225>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-50.41403444134449, 0.0, 7.2236308273764225>, <-50.16350214030994, 0.0, 7.427944929427978>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-57.84239382019627, 0.0, -47.9657103412785>, <-57.95107632597672, 0.0, -48.95978685389576>}
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-57.95107632597672, 0.0, -48.95978685389576>, <-56.508658856185455, 0.0, -49.103456543352344>}
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-56.508658856185455, 0.0, -49.103456543352344>, <-56.41912458714648, 0.0, -48.10747280118199>}
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-56.41912458714648, 0.0, -48.10747280118199>, <-56.60685737378515, 0.0, -47.87861021929016>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.39468336241146, 0.0, 9.191966772935503>, <-81.49987140259958, 0.0, 8.197514423045686>, <-81.49412859740043, 0.0, 9.202485576954315>}
  triangle { <-81.49987140259958, 0.0, 8.197514423045686>, <-81.59931663758856, 0.0, 8.208033227064497>, <-81.49412859740043, 0.0, 9.202485576954315>}
  triangle { <-81.49412859740043, 0.0, 9.202485576954315>, <-81.59931663758856, 0.0, 8.208033227064497>, <-81.49412859740043, 2.0, 9.202485576954315>}
  triangle { <-81.59931663758856, 0.0, 8.208033227064497>, <-81.59931663758856, 2.0, 8.208033227064497>, <-81.49412859740043, 2.0, 9.202485576954315>}
  triangle { <-81.49412859740043, 2.0, 9.202485576954315>, <-81.59931663758856, 2.0, 8.208033227064497>, <-81.39468336241146, 2.0, 9.191966772935503>}
  triangle { <-81.59931663758856, 2.0, 8.208033227064497>, <-81.49987140259958, 2.0, 8.197514423045686>, <-81.39468336241146, 2.0, 9.191966772935503>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-81.59931663758856, 2.0, 8.208033227064497>, <-81.59931663758856, 0.0, 8.208033227064497>, <-81.49987140259958, 2.0, 8.197514423045686>}
  triangle { <-81.59931663758856, 0.0, 8.208033227064497>, <-81.49987140259958, 0.0, 8.197514423045686>, <-81.49987140259958, 2.0, 8.197514423045686>}
  triangle { <-81.49987140259958, 2.0, 8.197514423045686>, <-81.49987140259958, 0.0, 8.197514423045686>, <-81.39468336241146, 2.0, 9.191966772935503>}
  triangle { <-81.49987140259958, 0.0, 8.197514423045686>, <-81.39468336241146, 0.0, 9.191966772935503>, <-81.39468336241146, 2.0, 9.191966772935503>}
  triangle { <-81.39468336241146, 2.0, 9.191966772935503>, <-81.39468336241146, 0.0, 9.191966772935503>, <-81.49412859740043, 2.0, 9.202485576954315>}
  triangle { <-81.39468336241146, 0.0, 9.191966772935503>, <-81.49412859740043, 0.0, 9.202485576954315>, <-81.49412859740043, 2.0, 9.202485576954315>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-73.26401557995, 0.0, -38.2814051810944>, <-73.47603808872445, 0.0, -38.454602867734>, <-73.60564704982572, 0.0, -39.44616805328776>}
  triangle { <-73.26401557995, 0.0, -38.2814051810944>, <-73.60564704982572, 0.0, -39.44616805328776>, <-72.1455256857812, 0.0, -39.62121369432002>}
  triangle { <-73.26401557995, 0.0, -38.2814051810944>, <-72.1455256857812, 0.0, -39.62121369432002>, <-72.03708420803741, 0.0, -38.62711085964709>}
  triangle { <-73.26401557995, 0.0, -38.2814051810944>, <-72.03708420803741, 0.0, -38.62711085964709>, <-72.26652928658011, 0.0, -38.352264863137066>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-87.49805396628938, 0.0, 22.38601134349756>, <-87.89256631198059, 0.0, 18.789983946914784>, <-86.898793507154, 0.0, 18.678558580022415>}
  triangle { <-87.49805396628938, 0.0, 22.38601134349756>, <-86.898793507154, 0.0, 18.678558580022415>, <-86.85934153241085, 0.0, 18.685270700665875>}
  triangle { <-87.49805396628938, 0.0, 22.38601134349756>, <-86.85934153241085, 0.0, 18.685270700665875>, <-85.95832883986007, 0.0, 19.11906342520419>}
  triangle { <-87.49805396628938, 0.0, 22.38601134349756>, <-85.95832883986007, 0.0, 19.11906342520419>, <-86.50376067184908, 0.0, 22.279330301924784>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-90.30495082522118, 0.0, -2.7254231000199556>, <-90.77609647889703, 0.0, -7.248681892930476>, <-89.78069285242289, 0.0, -7.344450470251665>}
  triangle { <-90.30495082522118, 0.0, -2.7254231000199556>, <-89.78069285242289, 0.0, -7.344450470251665>, <-88.43578475880167, 0.0, -3.3752012187319145>}
  triangle { <-90.30495082522118, 0.0, -2.7254231000199556>, <-88.43578475880167, 0.0, -3.3752012187319145>, <-89.28438291261489, 0.0, -2.8461632490692286>}
  triangle { <-90.30495082522118, 0.0, -2.7254231000199556>, <-89.28438291261489, 0.0, -2.8461632490692286>, <-89.31117802039459, 0.0, -2.8368484669123224>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-64.82193046995114, 0.0, 43.20717869772239>, <-65.81648821307313, 0.0, 43.311365527965414>, <-64.81151178692684, 0.0, 43.30663447203459>}
  triangle { <-65.81648821307313, 0.0, 43.311365527965414>, <-65.80606953004883, 0.0, 43.41082130227761>, <-64.81151178692684, 0.0, 43.30663447203459>}
  triangle { <-64.81151178692684, 0.0, 43.30663447203459>, <-65.80606953004883, 0.0, 43.41082130227761>, <-64.81151178692684, 2.0, 43.30663447203459>}
  triangle { <-65.80606953004883, 0.0, 43.41082130227761>, <-65.80606953004883, 2.0, 43.41082130227761>, <-64.81151178692684, 2.0, 43.30663447203459>}
  triangle { <-64.81151178692684, 2.0, 43.30663447203459>, <-65.80606953004883, 2.0, 43.41082130227761>, <-64.82193046995114, 2.0, 43.20717869772239>}
  triangle { <-65.80606953004883, 2.0, 43.41082130227761>, <-65.81648821307313, 2.0, 43.311365527965414>, <-64.82193046995114, 2.0, 43.20717869772239>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-65.80606953004883, 2.0, 43.41082130227761>, <-65.80606953004883, 0.0, 43.41082130227761>, <-65.81648821307313, 2.0, 43.311365527965414>}
  triangle { <-65.80606953004883, 0.0, 43.41082130227761>, <-65.81648821307313, 0.0, 43.311365527965414>, <-65.81648821307313, 2.0, 43.311365527965414>}
  triangle { <-65.81648821307313, 2.0, 43.311365527965414>, <-65.81648821307313, 0.0, 43.311365527965414>, <-64.82193046995114, 2.0, 43.20717869772239>}
  triangle { <-65.81648821307313, 0.0, 43.311365527965414>, <-64.82193046995114, 0.0, 43.20717869772239>, <-64.82193046995114, 2.0, 43.20717869772239>}
  triangle { <-64.82193046995114, 2.0, 43.20717869772239>, <-64.82193046995114, 0.0, 43.20717869772239>, <-64.81151178692684, 2.0, 43.30663447203459>}
  triangle { <-64.82193046995114, 0.0, 43.20717869772239>, <-64.81151178692684, 0.0, 43.30663447203459>, <-64.81151178692684, 2.0, 43.30663447203459>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-66.62841609288583, 0.0, 46.627966414307785>, <-66.73509488950143, 0.0, 45.633672879001104>, <-65.71689514182464, 0.0, 44.39044797584018>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-66.62841609288583, 0.0, 46.627966414307785>, <-65.71689514182464, 0.0, 44.39044797584018>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-65.71689514182464, 0.0, 44.39044797584018>, <-64.72107621957312, 0.0, 44.29909878818177>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-64.72107621957312, 0.0, 44.29909878818177>, <-63.49977919193639, 0.0, 45.3210815947171>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-63.49977919193639, 0.0, 45.3210815947171>, <-63.4141274386966, 0.0, 46.317406730988864>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-63.4141274386966, 0.0, 46.317406730988864>, <-63.15379228059206, 0.0, 47.37617292433706>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-57.95931929969084, 0.0, 50.52518143450877>, <-56.96653670859694, 0.0, 50.405253427684286>}
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-56.96653670859694, 0.0, 50.405253427684286>, <-56.22699721006738, 0.0, 51.3906373385389>}
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-56.22699721006738, 0.0, 51.3906373385389>, <-56.619508212113374, 0.0, 52.31038464800648>}
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-56.619508212113374, 0.0, 52.31038464800648>, <-56.7352641090847, 0.0, 52.39643329128388>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-41.48845126783314, 0.0, 25.0492236061808>, <-41.59703450025469, 0.0, 24.055136245011322>}
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-41.59703450025469, 0.0, 24.055136245011322>, <-41.406454143406656, 0.0, 23.816251664757274>}
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-41.406454143406656, 0.0, 23.816251664757274>, <-40.41308365210859, 0.0, 23.701294859746646>}
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-40.41308365210859, 0.0, 23.701294859746646>, <-40.26027718977009, 0.0, 25.142749006123246>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-42.04206591591583, 0.0, 18.32377143556241>, <-42.20519301168743, 0.0, 16.91308579371895>, <-41.21180273930034, 0.0, 16.798300051021066>}
  triangle { <-42.04206591591583, 0.0, 18.32377143556241>, <-41.21180273930034, 0.0, 16.798300051021066>, <-40.97755862969235, 0.0, 16.984522867758056>}
  triangle { <-42.04206591591583, 0.0, 18.32377143556241>, <-40.97755862969235, 0.0, 16.984522867758056>, <-40.86540099527133, 0.0, 17.978213294923922>}
  triangle { <-42.04206591591583, 0.0, 18.32377143556241>, <-40.86540099527133, 0.0, 17.978213294923922>, <-41.04869542461776, 0.0, 18.20881463055178>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-61.55087600066903, 0.0, 63.30479171067639>, <-64.73470791178518, 0.0, 63.6261311421731>, <-64.83511924969939, 0.0, 62.63118513197039>}
  triangle { <-61.55087600066903, 0.0, 63.30479171067639>, <-64.83511924969939, 0.0, 62.63118513197039>, <-65.10801294257925, 0.0, 61.56970628431899>}
  triangle { <-65.10801294257925, 0.0, 61.56970628431899>, <-61.6291513500116, 0.0, 61.18562033071276>, <-61.651301369395235, 0.0, 62.30984711658272>}
  triangle { <-61.55087600066903, 0.0, 63.30479171067639>, <-65.10801294257925, 0.0, 61.56970628431899>, <-61.651301369395235, 0.0, 62.30984711658272>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-54.55680166730294, 0.0, -19.536698790704666>, <-54.81443745746323, 0.0, -19.745275649138488>, <-54.90733542330558, 0.0, -20.74095128303858>}
  triangle { <-54.55680166730294, 0.0, -19.536698790704666>, <-54.90733542330558, 0.0, -20.74095128303858>, <-54.71814262621485, 0.0, -20.97238978070984>}
  triangle { <-54.55680166730294, 0.0, -19.536698790704666>, <-54.71814262621485, 0.0, -20.97238978070984>, <-53.72387926390375, 0.0, -21.07934942901627>}
  triangle { <-54.55680166730294, 0.0, -19.536698790704666>, <-53.72387926390375, 0.0, -21.07934942901627>, <-53.563597977927664, 0.0, -19.653087928562687>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-104.30189104525684, 0.0, -56.51278893324617>, <-104.7184217242849, 0.0, -60.49104259451872>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-104.7184217242849, 0.0, -60.49104259451872>, <-103.29872393418589, 0.0, -62.26907453927933>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-103.29872393418589, 0.0, -62.26907453927933>, <-99.32694843947775, 0.0, -62.743415576546695>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-99.32694843947775, 0.0, -62.743415576546695>, <-96.7999001587966, 0.0, -59.703757074961835>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-96.7999001587966, 0.0, -59.703757074961835>, <-97.99159572312517, 0.0, -55.885398568750084>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-97.99159572312517, 0.0, -55.885398568750084>, <-98.50552825151895, 0.0, -55.463757276011044>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-52.147028148200455, 0.0, 8.879399981508321>, <-52.305801554816064, 0.0, 7.451677330659035>, <-51.31231754679647, 0.0, 7.337705729769524>}
  triangle { <-52.147028148200455, 0.0, 8.879399981508321>, <-51.31231754679647, 0.0, 7.337705729769524>, <-51.08142372915926, 0.0, 7.517014961948379>}
  triangle { <-52.147028148200455, 0.0, 8.879399981508321>, <-51.08142372915926, 0.0, 7.517014961948379>, <-50.94586791763512, 0.0, 8.507784673819929>}
  triangle { <-52.147028148200455, 0.0, 8.879399981508321>, <-50.94586791763512, 0.0, 8.507784673819929>, <-51.152777664799736, 0.0, 8.772320682587267>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <88.78883638746714, 0.0, -71.67023911346314>, <87.83881238278515, 0.0, -72.44687936703947>, <87.45367121217659, 0.0, -76.42829447711055>}
  triangle { <88.78883638746714, 0.0, -71.67023911346314>, <87.45367121217659, 0.0, -76.42829447711055>, <88.18347810940863, 0.0, -77.32632567052903>}
  triangle { <88.78883638746714, 0.0, -71.67023911346314>, <88.18347810940863, 0.0, -77.32632567052903>, <92.15951346072397, 0.0, -77.76352457845374>}
  triangle { <88.78883638746714, 0.0, -71.67023911346314>, <92.15951346072397, 0.0, -77.76352457845374>, <92.76733782498601, 0.0, -72.08439646479266>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-50.284541421468916, 0.0, 26.229808326278178>, <-50.53427555706272, 0.0, 26.021719775286137>, <-50.616811284043244, 0.0, 25.02513166890929>}
  triangle { <-50.284541421468916, 0.0, 26.229808326278178>, <-50.616811284043244, 0.0, 25.02513166890929>, <-50.43222233520026, 0.0, 24.801679317412727>}
  triangle { <-50.284541421468916, 0.0, 26.229808326278178>, <-50.43222233520026, 0.0, 24.801679317412727>, <-49.43797185179954, 0.0, 24.694600018491677>}
  triangle { <-50.284541421468916, 0.0, 26.229808326278178>, <-49.43797185179954, 0.0, 24.694600018491677>, <-49.28941815703415, 0.0, 26.13116914247833>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.15168245320353, 0.0, -17.355705729769525>, <-55.3859828969417, 0.0, -17.538745236503875>, <-55.51582669544817, 0.0, -18.53027969782603>}
  triangle { <-55.15168245320353, 0.0, -17.355705729769525>, <-55.51582669544817, 0.0, -18.53027969782603>, <-55.31630503532203, 0.0, -18.78587966443435>}
  triangle { <-55.15168245320353, 0.0, -17.355705729769525>, <-55.31630503532203, 0.0, -18.78587966443435>, <-54.32290851204304, 0.0, -18.900611297113432>}
  triangle { <-55.15168245320353, 0.0, -17.355705729769525>, <-54.32290851204304, 0.0, -18.900611297113432>, <-54.158198445183935, 0.0, -17.46967733065904>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-35.71015993091879, 0.0, -32.063142378130244>, <-35.816406083184596, 0.0, -33.05748223709634>, <-35.8095939168154, 0.0, -32.05251776290366>}
  triangle { <-35.816406083184596, 0.0, -33.05748223709634>, <-35.915840069081206, 0.0, -33.046857621869755>, <-35.8095939168154, 0.0, -32.05251776290366>}
  triangle { <-35.8095939168154, 0.0, -32.05251776290366>, <-35.915840069081206, 0.0, -33.046857621869755>, <-35.8095939168154, 2.0, -32.05251776290366>}
  triangle { <-35.915840069081206, 0.0, -33.046857621869755>, <-35.915840069081206, 2.0, -33.046857621869755>, <-35.8095939168154, 2.0, -32.05251776290366>}
  triangle { <-35.8095939168154, 2.0, -32.05251776290366>, <-35.915840069081206, 2.0, -33.046857621869755>, <-35.71015993091879, 2.0, -32.063142378130244>}
  triangle { <-35.915840069081206, 2.0, -33.046857621869755>, <-35.816406083184596, 2.0, -33.05748223709634>, <-35.71015993091879, 2.0, -32.063142378130244>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-35.915840069081206, 2.0, -33.046857621869755>, <-35.915840069081206, 0.0, -33.046857621869755>, <-35.816406083184596, 2.0, -33.05748223709634>}
  triangle { <-35.915840069081206, 0.0, -33.046857621869755>, <-35.816406083184596, 0.0, -33.05748223709634>, <-35.816406083184596, 2.0, -33.05748223709634>}
  triangle { <-35.816406083184596, 2.0, -33.05748223709634>, <-35.816406083184596, 0.0, -33.05748223709634>, <-35.71015993091879, 2.0, -32.063142378130244>}
  triangle { <-35.816406083184596, 0.0, -33.05748223709634>, <-35.71015993091879, 0.0, -32.063142378130244>, <-35.71015993091879, 2.0, -32.063142378130244>}
  triangle { <-35.71015993091879, 2.0, -32.063142378130244>, <-35.71015993091879, 0.0, -32.063142378130244>, <-35.8095939168154, 2.0, -32.05251776290366>}
  triangle { <-35.71015993091879, 0.0, -32.063142378130244>, <-35.8095939168154, 0.0, -32.05251776290366>, <-35.8095939168154, 2.0, -32.05251776290366>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-3.394116008382837, 0.0, -22.99571386854153>, <-4.388483094464651, 0.0, -22.889722840066657>, <-3.3835169055353496, 0.0, -22.896277159933348>}
  triangle { <-4.388483094464651, 0.0, -22.889722840066657>, <-4.377883991617164, 0.0, -22.790286131458476>, <-3.3835169055353496, 0.0, -22.896277159933348>}
  triangle { <-3.3835169055353496, 0.0, -22.896277159933348>, <-4.377883991617164, 0.0, -22.790286131458476>, <-3.3835169055353496, 2.0, -22.896277159933348>}
  triangle { <-4.377883991617164, 0.0, -22.790286131458476>, <-4.377883991617164, 2.0, -22.790286131458476>, <-3.3835169055353496, 2.0, -22.896277159933348>}
  triangle { <-3.3835169055353496, 2.0, -22.896277159933348>, <-4.377883991617164, 2.0, -22.790286131458476>, <-3.394116008382837, 2.0, -22.99571386854153>}
  triangle { <-4.377883991617164, 2.0, -22.790286131458476>, <-4.388483094464651, 2.0, -22.889722840066657>, <-3.394116008382837, 2.0, -22.99571386854153>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-4.377883991617164, 2.0, -22.790286131458476>, <-4.377883991617164, 0.0, -22.790286131458476>, <-4.388483094464651, 2.0, -22.889722840066657>}
  triangle { <-4.377883991617164, 0.0, -22.790286131458476>, <-4.388483094464651, 0.0, -22.889722840066657>, <-4.388483094464651, 2.0, -22.889722840066657>}
  triangle { <-4.388483094464651, 2.0, -22.889722840066657>, <-4.388483094464651, 0.0, -22.889722840066657>, <-3.394116008382837, 2.0, -22.99571386854153>}
  triangle { <-4.388483094464651, 0.0, -22.889722840066657>, <-3.394116008382837, 0.0, -22.99571386854153>, <-3.394116008382837, 2.0, -22.99571386854153>}
  triangle { <-3.394116008382837, 2.0, -22.99571386854153>, <-3.394116008382837, 0.0, -22.99571386854153>, <-3.3835169055353496, 2.0, -22.896277159933348>}
  triangle { <-3.394116008382837, 0.0, -22.99571386854153>, <-3.3835169055353496, 0.0, -22.896277159933348>, <-3.3835169055353496, 2.0, -22.896277159933348>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-8.017892910447177, 0.0, -48.46032885190179>, <-7.023516622809556, 0.0, -48.56623351933446>, <-8.028483377190444, 0.0, -48.55976648066555>}
  triangle { <-7.023516622809556, 0.0, -48.56623351933446>, <-7.034107089552823, 0.0, -48.66567114809822>, <-8.028483377190444, 0.0, -48.55976648066555>}
  triangle { <-8.028483377190444, 0.0, -48.55976648066555>, <-7.034107089552823, 0.0, -48.66567114809822>, <-8.028483377190444, 2.0, -48.55976648066555>}
  triangle { <-7.034107089552823, 0.0, -48.66567114809822>, <-7.034107089552823, 2.0, -48.66567114809822>, <-8.028483377190444, 2.0, -48.55976648066555>}
  triangle { <-8.028483377190444, 2.0, -48.55976648066555>, <-7.034107089552823, 2.0, -48.66567114809822>, <-8.017892910447177, 2.0, -48.46032885190179>}
  triangle { <-7.034107089552823, 2.0, -48.66567114809822>, <-7.023516622809556, 2.0, -48.56623351933446>, <-8.017892910447177, 2.0, -48.46032885190179>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-7.034107089552823, 2.0, -48.66567114809822>, <-7.034107089552823, 0.0, -48.66567114809822>, <-7.023516622809556, 2.0, -48.56623351933446>}
  triangle { <-7.034107089552823, 0.0, -48.66567114809822>, <-7.023516622809556, 0.0, -48.56623351933446>, <-7.023516622809556, 2.0, -48.56623351933446>}
  triangle { <-7.023516622809556, 2.0, -48.56623351933446>, <-7.023516622809556, 0.0, -48.56623351933446>, <-8.017892910447177, 2.0, -48.46032885190179>}
  triangle { <-7.023516622809556, 0.0, -48.56623351933446>, <-8.017892910447177, 0.0, -48.46032885190179>, <-8.017892910447177, 2.0, -48.46032885190179>}
  triangle { <-8.017892910447177, 2.0, -48.46032885190179>, <-8.017892910447177, 0.0, -48.46032885190179>, <-8.028483377190444, 2.0, -48.55976648066555>}
  triangle { <-8.017892910447177, 0.0, -48.46032885190179>, <-8.028483377190444, 0.0, -48.55976648066555>, <-8.028483377190444, 2.0, -48.55976648066555>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <37.90260234672492, 0.0, -40.22547627023504>, <37.017190541847185, 0.0, -40.69028368818699>}
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <37.017190541847185, 0.0, -40.69028368818699>, <36.942584390538144, 0.0, -40.80647764444894>}
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <36.942584390538144, 0.0, -40.80647764444894>, <36.88841127537364, 0.0, -41.80500920308561>}
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <36.88841127537364, 0.0, -41.80500920308561>, <37.32693622358962, 0.0, -42.321142450296236>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <27.47045378293961, 0.0, -39.38309122748203>, <27.399725707109496, 0.0, -39.404736903330615>, <26.612743257464345, 0.0, -40.02171228691614>}
  triangle { <27.47045378293961, 0.0, -39.38309122748203>, <26.612743257464345, 0.0, -40.02171228691614>, <29.240857593262593, 0.0, -41.390108138853435>}
  triangle { <27.47045378293961, 0.0, -39.38309122748203>, <29.240857593262593, 0.0, -41.390108138853435>, <29.295030708427102, 0.0, -40.391576580216764>}
  triangle { <27.47045378293961, 0.0, -39.38309122748203>, <29.295030708427102, 0.0, -40.391576580216764>, <28.467940404046413, 0.0, -39.453946295846485>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-45.158503125365826, 0.0, -14.008322804797006>, <-45.30547612620413, 0.0, -15.422588986445403>, <-44.310639558782114, 0.0, -15.524078907718275>}
  triangle { <-45.158503125365826, 0.0, -14.008322804797006>, <-44.310639558782114, 0.0, -15.524078907718275>, <-44.0842396574952, 0.0, -15.340854017501849>}
  triangle { <-45.158503125365826, 0.0, -14.008322804797006>, <-44.0842396574952, 0.0, -15.340854017501849>, <-43.97608931337085, 0.0, -14.346719467722101>}
  triangle { <-45.158503125365826, 0.0, -14.008322804797006>, <-43.97608931337085, 0.0, -14.346719467722101>, <-44.16405625937071, 0.0, -14.113562677053148>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <30.003604964013906, 0.0, -30.8809955889539>, <28.390202874349974, 0.0, -26.845659791894292>, <27.45667832987653, 0.0, -27.204173285176843>}
  triangle { <30.003604964013906, 0.0, -30.8809955889539>, <27.45667832987653, 0.0, -27.204173285176843>, <28.051792643864623, 0.0, -31.19909325122628>}
  triangle { <30.003604964013906, 0.0, -30.8809955889539>, <28.051792643864623, 0.0, -31.19909325122628>, <29.049279264971425, 0.0, -31.26994831959074>}
  triangle { <30.003604964013906, 0.0, -30.8809955889539>, <29.049279264971425, 0.0, -31.26994831959074>, <29.080233587601708, 0.0, -31.264903522217395>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <32.46724579985797, 0.0, 53.8140524903658>, <32.35251009500541, 0.0, 52.82065643740808>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <32.35251009500541, 0.0, 52.82065643740808>, <32.353250955719155, 0.0, 52.80641057957807>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <32.353250955719155, 0.0, 52.80641057957807>, <32.57041282878435, 0.0, 51.830274973790225>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <32.57041282878435, 0.0, 51.830274973790225>, <34.60546477340168, 0.0, 50.02601741880976>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <34.60546477340168, 0.0, 50.02601741880976>, <35.60058570524147, 0.0, 49.927354705415624>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <35.60058570524147, 0.0, 49.927354705415624>, <38.34476791581325, 0.0, 52.17297464559702>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <38.34476791581325, 0.0, 52.17297464559702>, <38.44494754284878, 0.0, 53.167944013129016>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <38.44494754284878, 0.0, 53.167944013129016>, <36.25448217966869, 0.0, 55.901156841074005>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-48.81279808515985, 0.0, -48.570822688341>, <-49.05538130661546, 0.0, -48.76943879931803>, <-49.14491557565444, 0.0, -49.765422541488384>}
  triangle { <-48.81279808515985, 0.0, -48.570822688341>, <-49.14491557565444, 0.0, -49.765422541488384>, <-47.74179798477386, 0.0, -49.90548752191009>}
  triangle { <-48.81279808515985, 0.0, -48.570822688341>, <-47.74179798477386, 0.0, -49.90548752191009>, <-47.63268098930234, 0.0, -48.91145860819617>}
  triangle { <-48.81279808515985, 0.0, -48.570822688341>, <-47.63268098930234, 0.0, -48.91145860819617>, <-47.81873238539152, 0.0, -48.6796040495391>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <36.52544931573936, 0.0, -66.83286808363314>, <35.56687286783706, 0.0, -67.39261023146759>, <35.16945063613467, 0.0, -71.37281821218275>}
  triangle { <36.52544931573936, 0.0, -66.83286808363314>, <35.16945063613467, 0.0, -71.37281821218275>, <40.47059698310431, 0.0, -71.89325090768263>}
  triangle { <36.52544931573936, 0.0, -66.83286808363314>, <40.47059698310431, 0.0, -71.89325090768263>, <40.8548049158778, 0.0, -67.91174563148446>}
  triangle { <36.52544931573936, 0.0, -66.83286808363314>, <40.8548049158778, 0.0, -67.91174563148446>, <40.00963931178686, 0.0, -67.16516324074883>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.8763441209135, 0.0, -57.58963486166906>, <-56.87881427701505, 0.0, -58.18186711854621>, <-57.246644392502375, 0.0, -62.16491883879044>}
  triangle { <-55.8763441209135, 0.0, -57.58963486166906>, <-57.246644392502375, 0.0, -62.16491883879044>, <-51.965872867837064, 0.0, -62.672389768532426>}
  triangle { <-55.8763441209135, 0.0, -57.58963486166906>, <-51.965872867837064, 0.0, -62.672389768532426>, <-51.56845063613467, 0.0, -58.69218178781726>}
  triangle { <-55.8763441209135, 0.0, -57.58963486166906>, <-51.56845063613467, 0.0, -58.69218178781726>, <-52.39552052567508, 0.0, -57.95551339182828>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-8.55050698325641, 0.0, -52.986382325857264>, <-8.788202015226139, 0.0, -53.175512478089914>, <-8.897319010697666, 0.0, -54.16954139180383>}
  triangle { <-8.55050698325641, 0.0, -52.986382325857264>, <-8.897319010697666, 0.0, -54.16954139180383>, <-7.4878545060484605, 0.0, -54.32681028523024>}
  triangle { <-8.55050698325641, 0.0, -52.986382325857264>, <-7.4878545060484605, 0.0, -54.32681028523024>, <-7.375187023058361, 0.0, -53.3331775370397>}
  triangle { <-8.55050698325641, 0.0, -52.986382325857264>, <-7.375187023058361, 0.0, -53.3331775370397>, <-7.557373379581266, 0.0, -53.10336798844557>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-46.88534554202784, 0.0, -30.908972726829866>, <-47.036355428196146, 0.0, -32.337336607236395>, <-46.04228972842782, 0.0, -32.44611796843449>}
  triangle { <-46.88534554202784, 0.0, -30.908972726829866>, <-46.04228972842782, 0.0, -32.44611796843449>, <-45.784576245269356, 0.0, -32.2335400262419>}
  triangle { <-46.88534554202784, 0.0, -30.908972726829866>, <-45.784576245269356, 0.0, -32.2335400262419>, <-45.70230537793102, 0.0, -31.236930020077303>}
  triangle { <-46.88534554202784, 0.0, -30.908972726829866>, <-45.70230537793102, 0.0, -31.236930020077303>, <-45.89050897460583, 0.0, -31.010462648102738>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <25.673453984504757, 0.0, -38.635919012344566>, <25.77910569591225, 0.0, -37.64151581651469>, <25.772894304087746, 0.0, -38.64648418348531>}
  triangle { <25.77910569591225, 0.0, -37.64151581651469>, <25.87854601549524, 0.0, -37.65208098765544>, <25.772894304087746, 0.0, -38.64648418348531>}
  triangle { <25.772894304087746, 0.0, -38.64648418348531>, <25.87854601549524, 0.0, -37.65208098765544>, <25.772894304087746, 2.0, -38.64648418348531>}
  triangle { <25.87854601549524, 0.0, -37.65208098765544>, <25.87854601549524, 2.0, -37.65208098765544>, <25.772894304087746, 2.0, -38.64648418348531>}
  triangle { <25.772894304087746, 2.0, -38.64648418348531>, <25.87854601549524, 2.0, -37.65208098765544>, <25.673453984504757, 2.0, -38.635919012344566>}
  triangle { <25.87854601549524, 2.0, -37.65208098765544>, <25.77910569591225, 2.0, -37.64151581651469>, <25.673453984504757, 2.0, -38.635919012344566>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <25.87854601549524, 2.0, -37.65208098765544>, <25.87854601549524, 0.0, -37.65208098765544>, <25.77910569591225, 2.0, -37.64151581651469>}
  triangle { <25.87854601549524, 0.0, -37.65208098765544>, <25.77910569591225, 0.0, -37.64151581651469>, <25.77910569591225, 2.0, -37.64151581651469>}
  triangle { <25.77910569591225, 2.0, -37.64151581651469>, <25.77910569591225, 0.0, -37.64151581651469>, <25.673453984504757, 2.0, -38.635919012344566>}
  triangle { <25.77910569591225, 0.0, -37.64151581651469>, <25.673453984504757, 0.0, -38.635919012344566>, <25.673453984504757, 2.0, -38.635919012344566>}
  triangle { <25.673453984504757, 2.0, -38.635919012344566>, <25.673453984504757, 0.0, -38.635919012344566>, <25.772894304087746, 2.0, -38.64648418348531>}
  triangle { <25.673453984504757, 0.0, -38.635919012344566>, <25.772894304087746, 0.0, -38.64648418348531>, <25.772894304087746, 2.0, -38.64648418348531>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-2.742880123233158, 0.0, -18.827712485876276>, <-4.15176034250479, 0.0, -18.67914598249815>, <-4.259910686629146, 0.0, -19.6732805322779>}
  triangle { <-2.742880123233158, 0.0, -18.827712485876276>, <-4.259910686629146, 0.0, -19.6732805322779>, <-4.072083568060162, 0.0, -19.90631490769806>}
  triangle { <-2.742880123233158, 0.0, -18.827712485876276>, <-4.072083568060162, 0.0, -19.90631490769806>, <-3.0776592469659465, 0.0, -20.01176759669322>}
  triangle { <-2.742880123233158, 0.0, -18.827712485876276>, <-3.0776592469659465, 0.0, -20.01176759669322>, <-2.844465871004029, 0.0, -19.822539272734083>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <29.967, 0.0, 24.26899998368323>, <29.764110894783837, 0.0, 24.076444771065773>, <29.71188184542275, 0.0, 23.077809639297>}
  triangle { <29.967, 0.0, 24.26899998368323>, <29.71188184542275, 0.0, 23.077809639297>, <29.899420311812978, 0.0, 22.860211908078053>}
  triangle { <29.967, 0.0, 24.26899998368323>, <29.899420311812978, 0.0, 22.860211908078053>, <30.894828619175353, 0.0, 22.76449199565658>}
  triangle { <29.967, 0.0, 24.26899998368323>, <30.894828619175353, 0.0, 22.76449199565658>, <30.967, 0.0, 24.26899998368323>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.6379611634353695, 0.0, 57.24537646710675>, <0.2049295026614316, 0.0, 57.37597195358234>, <0.1131484628894174, 0.0, 56.380192740735254>}
  triangle { <1.6379611634353695, 0.0, 57.24537646710675>, <0.1131484628894174, 0.0, 56.380192740735254>, <0.3036219926868778, 0.0, 56.148084799413375>}
  triangle { <1.6379611634353695, 0.0, 57.24537646710675>, <0.3036219926868778, 0.0, 56.148084799413375>, <1.2981664492748917, 0.0, 56.04377121511079>}
  triangle { <1.6379611634353695, 0.0, 57.24537646710675>, <1.2981664492748917, 0.0, 56.04377121511079>, <1.548229858835267, 0.0, 56.24941045715724>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <31.893999462309278, 0.0, 21.90093511003126>, <31.286782140715086, 0.0, 21.410144628346266>, <31.189154118313088, 0.0, 20.414921653710998>}
  triangle { <31.893999462309278, 0.0, 21.90093511003126>, <31.189154118313088, 0.0, 20.414921653710998>, <31.240080420731033, 0.0, 20.29653222218343>}
  triangle { <31.893999462309278, 0.0, 21.90093511003126>, <31.240080420731033, 0.0, 20.29653222218343>, <32.02973670248636, 0.0, 19.68298274847789>}
  triangle { <31.893999462309278, 0.0, 21.90093511003126>, <32.02973670248636, 0.0, 19.68298274847789>, <32.8875657029083, 0.0, 21.787682624222196>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <4.680070225475266, 0.0, 46.924756427305105>, <4.548951745911973, 0.0, 45.93338972203555>}
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <4.548951745911973, 0.0, 45.93338972203555>, <6.434818894586079, 0.0, 46.01586302244986>}
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <6.434818894586079, 0.0, 46.01586302244986>, <6.217657021520886, 0.0, 46.9919986282377>}
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <6.217657021520886, 0.0, 46.9919986282377>, <6.0776605172084235, 0.0, 47.118807756388826>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <6.0087701411647325, 0.0, 56.85158954284276>, <5.9190388365646305, 0.0, 55.85562353289325>}
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <5.9190388365646305, 0.0, 55.85562353289325>, <6.098316058636393, 0.0, 55.63411115347512>}
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <6.098316058636393, 0.0, 55.63411115347512>, <7.091108813253373, 0.0, 55.51426731183096>}
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <7.091108813253373, 0.0, 55.51426731183096>, <7.338877289716304, 0.0, 55.70969226787376>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <27.823419399100448, 0.0, 23.179675368559845>, <27.925098879804487, 0.0, 24.17449257951056>, <27.92290112019552, 0.0, 23.169507420489442>}
  triangle { <27.925098879804487, 0.0, 24.17449257951056>, <28.024580600899558, 0.0, 24.164324631440156>, <27.92290112019552, 0.0, 23.169507420489442>}
  triangle { <27.92290112019552, 0.0, 23.169507420489442>, <28.024580600899558, 0.0, 24.164324631440156>, <27.92290112019552, 2.0, 23.169507420489442>}
  triangle { <28.024580600899558, 0.0, 24.164324631440156>, <28.024580600899558, 2.0, 24.164324631440156>, <27.92290112019552, 2.0, 23.169507420489442>}
  triangle { <27.92290112019552, 2.0, 23.169507420489442>, <28.024580600899558, 2.0, 24.164324631440156>, <27.823419399100448, 2.0, 23.179675368559845>}
  triangle { <28.024580600899558, 2.0, 24.164324631440156>, <27.925098879804487, 2.0, 24.17449257951056>, <27.823419399100448, 2.0, 23.179675368559845>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <28.024580600899558, 2.0, 24.164324631440156>, <28.024580600899558, 0.0, 24.164324631440156>, <27.925098879804487, 2.0, 24.17449257951056>}
  triangle { <28.024580600899558, 0.0, 24.164324631440156>, <27.925098879804487, 0.0, 24.17449257951056>, <27.925098879804487, 2.0, 24.17449257951056>}
  triangle { <27.925098879804487, 2.0, 24.17449257951056>, <27.925098879804487, 0.0, 24.17449257951056>, <27.823419399100448, 2.0, 23.179675368559845>}
  triangle { <27.925098879804487, 0.0, 24.17449257951056>, <27.823419399100448, 0.0, 23.179675368559845>, <27.823419399100448, 2.0, 23.179675368559845>}
  triangle { <27.823419399100448, 2.0, 23.179675368559845>, <27.823419399100448, 0.0, 23.179675368559845>, <27.92290112019552, 2.0, 23.169507420489442>}
  triangle { <27.823419399100448, 0.0, 23.179675368559845>, <27.92290112019552, 0.0, 23.169507420489442>, <27.92290112019552, 2.0, 23.169507420489442>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-1.656286408327901, 0.0, 15.056767515478029>, <-0.6615078739205663, 0.0, 14.9547103379627>, <-1.6664921260794339, 0.0, 14.957289662037295>}
  triangle { <-0.6615078739205663, 0.0, 14.9547103379627>, <-0.6717135916720991, 0.0, 14.855232484521967>, <-1.6664921260794339, 0.0, 14.957289662037295>}
  triangle { <-1.6664921260794339, 0.0, 14.957289662037295>, <-0.6717135916720991, 0.0, 14.855232484521967>, <-1.6664921260794339, 2.0, 14.957289662037295>}
  triangle { <-0.6717135916720991, 0.0, 14.855232484521967>, <-0.6717135916720991, 2.0, 14.855232484521967>, <-1.6664921260794339, 2.0, 14.957289662037295>}
  triangle { <-1.6664921260794339, 2.0, 14.957289662037295>, <-0.6717135916720991, 2.0, 14.855232484521967>, <-1.656286408327901, 2.0, 15.056767515478029>}
  triangle { <-0.6717135916720991, 2.0, 14.855232484521967>, <-0.6615078739205663, 2.0, 14.9547103379627>, <-1.656286408327901, 2.0, 15.056767515478029>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-0.6717135916720991, 2.0, 14.855232484521967>, <-0.6717135916720991, 0.0, 14.855232484521967>, <-0.6615078739205663, 2.0, 14.9547103379627>}
  triangle { <-0.6717135916720991, 0.0, 14.855232484521967>, <-0.6615078739205663, 0.0, 14.9547103379627>, <-0.6615078739205663, 2.0, 14.9547103379627>}
  triangle { <-0.6615078739205663, 2.0, 14.9547103379627>, <-0.6615078739205663, 0.0, 14.9547103379627>, <-1.656286408327901, 2.0, 15.056767515478029>}
  triangle { <-0.6615078739205663, 0.0, 14.9547103379627>, <-1.656286408327901, 0.0, 15.056767515478029>, <-1.656286408327901, 2.0, 15.056767515478029>}
  triangle { <-1.656286408327901, 2.0, 15.056767515478029>, <-1.656286408327901, 0.0, 15.056767515478029>, <-1.6664921260794339, 2.0, 14.957289662037295>}
  triangle { <-1.656286408327901, 0.0, 15.056767515478029>, <-1.6664921260794339, 0.0, 14.957289662037295>, <-1.6664921260794339, 2.0, 14.957289662037295>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <1.9686898768616372, 0.0, 47.280789690764884>, <1.8410824988302747, 0.0, 46.28896492949304>}
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <1.8410824988302747, 0.0, 46.28896492949304>, <2.047824259651179, 0.0, 46.028050189516016>}
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <2.047824259651179, 0.0, 46.028050189516016>, <3.0425558396536116, 0.0, 45.92553636729742>}
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <3.0425558396536116, 0.0, 45.92553636729742>, <3.2672247720581176, 0.0, 46.10291134418977>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <2.285278288803654, 0.0, 38.5771928257883>, <1.2905079794475691, 0.0, 38.67933014327608>, <2.2954920205524316, 0.0, 38.67666985672391>}
  triangle { <1.2905079794475691, 0.0, 38.67933014327608>, <1.300721711196347, 0.0, 38.77880717421169>, <2.2954920205524316, 0.0, 38.67666985672391>}
  triangle { <2.2954920205524316, 0.0, 38.67666985672391>, <1.300721711196347, 0.0, 38.77880717421169>, <2.2954920205524316, 2.0, 38.67666985672391>}
  triangle { <1.300721711196347, 0.0, 38.77880717421169>, <1.300721711196347, 2.0, 38.77880717421169>, <2.2954920205524316, 2.0, 38.67666985672391>}
  triangle { <2.2954920205524316, 2.0, 38.67666985672391>, <1.300721711196347, 2.0, 38.77880717421169>, <2.285278288803654, 2.0, 38.5771928257883>}
  triangle { <1.300721711196347, 2.0, 38.77880717421169>, <1.2905079794475691, 2.0, 38.67933014327608>, <2.285278288803654, 2.0, 38.5771928257883>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <1.300721711196347, 2.0, 38.77880717421169>, <1.300721711196347, 0.0, 38.77880717421169>, <1.2905079794475691, 2.0, 38.67933014327608>}
  triangle { <1.300721711196347, 0.0, 38.77880717421169>, <1.2905079794475691, 0.0, 38.67933014327608>, <1.2905079794475691, 2.0, 38.67933014327608>}
  triangle { <1.2905079794475691, 2.0, 38.67933014327608>, <1.2905079794475691, 0.0, 38.67933014327608>, <2.285278288803654, 2.0, 38.5771928257883>}
  triangle { <1.2905079794475691, 0.0, 38.67933014327608>, <2.285278288803654, 0.0, 38.5771928257883>, <2.285278288803654, 2.0, 38.5771928257883>}
  triangle { <2.285278288803654, 2.0, 38.5771928257883>, <2.285278288803654, 0.0, 38.5771928257883>, <2.2954920205524316, 2.0, 38.67666985672391>}
  triangle { <2.285278288803654, 0.0, 38.5771928257883>, <2.2954920205524316, 0.0, 38.67666985672391>, <2.2954920205524316, 2.0, 38.67666985672391>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <88.76558776693169, 0.0, -9.08623118682001>, <88.4628304541891, 0.0, -9.34976470716587>, <88.43763313268214, 0.0, -10.34944720425626>}
  triangle { <88.76558776693169, 0.0, -9.08623118682001>, <88.43763313268214, 0.0, -10.34944720425626>, <88.62056188873505, 0.0, -10.55351365839188>}
  triangle { <88.76558776693169, 0.0, -9.08623118682001>, <88.62056188873505, 0.0, -10.55351365839188>, <89.6170416930674, 0.0, -10.6373468234147>}
  triangle { <88.76558776693169, 0.0, -9.08623118682001>, <89.6170416930674, 0.0, -10.6373468234147>, <89.75919788453275, 0.0, -9.199098073907466>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <87.58263442410033, 0.0, -14.745655561287819>, <87.52522495220843, 0.0, -15.744006277487841>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <87.52522495220843, 0.0, -15.744006277487841>, <88.0859152121335, 0.0, -16.413951034052896>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <88.0859152121335, 0.0, -16.413951034052896>, <89.07876537935476, 0.0, -16.533318305315714>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <89.07876537935476, 0.0, -16.533318305315714>, <89.9707176190701, 0.0, -15.067860190404547>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <89.9707176190701, 0.0, -15.067860190404547>, <89.40860605271313, 0.0, -14.24079877372032>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <89.40860605271313, 0.0, -14.24079877372032>, <89.31832470305051, 0.0, -14.188035237502028>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <81.33138273986536, 0.0, -12.853904155219755>, <81.43717847177162, 0.0, -11.85951627158962>, <81.43082152822838, 0.0, -12.86448372841038>}
  triangle { <81.43717847177162, 0.0, -11.85951627158962>, <81.53661726013463, 0.0, -11.870095844780245>, <81.43082152822838, 0.0, -12.86448372841038>}
  triangle { <81.43082152822838, 0.0, -12.86448372841038>, <81.53661726013463, 0.0, -11.870095844780245>, <81.43082152822838, 2.0, -12.86448372841038>}
  triangle { <81.53661726013463, 0.0, -11.870095844780245>, <81.53661726013463, 2.0, -11.870095844780245>, <81.43082152822838, 2.0, -12.86448372841038>}
  triangle { <81.43082152822838, 2.0, -12.86448372841038>, <81.53661726013463, 2.0, -11.870095844780245>, <81.33138273986536, 2.0, -12.853904155219755>}
  triangle { <81.53661726013463, 2.0, -11.870095844780245>, <81.43717847177162, 2.0, -11.85951627158962>, <81.33138273986536, 2.0, -12.853904155219755>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <81.53661726013463, 2.0, -11.870095844780245>, <81.53661726013463, 0.0, -11.870095844780245>, <81.43717847177162, 2.0, -11.85951627158962>}
  triangle { <81.53661726013463, 0.0, -11.870095844780245>, <81.43717847177162, 0.0, -11.85951627158962>, <81.43717847177162, 2.0, -11.85951627158962>}
  triangle { <81.43717847177162, 2.0, -11.85951627158962>, <81.43717847177162, 0.0, -11.85951627158962>, <81.33138273986536, 2.0, -12.853904155219755>}
  triangle { <81.43717847177162, 0.0, -11.85951627158962>, <81.33138273986536, 0.0, -12.853904155219755>, <81.33138273986536, 2.0, -12.853904155219755>}
  triangle { <81.33138273986536, 2.0, -12.853904155219755>, <81.33138273986536, 0.0, -12.853904155219755>, <81.43082152822838, 2.0, -12.86448372841038>}
  triangle { <81.33138273986536, 0.0, -12.853904155219755>, <81.43082152822838, 0.0, -12.86448372841038>, <81.43082152822838, 2.0, -12.86448372841038>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <84.82476751124723, 0.0, -12.017510545956714>, <84.77879717032833, 0.0, -13.016453351004031>}
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <84.77879717032833, 0.0, -13.016453351004031>, <84.95908203389111, 0.0, -13.228474321461755>}
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <84.95908203389111, 0.0, -13.228474321461755>, <85.95242455401045, 0.0, -13.343672575454507>}
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <85.95242455401045, 0.0, -13.343672575454507>, <86.0694302516052, 0.0, -11.831026775005597>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <32.885457022121905, 0.0, 32.49524219210339>, <33.88183780476117, 0.0, 32.410240215731335>}
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <33.88183780476117, 0.0, 32.410240215731335>, <34.82577638357442, 0.0, 34.199739901078594>}
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <34.82577638357442, 0.0, 34.199739901078594>, <34.19301736937973, 0.0, 34.97408867905616>}
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <34.19301736937973, 0.0, 34.97408867905616>, <34.12180861757728, 0.0, 35.01227703487515>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <53.354830890825546, 0.0, 51.666725380993086>, <53.25465126379002, 0.0, 50.67175601346109>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <53.25465126379002, 0.0, 50.67175601346109>, <53.283993153605486, 0.0, 50.57427732891986>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <53.283993153605486, 0.0, 50.57427732891986>, <53.916752167800176, 0.0, 49.7999285509423>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <53.916752167800176, 0.0, 49.7999285509423>, <53.9811344449339, 0.0, 49.7645167996789>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <53.9811344449339, 0.0, 49.7645167996789>, <54.97393866257303, 0.0, 49.64476795651983>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <54.97393866257303, 0.0, 49.64476795651983>, <55.92004585108769, 0.0, 50.40099814240076>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <55.92004585108769, 0.0, 50.40099814240076>, <56.02199127190947, 0.0, 51.39578813590365>}
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <56.02199127190947, 0.0, 51.39578813590365>, <55.3404785851387, 0.0, 52.28084258923507>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <52.11926310460162, 0.0, -32.65344206341589>, <52.01013971659527, 0.0, -33.64747027538475>, <52.01986028340473, 0.0, -32.64252972461525>}
  triangle { <52.01013971659527, 0.0, -33.64747027538475>, <51.91073689539838, 0.0, -33.63655793658411>, <52.01986028340473, 0.0, -32.64252972461525>}
  triangle { <52.01986028340473, 0.0, -32.64252972461525>, <51.91073689539838, 0.0, -33.63655793658411>, <52.01986028340473, 2.0, -32.64252972461525>}
  triangle { <51.91073689539838, 0.0, -33.63655793658411>, <51.91073689539838, 2.0, -33.63655793658411>, <52.01986028340473, 2.0, -32.64252972461525>}
  triangle { <52.01986028340473, 2.0, -32.64252972461525>, <51.91073689539838, 2.0, -33.63655793658411>, <52.11926310460162, 2.0, -32.65344206341589>}
  triangle { <51.91073689539838, 2.0, -33.63655793658411>, <52.01013971659527, 2.0, -33.64747027538475>, <52.11926310460162, 2.0, -32.65344206341589>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <51.91073689539838, 2.0, -33.63655793658411>, <51.91073689539838, 0.0, -33.63655793658411>, <52.01013971659527, 2.0, -33.64747027538475>}
  triangle { <51.91073689539838, 0.0, -33.63655793658411>, <52.01013971659527, 0.0, -33.64747027538475>, <52.01013971659527, 2.0, -33.64747027538475>}
  triangle { <52.01013971659527, 2.0, -33.64747027538475>, <52.01013971659527, 0.0, -33.64747027538475>, <52.11926310460162, 2.0, -32.65344206341589>}
  triangle { <52.01013971659527, 0.0, -33.64747027538475>, <52.11926310460162, 0.0, -32.65344206341589>, <52.11926310460162, 2.0, -32.65344206341589>}
  triangle { <52.11926310460162, 2.0, -32.65344206341589>, <52.11926310460162, 0.0, -32.65344206341589>, <52.01986028340473, 2.0, -32.64252972461525>}
  triangle { <52.11926310460162, 0.0, -32.65344206341589>, <52.01986028340473, 0.0, -32.64252972461525>, <52.01986028340473, 2.0, -32.64252972461525>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <56.46510970419867, 0.0, 11.340216240809724>, <56.36236103069826, 0.0, 10.345508891840236>, <56.36563896930172, 0.0, 11.350491108159765>}
  triangle { <56.36236103069826, 0.0, 10.345508891840236>, <56.26289029580131, 0.0, 10.355783759190277>, <56.36563896930172, 0.0, 11.350491108159765>}
  triangle { <56.36563896930172, 0.0, 11.350491108159765>, <56.26289029580131, 0.0, 10.355783759190277>, <56.36563896930172, 2.0, 11.350491108159765>}
  triangle { <56.26289029580131, 0.0, 10.355783759190277>, <56.26289029580131, 2.0, 10.355783759190277>, <56.36563896930172, 2.0, 11.350491108159765>}
  triangle { <56.36563896930172, 2.0, 11.350491108159765>, <56.26289029580131, 2.0, 10.355783759190277>, <56.46510970419867, 2.0, 11.340216240809724>}
  triangle { <56.26289029580131, 2.0, 10.355783759190277>, <56.36236103069826, 2.0, 10.345508891840236>, <56.46510970419867, 2.0, 11.340216240809724>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <56.26289029580131, 2.0, 10.355783759190277>, <56.26289029580131, 0.0, 10.355783759190277>, <56.36236103069826, 2.0, 10.345508891840236>}
  triangle { <56.26289029580131, 0.0, 10.355783759190277>, <56.36236103069826, 0.0, 10.345508891840236>, <56.36236103069826, 2.0, 10.345508891840236>}
  triangle { <56.36236103069826, 2.0, 10.345508891840236>, <56.36236103069826, 0.0, 10.345508891840236>, <56.46510970419867, 2.0, 11.340216240809724>}
  triangle { <56.36236103069826, 0.0, 10.345508891840236>, <56.46510970419867, 0.0, 11.340216240809724>, <56.46510970419867, 2.0, 11.340216240809724>}
  triangle { <56.46510970419867, 2.0, 11.340216240809724>, <56.46510970419867, 0.0, 11.340216240809724>, <56.36563896930172, 2.0, 11.350491108159765>}
  triangle { <56.46510970419867, 0.0, 11.340216240809724>, <56.36563896930172, 0.0, 11.350491108159765>, <56.36563896930172, 2.0, 11.350491108159765>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <32.30301103030029, 0.0, 25.66789513565129>, <32.069298033182896, 0.0, 25.472410177560064>, <31.976866568459407, 0.0, 24.476691128666715>}
  triangle { <32.30301103030029, 0.0, 25.66789513565129>, <31.976866568459407, 0.0, 24.476691128666715>, <32.16167509174056, 0.0, 24.249258565662952>}
  triangle { <32.30301103030029, 0.0, 25.66789513565129>, <32.16167509174056, 0.0, 24.249258565662952>, <33.155241332339585, 0.0, 24.13600607985389>}
  triangle { <32.30301103030029, 0.0, 25.66789513565129>, <33.155241332339585, 0.0, 24.13600607985389>, <33.299391812939554, 0.0, 25.58289315927924>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <49.45710830400129, 0.0, 14.002669255486229>, <49.335440996096715, 0.0, 13.0100983178766>}
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <49.335440996096715, 0.0, 13.0100983178766>, <50.56783499925179, 0.0, 12.68776707193779>}
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <50.56783499925179, 0.0, 12.68776707193779>, <50.947715487567066, 0.0, 13.612802646711726>}
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <50.947715487567066, 0.0, 13.612802646711726>, <50.68242378556213, 0.0, 14.065016557188708>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <28.81099230831381, 0.0, 17.170224126240008>, <27.970598356982602, 0.0, 15.099339689473796>, <28.964502853739535, 0.0, 14.98909518246167>}
  triangle { <28.81099230831381, 0.0, 17.170224126240008>, <28.964502853739535, 0.0, 14.98909518246167>, <29.531588679780132, 0.0, 15.437613879906392>}
  triangle { <28.81099230831381, 0.0, 17.170224126240008>, <29.531588679780132, 0.0, 15.437613879906392>, <29.653255987684698, 0.0, 16.430184817516018>}
  triangle { <28.81099230831381, 0.0, 17.170224126240008>, <29.653255987684698, 0.0, 16.430184817516018>, <29.600648590069138, 0.0, 16.55667465253447>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.44166114512153, 0.0, -2.427564936746026>, <104.53192931102001, 0.0, -3.9622453872850913>, <105.09404087737698, 0.0, -4.7893068039693185>}
  triangle { <105.44166114512153, 0.0, -2.427564936746026>, <105.09404087737698, 0.0, -4.7893068039693185>, <105.17516182519313, 0.0, -4.838912663815593>}
  triangle { <105.44166114512153, 0.0, -2.427564936746026>, <105.17516182519313, 0.0, -4.838912663815593>, <106.1675068389736, 0.0, -4.962409115687958>}
  triangle { <105.44166114512153, 0.0, -2.427564936746026>, <106.1675068389736, 0.0, -4.962409115687958>, <106.43702483380754, 0.0, -2.5237477171454925>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <81.98814640987652, 0.0, -72.09963541441944>, <80.7263341580807, 0.0, -71.75927483563825>, <80.3421262253072, 0.0, -75.74078011183641>}
  triangle { <81.98814640987652, 0.0, -72.09963541441944>, <80.3421262253072, 0.0, -75.74078011183641>, <81.6295397034981, 0.0, -75.64169791817683>}
  triangle { <81.98814640987652, 0.0, -72.09963541441944>, <81.6295397034981, 0.0, -75.64169791817683>, <82.6244708160263, 0.0, -75.74225676325473>}
  triangle { <81.98814640987652, 0.0, -72.09963541441944>, <82.6244708160263, 0.0, -75.74225676325473>, <83.88515909907609, 0.0, -76.08309537212554>}
  triangle { <83.88515909907609, 0.0, -76.08309537212554>, <84.27030026968465, 0.0, -72.10168026205446>, <82.98304338677971, 0.0, -72.20053142697132>}
  triangle { <81.98814640987652, 0.0, -72.09963541441944>, <83.88515909907609, 0.0, -76.08309537212554>, <82.98304338677971, 0.0, -72.20053142697132>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <87.58503167220898, 0.0, -84.62763070003652>, <87.23981524260944, 0.0, -85.91334690951854>, <91.21598468097454, 0.0, -86.34932465827572>}
  triangle { <87.70824907746852, 0.0, -83.63525099899408>, <87.58503167220898, 0.0, -84.62763070003652>, <91.21598468097454, 0.0, -86.34932465827572>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <87.70824907746852, 0.0, -83.63525099899408>, <91.21598468097454, 0.0, -86.34932465827572>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <91.21598468097454, 0.0, -86.34932465827572>, <91.1377127200291, 0.0, -85.06884038986097>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <91.1377127200291, 0.0, -85.06884038986097>, <91.26098301527608, 0.0, -84.07646725725927>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <91.26098301527608, 0.0, -84.07646725725927>, <91.60666418258094, 0.0, -82.79132367401866>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-79.02088667567477, 0.0, 75.80916875169162>, <-81.61045361985884, 0.0, 76.88780078082833>, <-82.45777477879875, 0.0, 68.83224040097751>}
  triangle { <-79.02088667567477, 0.0, 75.80916875169162>, <-82.45777477879875, 0.0, 68.83224040097751>, <-79.56358678265899, 0.0, 69.3124047087705>}
  triangle { <-79.02088667567477, 0.0, 75.80916875169162>, <-79.56358678265899, 0.0, 69.3124047087705>, <-78.56710830574299, 0.0, 69.22855576695737>}
  triangle { <-79.02088667567477, 0.0, 75.80916875169162>, <-78.56710830574299, 0.0, 69.22855576695737>, <-75.97314166932264, 0.0, 68.15046033766058>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-75.12656677598446, 0.0, 76.20609917823549>, <-78.02430712668658, 0.0, 75.7265297624766>}
  triangle { <-79.02088667567477, 0.0, 75.80916875169162>, <-75.97314166932264, 0.0, 68.15046033766058>, <-78.02430712668658, 0.0, 75.7265297624766>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-89.536452513917, 0.0, 64.89448933446671>, <-89.87692317074534, 0.0, 63.6832788717983>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-89.46940053653802, 0.0, 65.89223881821981>, <-89.536452513917, 0.0, 64.89448933446671>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-89.46940053653802, 0.0, 65.89223881821981>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-85.89928038689358, 0.0, 63.26095448927692>, <-85.92485468420553, 0.0, 64.65103234121685>}
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-85.92485468420553, 0.0, 64.65103234121685>, <-85.85739239179803, 0.0, 65.64875416572661>}
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-85.85739239179803, 0.0, 65.64875416572661>, <-85.51654712548552, 0.0, 66.85999405400916>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-94.70280583182439, 0.0, -44.32686978415001>, <-94.34974857939015, 0.0, -45.26247150310075>}
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-94.34974857939015, 0.0, -45.26247150310075>, <-93.21049127576119, 0.0, -45.11813966916222>}
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-93.21049127576119, 0.0, -45.11813966916222>, <-93.10190515147885, 0.0, -44.124052623872245>}
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-93.10190515147885, 0.0, -44.124052623872245>, <-93.2963024983847, 0.0, -43.885147729660744>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <80.92793681057366, 0.0, -82.58337019245242>, <80.78051780769282, 0.0, -84.01382536582814>, <81.77504588150101, 0.0, -84.11829502844527>}
  triangle { <80.92793681057366, 0.0, -82.58337019245242>, <81.77504588150101, 0.0, -84.11829502844527>, <82.00590466615017, 0.0, -83.93490638032512>}
  triangle { <80.92793681057366, 0.0, -82.58337019245242>, <82.00590466615017, 0.0, -83.93490638032512>, <82.12912207140971, 0.0, -82.94252667928268>}
  triangle { <80.92793681057366, 0.0, -82.58337019245242>, <82.12912207140971, 0.0, -82.94252667928268>, <81.92286792310186, 0.0, -82.68392903753032>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-97.89379806800275, 0.0, 78.59927562221964>, <-98.73699590303474, 0.0, 70.54328259896005>}
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-98.73699590303474, 0.0, 70.54328259896005>, <-95.95439578117183, 0.0, 71.07083752568731>}
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-95.95439578117183, 0.0, 71.07083752568731>, <-94.96074654370645, 0.0, 70.95831555945647>}
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-94.96074654370645, 0.0, 70.95831555945647>, <-92.29463816686595, 0.0, 69.8671622280497>}
  triangle { <-92.29463816686595, 0.0, 69.8671622280497>, <-91.44694526504585, 0.0, 77.92268349758984>, <-94.2311712439049, 0.0, 77.39704453428783>}
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-92.29463816686595, 0.0, 69.8671622280497>, <-94.2311712439049, 0.0, 77.39704453428783>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-87.72689742104214, 0.0, 81.28566626765173>, <-88.0886748048033, 0.0, 80.02789025773754>, <-84.11439600886169, 0.0, 79.57500169293493>}
  triangle { <-87.60773796190006, 0.0, 82.27854139741224>, <-87.72689742104214, 0.0, 81.28566626765173>, <-84.11439600886169, 0.0, 79.57500169293493>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-87.60773796190006, 0.0, 82.27854139741224>, <-84.11439600886169, 0.0, 79.57500169293493>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-84.11439600886169, 0.0, 79.57500169293493>, <-84.19236679633282, 0.0, 80.8612061653098>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-84.19236679633282, 0.0, 80.8612061653098>, <-84.07306056750848, 0.0, 81.85406366956894>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-84.07306056750848, 0.0, 81.85406366956894>, <-83.71095988987008, 0.0, 83.11159114378742>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <84.4806935189796, 0.0, -40.53098713534157>, <85.01261053049193, 0.0, -41.37778362379898>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <85.01261053049193, 0.0, -41.37778362379898>, <85.09916649734205, 0.0, -41.43152897511943>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <85.09916649734205, 0.0, -41.43152897511943>, <86.09402956726586, 0.0, -41.53275877360668>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <86.09402956726586, 0.0, -41.53275877360668>, <86.34450376980865, 0.0, -39.27583447029798>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <55.05664009262479, 0.0, -59.01376874634803>, <52.55201870831949, 0.0, -59.60653891929296>, <52.456092661138804, 0.0, -60.60192738289513>}
  triangle { <55.05664009262479, 0.0, -59.01376874634803>, <52.456092661138804, 0.0, -60.60192738289513>, <55.49576237913884, 0.0, -60.90951117604793>}
  triangle { <55.05664009262479, 0.0, -59.01376874634803>, <55.49576237913884, 0.0, -60.90951117604793>, <55.60118555189587, 0.0, -59.915083725378025>}
  triangle { <55.05664009262479, 0.0, -59.01376874634803>, <55.60118555189587, 0.0, -59.915083725378025>, <55.58855710413711, 0.0, -59.86056523480544>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <83.45613030624334, 0.0, -57.578909030194026>, <82.5150949358918, 0.0, -59.27646923073621>, <83.12809535910418, 0.0, -60.06655180942114>}
  triangle { <83.45613030624334, 0.0, -57.578909030194026>, <83.12809535910418, 0.0, -60.06655180942114>, <83.20076349114791, 0.0, -60.10676633208946>}
  triangle { <83.45613030624334, 0.0, -57.578909030194026>, <83.20076349114791, 0.0, -60.10676633208946>, <84.19577209787246, 0.0, -60.206555472500874>}
  triangle { <83.45613030624334, 0.0, -57.578909030194026>, <84.19577209787246, 0.0, -60.206555472500874>, <84.45099337616715, 0.0, -57.68013882868128>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-68.36882416473478, 0.0, -46.578367355800175>, <-68.63595132648445, 0.0, -46.78635191796091>, <-68.74366989633643, 0.0, -47.78053334491931>}
  triangle { <-68.36882416473478, 0.0, -46.578367355800175>, <-68.74366989633643, 0.0, -47.78053334491931>, <-67.31260617980374, 0.0, -47.93628965872149>}
  triangle { <-68.36882416473478, 0.0, -46.578367355800175>, <-67.31260617980374, 0.0, -47.93628965872149>, <-67.20392367402329, 0.0, -46.94221314610424>}
  triangle { <-68.36882416473478, 0.0, -46.578367355800175>, <-67.20392367402329, 0.0, -46.94221314610424>, <-67.37857481993458, 0.0, -46.71767361956021>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-80.58025817304987, 0.0, -45.23563992663016>, <-80.87439046470021, 0.0, -45.459688608400675>, <-80.98297658898255, 0.0, -46.45377565369065>}
  triangle { <-80.58025817304987, 0.0, -45.23563992663016>, <-80.98297658898255, 0.0, -46.45377565369065>, <-79.5311068594682, 0.0, -46.61172526771353>}
  triangle { <-80.58025817304987, 0.0, -45.23563992663016>, <-79.5311068594682, 0.0, -46.61172526771353>, <-79.42338828961621, 0.0, -45.617543840755125>}
  triangle { <-80.58025817304987, 0.0, -45.23563992663016>, <-79.42338828961621, 0.0, -45.617543840755125>, <-79.593041478014, 0.0, -45.39502373083384>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-83.1266057694088, 0.0, 65.46410838461159>, <-83.1940680618163, 0.0, 64.46638656010182>}
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-83.1940680618163, 0.0, 64.46638656010182>, <-83.00702380582759, 0.0, 64.24350643206863>}
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-83.00702380582759, 0.0, 64.24350643206863>, <-82.01273051138729, 0.0, 64.13682539049584>}
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-82.01273051138729, 0.0, 64.13682539049584>, <-81.7558493005777, 0.0, 64.34528097294006>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-73.19197704335629, 0.0, -37.29573275788209>, <-72.19751413728088, 0.0, -37.40082095151038>, <-73.20248586271912, 0.0, -37.39517904848963>}
  triangle { <-72.19751413728088, 0.0, -37.40082095151038>, <-72.2080229566437, 0.0, -37.50026724211792>, <-73.20248586271912, 0.0, -37.39517904848963>}
  triangle { <-73.20248586271912, 0.0, -37.39517904848963>, <-72.2080229566437, 0.0, -37.50026724211792>, <-73.20248586271912, 2.0, -37.39517904848963>}
  triangle { <-72.2080229566437, 0.0, -37.50026724211792>, <-72.2080229566437, 2.0, -37.50026724211792>, <-73.20248586271912, 2.0, -37.39517904848963>}
  triangle { <-73.20248586271912, 2.0, -37.39517904848963>, <-72.2080229566437, 2.0, -37.50026724211792>, <-73.19197704335629, 2.0, -37.29573275788209>}
  triangle { <-72.2080229566437, 2.0, -37.50026724211792>, <-72.19751413728088, 2.0, -37.40082095151038>, <-73.19197704335629, 2.0, -37.29573275788209>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <-72.2080229566437, 2.0, -37.50026724211792>, <-72.2080229566437, 0.0, -37.50026724211792>, <-72.19751413728088, 2.0, -37.40082095151038>}
  triangle { <-72.2080229566437, 0.0, -37.50026724211792>, <-72.19751413728088, 0.0, -37.40082095151038>, <-72.19751413728088, 2.0, -37.40082095151038>}
  triangle { <-72.19751413728088, 2.0, -37.40082095151038>, <-72.19751413728088, 0.0, -37.40082095151038>, <-73.19197704335629, 2.0, -37.29573275788209>}
  triangle { <-72.19751413728088, 0.0, -37.40082095151038>, <-73.19197704335629, 0.0, -37.29573275788209>, <-73.19197704335629, 2.0, -37.29573275788209>}
  triangle { <-73.19197704335629, 2.0, -37.29573275788209>, <-73.19197704335629, 0.0, -37.29573275788209>, <-73.20248586271912, 2.0, -37.39517904848963>}
  triangle { <-73.19197704335629, 0.0, -37.29573275788209>, <-73.20248586271912, 0.0, -37.39517904848963>, <-73.20248586271912, 2.0, -37.39517904848963>}
 uv_mapping  texture { texture_ENTRANCE_DEFAULT }}
mesh {
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <42.963673403151056, 0.0, -58.70531448352311>, <42.899274237150074, 0.0, -59.703238702799496>}
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <42.899274237150074, 0.0, -59.703238702799496>, <44.29876276977065, 0.0, -59.81580172377705>}
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <44.29876276977065, 0.0, -59.81580172377705>, <44.39468881695133, 0.0, -58.82041326017488>}
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <44.39468881695133, 0.0, -58.82041326017488>, <44.19316914887476, 0.0, -58.58059439037445>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.628625138651856, 0.0, -57.98034465847438>, <35.37798185152884, 0.0, -58.18093636516033>, <35.26531436853873, 0.0, -59.17456911335086>}
  triangle { <35.628625138651856, 0.0, -57.98034465847438>, <35.26531436853873, 0.0, -59.17456911335086>, <36.74328508078836, 0.0, -59.305973499768115>}
  triangle { <35.628625138651856, 0.0, -57.98034465847438>, <36.74328508078836, 0.0, -59.305973499768115>, <36.80768424678934, 0.0, -58.30804928049173>}
  triangle { <35.628625138651856, 0.0, -57.98034465847438>, <36.80768424678934, 0.0, -58.30804928049173>, <36.62279532762864, 0.0, -58.08816689806281>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <98.34165722101578, 0.0, -64.50867207822525>, <98.23278382450737, 0.0, -65.50272770218838>}
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <98.23278382450737, 0.0, -65.50272770218838>, <98.41836672105717, 0.0, -65.73407340000678>}
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <98.41836672105717, 0.0, -65.73407340000678>, <99.41237118405118, 0.0, -65.84341290589553>}
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <99.41237118405118, 0.0, -65.84341290589553>, <99.56768427703359, 0.0, -64.43197161414011>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <79.45521042016759, 0.0, -61.650538161913104>, <77.4231788322653, 0.0, -62.22851922632819>, <77.31775565950825, 0.0, -63.22294667699809>}
  triangle { <79.45521042016759, 0.0, -61.650538161913104>, <77.31775565950825, 0.0, -63.22294667699809>, <79.98042075135818, 0.0, -63.51026988405327>}
  triangle { <79.45521042016759, 0.0, -61.650538161913104>, <79.98042075135818, 0.0, -63.51026988405327>, <80.08956782725117, 0.0, -62.51624427280173>}
  triangle { <79.45521042016759, 0.0, -61.650538161913104>, <80.08956782725117, 0.0, -62.51624427280173>, <80.06821084337997, 0.0, -62.440620740598035>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-79.89486800170194, 0.0, 65.3753889582495>, <-80.12320115900376, 0.0, 65.18571571205975>, <-80.22353266126517, 0.0, 64.19076164796736>}
  triangle { <-79.89486800170194, 0.0, 65.3753889582495>, <-80.22353266126517, 0.0, 64.19076164796736>, <-78.79124507073593, 0.0, 64.04576289932493>}
  triangle { <-79.89486800170194, 0.0, 65.3753889582495>, <-78.79124507073593, 0.0, 64.04576289932493>, <-78.69013465816408, 0.0, 65.040638109826>}
  triangle { <-79.89486800170194, 0.0, 65.3753889582495>, <-78.69013465816408, 0.0, 65.040638109826>, <-78.89838952478594, 0.0, 65.29154001643637>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-95.34953384195798, 0.0, 83.18953826201619>, <-95.45453562628738, 0.0, 82.19506622857952>}
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-95.45453562628738, 0.0, 82.19506622857952>, <-94.78776596303705, 0.0, 81.3643503968578>}
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-94.78776596303705, 0.0, 81.3643503968578>, <-93.79413213721868, 0.0, 81.25169241804774>}
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-93.79413213721868, 0.0, 81.25169241804774>, <-92.95755709403532, 0.0, 81.91342151995666>}
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-92.95755709403532, 0.0, 81.91342151995666>, <-92.83839763489324, 0.0, 82.90629664971716>}
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-92.83839763489324, 0.0, 82.90629664971716>, <-92.86377279732714, 0.0, 82.99103476256384>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-108.51516851072184, 0.0, -65.60904347897728>, <-109.3143674230062, 0.0, -66.21011011305664>}
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-109.3143674230062, 0.0, -66.21011011305664>, <-109.35830043679944, 0.0, -66.5073051852903>}
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-109.35830043679944, 0.0, -66.5073051852903>, <-108.7671890818432, 0.0, -67.31389514682084>}
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-108.7671890818432, 0.0, -67.31389514682084>, <-108.48549285779897, 0.0, -67.36157730792561>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <96.12012650812078, 0.0, -84.68005882310514>, <95.9968562128738, 0.0, -85.67243195570684>}
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <95.9968562128738, 0.0, -85.67243195570684>, <96.19719767099687, 0.0, -85.92594754310784>}
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <96.19719767099687, 0.0, -85.92594754310784>, <97.19118961261253, 0.0, -86.03540082082557>}
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <97.19118961261253, 0.0, -86.03540082082557>, <97.34872667397727, 0.0, -84.60398655558546>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <114.85942836683174, 0.0, 93.37381616628026>, <114.69656273655461, 0.0, 91.94335722194536>, <115.69010964486678, 0.0, 91.82993526206393>}
  triangle { <114.85942836683174, 0.0, 93.37381616628026>, <115.69010964486678, 0.0, 91.82993526206393>, <115.9399612653951, 0.0, 92.03083759546881>}
  triangle { <114.85942836683174, 0.0, 93.37381616628026>, <115.9399612653951, 0.0, 92.03083759546881>, <116.04245513805033, 0.0, 93.0255712312066>}
  triangle { <114.85942836683174, 0.0, 93.37381616628026>, <116.04245513805033, 0.0, 93.0255712312066>, <115.85304297759592, 0.0, 93.26098884123918>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-11.296432192781014, 0.0, 74.19427926252972>, <-13.767660758144475, 0.0, 75.33287532316035>, <-14.444177589754174, 0.0, 74.59644815327266>}
  triangle { <-11.296432192781014, 0.0, 74.19427926252972>, <-14.444177589754174, 0.0, 74.59644815327266>, <-14.46508197230487, 0.0, 74.55002121373886>}
  triangle { <-11.296432192781014, 0.0, 74.19427926252972>, <-14.46508197230487, 0.0, 74.55002121373886>, <-14.568023814511445, 0.0, 73.5553338371611>}
  triangle { <-11.296432192781014, 0.0, 74.19427926252972>, <-14.568023814511445, 0.0, 73.5553338371611>, <-11.416618615379006, 0.0, 73.20152792215133>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-78.19692406245704, 0.0, 81.83167363444592>, <-79.07684357285058, 0.0, 81.35655085533635>}
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-79.07684357285058, 0.0, 81.35655085533635>, <-79.14156154104091, 0.0, 81.26147253864141>}
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-79.14156154104091, 0.0, 81.26147253864141>, <-79.26086776986526, 0.0, 80.26861503438226>}
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-79.26086776986526, 0.0, 80.26861503438226>, <-78.7073662707251, 0.0, 79.59004781049045>}
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-78.7073662707251, 0.0, 79.59004781049045>, <-77.71078672173691, 0.0, 79.50740882127543>}
  triangle { <-76.98331986266093, 0.0, 81.02013708279173>, <-77.71078672173691, 0.0, 79.50740882127543>, <-77.08626170486751, 0.0, 80.02544970621398>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <112.70576177888375, 0.0, 61.68576549706767>, <111.73458779645384, 0.0, 61.447393737307344>}
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <111.73458779645384, 0.0, 61.447393737307344>, <111.45567504495739, 0.0, 61.13158506505907>}
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <111.45567504495739, 0.0, 61.13158506505907>, <111.33917046642443, 0.0, 60.13839491046588>}
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <111.33917046642443, 0.0, 60.13839491046588>, <111.88247600621648, 0.0, 59.4682572319363>}
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <111.88247600621648, 0.0, 59.4682572319363>, <112.87829106889603, 0.0, 59.376865979945144>}
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <112.87829106889603, 0.0, 59.376865979945144>, <112.98563177957467, 0.0, 59.42060106199613>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <94.81956046483167, 0.0, 63.61047715637953>, <94.03775262090333, 0.0, 62.98695771388226>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <94.03775262090333, 0.0, 62.98695771388226>, <93.9840635801863, 0.0, 62.833961905517704>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <93.9840635801863, 0.0, 62.833961905517704>, <94.20480493764668, 0.0, 61.85862952468205>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <94.20480493764668, 0.0, 61.85862952468205>, <94.4312056714321, 0.0, 61.65898126572281>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <94.4312056714321, 0.0, 61.65898126572281>, <95.42648982150105, 0.0, 61.56197889141419>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <95.42648982150105, 0.0, 61.56197889141419>, <95.90627833650751, 0.0, 61.94872557557097>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <95.90627833650751, 0.0, 61.94872557557097>, <96.02278291504047, 0.0, 62.94191573016416>}
  triangle { <95.10490312544911, 0.0, 63.6262617554575>, <96.02278291504047, 0.0, 62.94191573016416>, <95.9507140723976, 0.0, 63.09277900782444>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <92.6065077423244, 0.0, 46.88585765987982>, <92.25304791846557, 0.0, 45.95040795363276>}
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <92.25304791846557, 0.0, 45.95040795363276>, <93.45967505253584, 0.0, 44.885007297750924>}
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <93.45967505253584, 0.0, 44.885007297750924>, <94.34415181957051, 0.0, 45.35159153299244>}
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <94.34415181957051, 0.0, 45.35159153299244>, <94.4160567693086, 0.0, 45.46016956902355>}
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <94.4160567693086, 0.0, 45.46016956902355>, <94.50045126709631, 0.0, 46.4566019895836>}
  triangle { <93.01621041571299, 0.0, 47.140549521368065>, <94.50045126709631, 0.0, 46.4566019895836>, <94.01149456578194, 0.0, 47.04354714705945>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-1.027379759922045, 0.0, 10.621531941658544>, <-1.847620240077955, 0.0, 12.799468058341455>}
  triangle { <-1.027379759922045, 0.0, 10.621531941658544>, <-0.8511429753014443, 0.0, 12.715604712453493>, <-1.847620240077955, 0.0, 12.799468058341455>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-1.027379759922045, 0.0, 10.621531941658544>, <-1.998680341181327, 0.1, 11.004548540517213>}
  triangle { <-1.027379759922045, 0.0, 10.621531941658544>, <-1.0022030764048164, 0.1, 10.92068519462925>, <-1.998680341181327, 0.1, 11.004548540517213>}
  triangle { <-1.998680341181327, 0.1, 11.004548540517213>, <-1.0022030764048164, 0.1, 10.92068519462925>, <-1.998680341181327, 0.0, 11.004548540517213>}
  triangle { <-1.0022030764048164, 0.1, 10.92068519462925>, <-1.0022030764048164, 0.0, 10.92068519462925>, <-1.998680341181327, 0.0, 11.004548540517213>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-2.0238570246985557, 0.0, 10.705395287546507>, <-1.998680341181327, 0.1, 11.004548540517213>, <-1.998680341181327, 0.0, 11.004548540517213>}
  triangle { <-1.0022030764048164, 0.0, 10.92068519462925>, <-1.0022030764048164, 0.1, 10.92068519462925>, <-1.027379759922045, 0.0, 10.621531941658544>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.998680341181327, 0.0, 11.004548540517213>, <-1.0022030764048164, 0.0, 10.92068519462925>, <-1.9735036576640983, 0.1, 11.30370179348792>}
  triangle { <-1.0022030764048164, 0.0, 10.92068519462925>, <-0.9770263928875877, 0.1, 11.219838447599956>, <-1.9735036576640983, 0.1, 11.30370179348792>}
  triangle { <-1.9735036576640983, 0.1, 11.30370179348792>, <-0.9770263928875877, 0.1, 11.219838447599956>, <-1.9735036576640983, 0.0, 11.30370179348792>}
  triangle { <-0.9770263928875877, 0.1, 11.219838447599956>, <-0.9770263928875877, 0.0, 11.219838447599956>, <-1.9735036576640983, 0.0, 11.30370179348792>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.998680341181327, 0.0, 11.004548540517213>, <-1.9735036576640983, 0.1, 11.30370179348792>, <-1.9735036576640983, 0.0, 11.30370179348792>}
  triangle { <-0.9770263928875877, 0.0, 11.219838447599956>, <-0.9770263928875877, 0.1, 11.219838447599956>, <-1.0022030764048164, 0.0, 10.92068519462925>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.9735036576640983, 0.0, 11.30370179348792>, <-0.9770263928875877, 0.0, 11.219838447599956>, <-1.9483269741468696, 0.1, 11.602855046458625>}
  triangle { <-0.9770263928875877, 0.0, 11.219838447599956>, <-0.9518497093703591, 0.1, 11.518991700570663>, <-1.9483269741468696, 0.1, 11.602855046458625>}
  triangle { <-1.9483269741468696, 0.1, 11.602855046458625>, <-0.9518497093703591, 0.1, 11.518991700570663>, <-1.9483269741468696, 0.0, 11.602855046458625>}
  triangle { <-0.9518497093703591, 0.1, 11.518991700570663>, <-0.9518497093703591, 0.0, 11.518991700570663>, <-1.9483269741468696, 0.0, 11.602855046458625>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.9735036576640983, 0.0, 11.30370179348792>, <-1.9483269741468696, 0.1, 11.602855046458625>, <-1.9483269741468696, 0.0, 11.602855046458625>}
  triangle { <-0.9518497093703591, 0.0, 11.518991700570663>, <-0.9518497093703591, 0.1, 11.518991700570663>, <-0.9770263928875877, 0.0, 11.219838447599956>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.9483269741468696, 0.0, 11.602855046458625>, <-0.9518497093703591, 0.0, 11.518991700570663>, <-1.923150290629641, 0.1, 11.902008299429331>}
  triangle { <-0.9518497093703591, 0.0, 11.518991700570663>, <-0.9266730258531304, 0.1, 11.818144953541369>, <-1.923150290629641, 0.1, 11.902008299429331>}
  triangle { <-1.923150290629641, 0.1, 11.902008299429331>, <-0.9266730258531304, 0.1, 11.818144953541369>, <-1.923150290629641, 0.0, 11.902008299429331>}
  triangle { <-0.9266730258531304, 0.1, 11.818144953541369>, <-0.9266730258531304, 0.0, 11.818144953541369>, <-1.923150290629641, 0.0, 11.902008299429331>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.9483269741468696, 0.0, 11.602855046458625>, <-1.923150290629641, 0.1, 11.902008299429331>, <-1.923150290629641, 0.0, 11.902008299429331>}
  triangle { <-0.9266730258531304, 0.0, 11.818144953541369>, <-0.9266730258531304, 0.1, 11.818144953541369>, <-0.9518497093703591, 0.0, 11.518991700570663>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.923150290629641, 0.0, 11.902008299429331>, <-0.9266730258531304, 0.0, 11.818144953541369>, <-1.8979736071124123, 0.1, 12.201161552400038>}
  triangle { <-0.9266730258531304, 0.0, 11.818144953541369>, <-0.9014963423359017, 0.1, 12.117298206512075>, <-1.8979736071124123, 0.1, 12.201161552400038>}
  triangle { <-1.8979736071124123, 0.1, 12.201161552400038>, <-0.9014963423359017, 0.1, 12.117298206512075>, <-1.8979736071124123, 0.0, 12.201161552400038>}
  triangle { <-0.9014963423359017, 0.1, 12.117298206512075>, <-0.9014963423359017, 0.0, 12.117298206512075>, <-1.8979736071124123, 0.0, 12.201161552400038>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.923150290629641, 0.0, 11.902008299429331>, <-1.8979736071124123, 0.1, 12.201161552400038>, <-1.8979736071124123, 0.0, 12.201161552400038>}
  triangle { <-0.9014963423359017, 0.0, 12.117298206512075>, <-0.9014963423359017, 0.1, 12.117298206512075>, <-0.9266730258531304, 0.0, 11.818144953541369>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.8979736071124123, 0.0, 12.201161552400038>, <-0.9014963423359017, 0.0, 12.117298206512075>, <-1.8727969235951836, 0.1, 12.500314805370744>}
  triangle { <-0.9014963423359017, 0.0, 12.117298206512075>, <-0.876319658818673, 0.1, 12.416451459482781>, <-1.8727969235951836, 0.1, 12.500314805370744>}
  triangle { <-1.8727969235951836, 0.1, 12.500314805370744>, <-0.876319658818673, 0.1, 12.416451459482781>, <-1.8727969235951836, 0.0, 12.500314805370744>}
  triangle { <-0.876319658818673, 0.1, 12.416451459482781>, <-0.876319658818673, 0.0, 12.416451459482781>, <-1.8727969235951836, 0.0, 12.500314805370744>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.8979736071124123, 0.0, 12.201161552400038>, <-1.8727969235951836, 0.1, 12.500314805370744>, <-1.8727969235951836, 0.0, 12.500314805370744>}
  triangle { <-0.876319658818673, 0.0, 12.416451459482781>, <-0.876319658818673, 0.1, 12.416451459482781>, <-0.9014963423359017, 0.0, 12.117298206512075>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.8727969235951836, 0.0, 12.500314805370744>, <-0.876319658818673, 0.0, 12.416451459482781>, <-1.847620240077955, 0.1, 12.79946805834145>}
  triangle { <-0.876319658818673, 0.0, 12.416451459482781>, <-0.8511429753014443, 0.1, 12.715604712453487>, <-1.847620240077955, 0.1, 12.79946805834145>}
  triangle { <-1.847620240077955, 0.1, 12.79946805834145>, <-0.8511429753014443, 0.1, 12.715604712453487>, <-1.847620240077955, 0.0, 12.79946805834145>}
  triangle { <-0.8511429753014443, 0.1, 12.715604712453487>, <-0.8511429753014443, 0.0, 12.715604712453487>, <-1.847620240077955, 0.0, 12.79946805834145>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.8727969235951836, 0.0, 12.500314805370744>, <-1.847620240077955, 0.1, 12.79946805834145>, <-1.847620240077955, 0.0, 12.79946805834145>}
  triangle { <-0.8511429753014443, 0.0, 12.715604712453487>, <-0.8511429753014443, 0.1, 12.715604712453487>, <-0.876319658818673, 0.0, 12.416451459482781>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-0.7302170398465927, 0.0, 14.150397349911819>, <-1.66222851655131, 0.0, 14.99805169788583>}
  triangle { <-0.7302170398465927, 0.0, 14.150397349911819>, <-0.66577148344869, 0.0, 14.91394830211417>, <-1.66222851655131, 0.0, 14.99805169788583>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-0.7302170398465927, 0.0, 14.150397349911819>, <-1.7051922208165782, 0.1, 14.489017729750929>}
  triangle { <-0.7302170398465927, 0.0, 14.150397349911819>, <-0.7087351877139584, 0.1, 14.404914333979269>, <-1.7051922208165782, 0.1, 14.489017729750929>}
  triangle { <-1.7051922208165782, 0.1, 14.489017729750929>, <-0.7087351877139584, 0.1, 14.404914333979269>, <-1.7051922208165782, 0.0, 14.489017729750929>}
  triangle { <-0.7087351877139584, 0.1, 14.404914333979269>, <-0.7087351877139584, 0.0, 14.404914333979269>, <-1.7051922208165782, 0.0, 14.489017729750929>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.7266740729492125, 0.0, 14.234500745683478>, <-1.7051922208165782, 0.1, 14.489017729750929>, <-1.7051922208165782, 0.0, 14.489017729750929>}
  triangle { <-0.7087351877139584, 0.0, 14.404914333979269>, <-0.7087351877139584, 0.1, 14.404914333979269>, <-0.7302170398465927, 0.0, 14.150397349911819>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.7051922208165782, 0.0, 14.489017729750929>, <-0.7087351877139584, 0.0, 14.404914333979269>, <-1.6837103686839439, 0.1, 14.743534713818379>}
  triangle { <-0.7087351877139584, 0.0, 14.404914333979269>, <-0.6872533355813241, 0.1, 14.65943131804672>, <-1.6837103686839439, 0.1, 14.743534713818379>}
  triangle { <-1.6837103686839439, 0.1, 14.743534713818379>, <-0.6872533355813241, 0.1, 14.65943131804672>, <-1.6837103686839439, 0.0, 14.743534713818379>}
  triangle { <-0.6872533355813241, 0.1, 14.65943131804672>, <-0.6872533355813241, 0.0, 14.65943131804672>, <-1.6837103686839439, 0.0, 14.743534713818379>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.7051922208165782, 0.0, 14.489017729750929>, <-1.6837103686839439, 0.1, 14.743534713818379>, <-1.6837103686839439, 0.0, 14.743534713818379>}
  triangle { <-0.6872533355813241, 0.0, 14.65943131804672>, <-0.6872533355813241, 0.1, 14.65943131804672>, <-0.7087351877139584, 0.0, 14.404914333979269>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.6837103686839439, 0.0, 14.743534713818379>, <-0.6872533355813241, 0.0, 14.65943131804672>, <-1.6622285165513095, 0.1, 14.99805169788583>}
  triangle { <-0.6872533355813241, 0.0, 14.65943131804672>, <-0.6657714834486897, 0.1, 14.91394830211417>, <-1.6622285165513095, 0.1, 14.99805169788583>}
  triangle { <-1.6622285165513095, 0.1, 14.99805169788583>, <-0.6657714834486897, 0.1, 14.91394830211417>, <-1.6622285165513095, 0.0, 14.99805169788583>}
  triangle { <-0.6657714834486897, 0.1, 14.91394830211417>, <-0.6657714834486897, 0.0, 14.91394830211417>, <-1.6622285165513095, 0.0, 14.99805169788583>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-1.6837103686839439, 0.0, 14.743534713818379>, <-1.6622285165513095, 0.1, 14.99805169788583>, <-1.6622285165513095, 0.0, 14.99805169788583>}
  triangle { <-0.6657714834486897, 0.0, 14.91394830211417>, <-0.6657714834486897, 0.1, 14.91394830211417>, <-0.6872533355813241, 0.0, 14.65943131804672>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-3.5479455615124325, 0.0, 10.886637201342852>, <-2.551912796613685, 0.0, 10.797649948052525>, <-3.3292776963824062, 0.0, 11.721526314039254>}
  triangle { <-2.551912796613685, 0.0, 10.797649948052525>, <-2.556722303617594, 0.0, 12.356473685960745>, <-3.3292776963824062, 0.0, 11.721526314039254>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-3.3292776963824062, 0.0, 11.721526314039254>, <-2.556722303617594, 0.0, 12.356473685960745>, <-11.196437220097557, 0.0, 12.562910137223508>}
  triangle { <-2.556722303617594, 0.0, 12.356473685960745>, <-10.413562779902442, 0.0, 13.185089862776493>, <-11.196437220097557, 0.0, 12.562910137223508>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-11.196437220097557, 0.0, 12.562910137223508>, <-10.413562779902442, 0.0, 13.185089862776493>, <-10.908192125145572, 0.0, 14.94793794643425>}
  triangle { <-10.413562779902442, 0.0, 13.185089862776493>, <-10.289807874854429, 0.0, 14.16206205356575>, <-10.908192125145572, 0.0, 14.94793794643425>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-10.908192125145572, 0.0, 14.94793794643425>, <-10.289807874854429, 0.0, 14.16206205356575>, <-1.9465880416623318, 0.0, 14.05463604467667>}
  triangle { <-10.289807874854429, 0.0, 14.16206205356575>, <-2.061819593820343, 0.0, 13.061297386721964>, <-1.9465880416623318, 0.0, 14.05463604467667>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.30696516258871, 0.0, -9.41429166448101>, <85.99103483741129, 0.0, -10.14370833551899>, <88.4628304541891, 0.0, -9.34976470716587>}
  triangle { <85.99103483741129, 0.0, -10.14370833551899>, <88.43763313268214, 0.0, -10.34944720425626>, <88.4628304541891, 0.0, -9.34976470716587>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.66159866075348, 0.0, -9.279158751454805>, <85.63640133924652, 0.0, -10.278841248545195>, <85.97284663780188, 0.1, -9.287003857644923>}
  triangle { <85.63640133924652, 0.0, -10.278841248545195>, <85.94764931629491, 0.1, -10.286686354735313>, <85.97284663780188, 0.1, -9.287003857644923>}
  triangle { <85.97284663780188, 0.1, -9.287003857644923>, <85.94764931629491, 0.1, -10.286686354735313>, <85.97284663780188, 0.0, -9.287003857644923>}
  triangle { <85.94764931629491, 0.1, -10.286686354735313>, <85.94764931629491, 0.0, -10.286686354735313>, <85.97284663780188, 0.0, -9.287003857644923>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.66159866075348, 0.0, -9.279158751454805>, <85.97284663780188, 0.1, -9.287003857644923>, <85.97284663780188, 0.0, -9.287003857644923>}
  triangle { <85.94764931629491, 0.0, -10.286686354735313>, <85.94764931629491, 0.1, -10.286686354735313>, <85.63640133924652, 0.0, -10.278841248545195>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.97284663780188, 0.0, -9.287003857644923>, <85.94764931629491, 0.0, -10.286686354735313>, <86.28409461485028, 0.1, -9.29484896383504>}
  triangle { <85.94764931629491, 0.0, -10.286686354735313>, <86.25889729334331, 0.1, -10.29453146092543>, <86.28409461485028, 0.1, -9.29484896383504>}
  triangle { <86.28409461485028, 0.1, -9.29484896383504>, <86.25889729334331, 0.1, -10.29453146092543>, <86.28409461485028, 0.0, -9.29484896383504>}
  triangle { <86.25889729334331, 0.1, -10.29453146092543>, <86.25889729334331, 0.0, -10.29453146092543>, <86.28409461485028, 0.0, -9.29484896383504>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.97284663780188, 0.0, -9.287003857644923>, <86.28409461485028, 0.1, -9.29484896383504>, <86.28409461485028, 0.0, -9.29484896383504>}
  triangle { <86.25889729334331, 0.0, -10.29453146092543>, <86.25889729334331, 0.1, -10.29453146092543>, <85.94764931629491, 0.0, -10.286686354735313>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.28409461485028, 0.0, -9.29484896383504>, <86.25889729334331, 0.0, -10.29453146092543>, <86.59534259189867, 0.1, -9.302694070025158>}
  triangle { <86.25889729334331, 0.0, -10.29453146092543>, <86.5701452703917, 0.1, -10.302376567115548>, <86.59534259189867, 0.1, -9.302694070025158>}
  triangle { <86.59534259189867, 0.1, -9.302694070025158>, <86.5701452703917, 0.1, -10.302376567115548>, <86.59534259189867, 0.0, -9.302694070025158>}
  triangle { <86.5701452703917, 0.1, -10.302376567115548>, <86.5701452703917, 0.0, -10.302376567115548>, <86.59534259189867, 0.0, -9.302694070025158>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.28409461485028, 0.0, -9.29484896383504>, <86.59534259189867, 0.1, -9.302694070025158>, <86.59534259189867, 0.0, -9.302694070025158>}
  triangle { <86.5701452703917, 0.0, -10.302376567115548>, <86.5701452703917, 0.1, -10.302376567115548>, <86.25889729334331, 0.0, -10.29453146092543>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.59534259189867, 0.0, -9.302694070025158>, <86.5701452703917, 0.0, -10.302376567115548>, <86.90659056894707, 0.1, -9.310539176215276>}
  triangle { <86.5701452703917, 0.0, -10.302376567115548>, <86.8813932474401, 0.1, -10.310221673305666>, <86.90659056894707, 0.1, -9.310539176215276>}
  triangle { <86.90659056894707, 0.1, -9.310539176215276>, <86.8813932474401, 0.1, -10.310221673305666>, <86.90659056894707, 0.0, -9.310539176215276>}
  triangle { <86.8813932474401, 0.1, -10.310221673305666>, <86.8813932474401, 0.0, -10.310221673305666>, <86.90659056894707, 0.0, -9.310539176215276>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.59534259189867, 0.0, -9.302694070025158>, <86.90659056894707, 0.1, -9.310539176215276>, <86.90659056894707, 0.0, -9.310539176215276>}
  triangle { <86.8813932474401, 0.0, -10.310221673305666>, <86.8813932474401, 0.1, -10.310221673305666>, <86.5701452703917, 0.0, -10.302376567115548>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.90659056894707, 0.0, -9.310539176215276>, <86.8813932474401, 0.0, -10.310221673305666>, <87.21783854599546, 0.1, -9.318384282405393>}
  triangle { <86.8813932474401, 0.0, -10.310221673305666>, <87.1926412244885, 0.1, -10.318066779495783>, <87.21783854599546, 0.1, -9.318384282405393>}
  triangle { <87.21783854599546, 0.1, -9.318384282405393>, <87.1926412244885, 0.1, -10.318066779495783>, <87.21783854599546, 0.0, -9.318384282405393>}
  triangle { <87.1926412244885, 0.1, -10.318066779495783>, <87.1926412244885, 0.0, -10.318066779495783>, <87.21783854599546, 0.0, -9.318384282405393>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.90659056894707, 0.0, -9.310539176215276>, <87.21783854599546, 0.1, -9.318384282405393>, <87.21783854599546, 0.0, -9.318384282405393>}
  triangle { <87.1926412244885, 0.0, -10.318066779495783>, <87.1926412244885, 0.1, -10.318066779495783>, <86.8813932474401, 0.0, -10.310221673305666>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.21783854599546, 0.0, -9.318384282405393>, <87.1926412244885, 0.0, -10.318066779495783>, <87.52908652304386, 0.1, -9.326229388595511>}
  triangle { <87.1926412244885, 0.0, -10.318066779495783>, <87.5038892015369, 0.1, -10.325911885685901>, <87.52908652304386, 0.1, -9.326229388595511>}
  triangle { <87.52908652304386, 0.1, -9.326229388595511>, <87.5038892015369, 0.1, -10.325911885685901>, <87.52908652304386, 0.0, -9.326229388595511>}
  triangle { <87.5038892015369, 0.1, -10.325911885685901>, <87.5038892015369, 0.0, -10.325911885685901>, <87.52908652304386, 0.0, -9.326229388595511>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.21783854599546, 0.0, -9.318384282405393>, <87.52908652304386, 0.1, -9.326229388595511>, <87.52908652304386, 0.0, -9.326229388595511>}
  triangle { <87.5038892015369, 0.0, -10.325911885685901>, <87.5038892015369, 0.1, -10.325911885685901>, <87.1926412244885, 0.0, -10.318066779495783>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.52908652304386, 0.0, -9.326229388595511>, <87.5038892015369, 0.0, -10.325911885685901>, <87.84033450009225, 0.1, -9.334074494785629>}
  triangle { <87.5038892015369, 0.0, -10.325911885685901>, <87.81513717858529, 0.1, -10.333756991876019>, <87.84033450009225, 0.1, -9.334074494785629>}
  triangle { <87.84033450009225, 0.1, -9.334074494785629>, <87.81513717858529, 0.1, -10.333756991876019>, <87.84033450009225, 0.0, -9.334074494785629>}
  triangle { <87.81513717858529, 0.1, -10.333756991876019>, <87.81513717858529, 0.0, -10.333756991876019>, <87.84033450009225, 0.0, -9.334074494785629>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.52908652304386, 0.0, -9.326229388595511>, <87.84033450009225, 0.1, -9.334074494785629>, <87.84033450009225, 0.0, -9.334074494785629>}
  triangle { <87.81513717858529, 0.0, -10.333756991876019>, <87.81513717858529, 0.1, -10.333756991876019>, <87.5038892015369, 0.0, -10.325911885685901>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.84033450009225, 0.0, -9.334074494785629>, <87.81513717858529, 0.0, -10.333756991876019>, <88.15158247714065, 0.1, -9.341919600975746>}
  triangle { <87.81513717858529, 0.0, -10.333756991876019>, <88.12638515563368, 0.1, -10.341602098066137>, <88.15158247714065, 0.1, -9.341919600975746>}
  triangle { <88.15158247714065, 0.1, -9.341919600975746>, <88.12638515563368, 0.1, -10.341602098066137>, <88.15158247714065, 0.0, -9.341919600975746>}
  triangle { <88.12638515563368, 0.1, -10.341602098066137>, <88.12638515563368, 0.0, -10.341602098066137>, <88.15158247714065, 0.0, -9.341919600975746>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.84033450009225, 0.0, -9.334074494785629>, <88.15158247714065, 0.1, -9.341919600975746>, <88.15158247714065, 0.0, -9.341919600975746>}
  triangle { <88.12638515563368, 0.0, -10.341602098066137>, <88.12638515563368, 0.1, -10.341602098066137>, <87.81513717858529, 0.0, -10.333756991876019>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <88.15158247714065, 0.0, -9.341919600975746>, <88.12638515563368, 0.0, -10.341602098066137>, <88.46283045418905, 0.1, -9.349764707165864>}
  triangle { <88.12638515563368, 0.0, -10.341602098066137>, <88.43763313268208, 0.1, -10.349447204256254>, <88.46283045418905, 0.1, -9.349764707165864>}
  triangle { <88.46283045418905, 0.1, -9.349764707165864>, <88.43763313268208, 0.1, -10.349447204256254>, <88.46283045418905, 0.0, -9.349764707165864>}
  triangle { <88.43763313268208, 0.1, -10.349447204256254>, <88.43763313268208, 0.0, -10.349447204256254>, <88.46283045418905, 0.0, -9.349764707165864>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <88.15158247714065, 0.0, -9.341919600975746>, <88.46283045418905, 0.1, -9.349764707165864>, <88.46283045418905, 0.0, -9.349764707165864>}
  triangle { <88.43763313268208, 0.0, -10.349447204256254>, <88.43763313268208, 0.1, -10.349447204256254>, <88.12638515563368, 0.0, -10.341602098066137>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.62675898566631, 0.0, -14.790292743489223>, <84.86124101433369, 0.0, -15.433707256510777>, <87.58263442410033, 0.0, -14.745655561287819>}
  triangle { <84.86124101433369, 0.0, -15.433707256510777>, <87.52522495220843, 0.0, -15.744006277487841>, <87.58263442410033, 0.0, -14.745655561287819>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.27270473594595, 0.0, -14.612824641899989>, <85.21529526405405, 0.0, -15.611175358100011>, <85.56144594696525, 0.1, -14.629428506823468>}
  triangle { <85.21529526405405, 0.0, -15.611175358100011>, <85.50403647507335, 0.1, -15.62777922302349>, <85.56144594696525, 0.1, -14.629428506823468>}
  triangle { <85.56144594696525, 0.1, -14.629428506823468>, <85.50403647507335, 0.1, -15.62777922302349>, <85.56144594696525, 0.0, -14.629428506823468>}
  triangle { <85.50403647507335, 0.1, -15.62777922302349>, <85.50403647507335, 0.0, -15.62777922302349>, <85.56144594696525, 0.0, -14.629428506823468>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.27270473594595, 0.0, -14.612824641899989>, <85.56144594696525, 0.1, -14.629428506823468>, <85.56144594696525, 0.0, -14.629428506823468>}
  triangle { <85.50403647507335, 0.0, -15.62777922302349>, <85.50403647507335, 0.1, -15.62777922302349>, <85.21529526405405, 0.0, -15.611175358100011>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.56144594696525, 0.0, -14.629428506823468>, <85.50403647507335, 0.0, -15.62777922302349>, <85.85018715798455, 0.1, -14.646032371746946>}
  triangle { <85.50403647507335, 0.0, -15.62777922302349>, <85.79277768609265, 0.1, -15.644383087946968>, <85.85018715798455, 0.1, -14.646032371746946>}
  triangle { <85.85018715798455, 0.1, -14.646032371746946>, <85.79277768609265, 0.1, -15.644383087946968>, <85.85018715798455, 0.0, -14.646032371746946>}
  triangle { <85.79277768609265, 0.1, -15.644383087946968>, <85.79277768609265, 0.0, -15.644383087946968>, <85.85018715798455, 0.0, -14.646032371746946>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.56144594696525, 0.0, -14.629428506823468>, <85.85018715798455, 0.1, -14.646032371746946>, <85.85018715798455, 0.0, -14.646032371746946>}
  triangle { <85.79277768609265, 0.0, -15.644383087946968>, <85.79277768609265, 0.1, -15.644383087946968>, <85.50403647507335, 0.0, -15.62777922302349>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.85018715798455, 0.0, -14.646032371746946>, <85.79277768609265, 0.0, -15.644383087946968>, <86.13892836900385, 0.1, -14.662636236670425>}
  triangle { <85.79277768609265, 0.0, -15.644383087946968>, <86.08151889711195, 0.1, -15.660986952870447>, <86.13892836900385, 0.1, -14.662636236670425>}
  triangle { <86.13892836900385, 0.1, -14.662636236670425>, <86.08151889711195, 0.1, -15.660986952870447>, <86.13892836900385, 0.0, -14.662636236670425>}
  triangle { <86.08151889711195, 0.1, -15.660986952870447>, <86.08151889711195, 0.0, -15.660986952870447>, <86.13892836900385, 0.0, -14.662636236670425>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <85.85018715798455, 0.0, -14.646032371746946>, <86.13892836900385, 0.1, -14.662636236670425>, <86.13892836900385, 0.0, -14.662636236670425>}
  triangle { <86.08151889711195, 0.0, -15.660986952870447>, <86.08151889711195, 0.1, -15.660986952870447>, <85.79277768609265, 0.0, -15.644383087946968>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.13892836900385, 0.0, -14.662636236670425>, <86.08151889711195, 0.0, -15.660986952870447>, <86.42766958002315, 0.1, -14.679240101593903>}
  triangle { <86.08151889711195, 0.0, -15.660986952870447>, <86.37026010813125, 0.1, -15.677590817793925>, <86.42766958002315, 0.1, -14.679240101593903>}
  triangle { <86.42766958002315, 0.1, -14.679240101593903>, <86.37026010813125, 0.1, -15.677590817793925>, <86.42766958002315, 0.0, -14.679240101593903>}
  triangle { <86.37026010813125, 0.1, -15.677590817793925>, <86.37026010813125, 0.0, -15.677590817793925>, <86.42766958002315, 0.0, -14.679240101593903>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.13892836900385, 0.0, -14.662636236670425>, <86.42766958002315, 0.1, -14.679240101593903>, <86.42766958002315, 0.0, -14.679240101593903>}
  triangle { <86.37026010813125, 0.0, -15.677590817793925>, <86.37026010813125, 0.1, -15.677590817793925>, <86.08151889711195, 0.0, -15.660986952870447>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.42766958002315, 0.0, -14.679240101593903>, <86.37026010813125, 0.0, -15.677590817793925>, <86.71641079104245, 0.1, -14.695843966517382>}
  triangle { <86.37026010813125, 0.0, -15.677590817793925>, <86.65900131915055, 0.1, -15.694194682717404>, <86.71641079104245, 0.1, -14.695843966517382>}
  triangle { <86.71641079104245, 0.1, -14.695843966517382>, <86.65900131915055, 0.1, -15.694194682717404>, <86.71641079104245, 0.0, -14.695843966517382>}
  triangle { <86.65900131915055, 0.1, -15.694194682717404>, <86.65900131915055, 0.0, -15.694194682717404>, <86.71641079104245, 0.0, -14.695843966517382>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.42766958002315, 0.0, -14.679240101593903>, <86.71641079104245, 0.1, -14.695843966517382>, <86.71641079104245, 0.0, -14.695843966517382>}
  triangle { <86.65900131915055, 0.0, -15.694194682717404>, <86.65900131915055, 0.1, -15.694194682717404>, <86.37026010813125, 0.0, -15.677590817793925>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.71641079104245, 0.0, -14.695843966517382>, <86.65900131915055, 0.0, -15.694194682717404>, <87.00515200206175, 0.1, -14.71244783144086>}
  triangle { <86.65900131915055, 0.0, -15.694194682717404>, <86.94774253016985, 0.1, -15.710798547640882>, <87.00515200206175, 0.1, -14.71244783144086>}
  triangle { <87.00515200206175, 0.1, -14.71244783144086>, <86.94774253016985, 0.1, -15.710798547640882>, <87.00515200206175, 0.0, -14.71244783144086>}
  triangle { <86.94774253016985, 0.1, -15.710798547640882>, <86.94774253016985, 0.0, -15.710798547640882>, <87.00515200206175, 0.0, -14.71244783144086>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <86.71641079104245, 0.0, -14.695843966517382>, <87.00515200206175, 0.1, -14.71244783144086>, <87.00515200206175, 0.0, -14.71244783144086>}
  triangle { <86.94774253016985, 0.0, -15.710798547640882>, <86.94774253016985, 0.1, -15.710798547640882>, <86.65900131915055, 0.0, -15.694194682717404>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.00515200206175, 0.0, -14.71244783144086>, <86.94774253016985, 0.0, -15.710798547640882>, <87.29389321308105, 0.1, -14.729051696364339>}
  triangle { <86.94774253016985, 0.0, -15.710798547640882>, <87.23648374118915, 0.1, -15.727402412564361>, <87.29389321308105, 0.1, -14.729051696364339>}
  triangle { <87.29389321308105, 0.1, -14.729051696364339>, <87.23648374118915, 0.1, -15.727402412564361>, <87.29389321308105, 0.0, -14.729051696364339>}
  triangle { <87.23648374118915, 0.1, -15.727402412564361>, <87.23648374118915, 0.0, -15.727402412564361>, <87.29389321308105, 0.0, -14.729051696364339>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.00515200206175, 0.0, -14.71244783144086>, <87.29389321308105, 0.1, -14.729051696364339>, <87.29389321308105, 0.0, -14.729051696364339>}
  triangle { <87.23648374118915, 0.0, -15.727402412564361>, <87.23648374118915, 0.1, -15.727402412564361>, <86.94774253016985, 0.0, -15.710798547640882>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.29389321308105, 0.0, -14.729051696364339>, <87.23648374118915, 0.0, -15.727402412564361>, <87.58263442410035, 0.1, -14.745655561287817>}
  triangle { <87.23648374118915, 0.0, -15.727402412564361>, <87.52522495220845, 0.1, -15.74400627748784>, <87.58263442410035, 0.1, -14.745655561287817>}
  triangle { <87.58263442410035, 0.1, -14.745655561287817>, <87.52522495220845, 0.1, -15.74400627748784>, <87.58263442410035, 0.0, -14.745655561287817>}
  triangle { <87.52522495220845, 0.1, -15.74400627748784>, <87.52522495220845, 0.0, -15.74400627748784>, <87.58263442410035, 0.0, -14.745655561287817>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.29389321308105, 0.0, -14.729051696364339>, <87.58263442410035, 0.1, -14.745655561287817>, <87.58263442410035, 0.0, -14.745655561287817>}
  triangle { <87.52522495220845, 0.0, -15.74400627748784>, <87.52522495220845, 0.1, -15.74400627748784>, <87.23648374118915, 0.0, -15.727402412564361>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <87.45367121217659, 0.0, -76.42829447711055>, <87.83881238278515, 0.0, -72.44687936703947>, <83.88515909907609, 0.0, -76.08309537212554>}
  triangle { <87.83881238278515, 0.0, -72.44687936703947>, <84.27030026968465, 0.0, -72.10168026205446>, <83.88515909907609, 0.0, -76.08309537212554>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <80.3421262253072, 0.0, -75.74078011183641>, <80.7263341580807, 0.0, -71.75927483563825>, <40.47059698310431, 0.0, -71.89325090768263>}
  triangle { <80.7263341580807, 0.0, -71.75927483563825>, <40.8548049158778, 0.0, -67.91174563148446>, <40.47059698310431, 0.0, -71.89325090768263>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.16945063613467, 0.0, -71.37281821218275>, <35.56687286783706, 0.0, -67.39261023146759>, <-51.965872867837064, 0.0, -62.672389768532426>}
  triangle { <35.56687286783706, 0.0, -67.39261023146759>, <-51.56845063613467, 0.0, -58.69218178781726>, <-51.965872867837064, 0.0, -62.672389768532426>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-57.246644392502375, 0.0, -62.16491883879044>, <-56.87881427701505, 0.0, -58.18186711854621>, <-93.8579586153066, 0.0, -58.74494007368651>}
  triangle { <-56.87881427701505, 0.0, -58.18186711854621>, <-94.2780413846934, 0.0, -54.76705992631349>, <-93.8579586153066, 0.0, -58.74494007368651>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-93.8579586153066, 0.0, -58.74494007368651>, <-94.2780413846934, 0.0, -54.76705992631349>, <-96.7999001587966, 0.0, -59.703757074961835>}
  triangle { <-94.2780413846934, 0.0, -54.76705992631349>, <-97.99159572312517, 0.0, -55.885398568750084>, <-96.7999001587966, 0.0, -59.703757074961835>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-104.7184217242849, 0.0, -60.49104259451872>, <-104.30189104525684, 0.0, -56.51278893324617>, <-109.61305123195578, 0.0, -59.978565632009314>}
  triangle { <-104.30189104525684, 0.0, -56.51278893324617>, <-109.19652055292772, 0.0, -56.00031197073677>, <-109.61305123195578, 0.0, -59.978565632009314>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-113.16528715777545, 0.0, -59.63447602196205>, <-112.81052607347087, 0.0, -55.6502390093004>, <-120.17738054215229, 0.0, -59.010111094779994>}
  triangle { <-112.81052607347087, 0.0, -55.6502390093004>, <-119.82261945784771, 0.0, -55.02587408211834>, <-120.17738054215229, 0.0, -59.010111094779994>}
  triangle { <-120.17738054215229, 0.0, -59.010111094779994>, <-119.82261945784771, 0.0, -55.02587408211834>, <-218.6657837866849, 0.0, -50.24038508920159>}
  triangle { <-119.82261945784771, 0.0, -55.02587408211834>, <-218.25421621331512, 0.0, -46.26161491079841>, <-218.6657837866849, 0.0, -50.24038508920159>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-218.6657837866849, 0.0, -50.24038508920159>, <-218.25421621331512, 0.0, -46.26161491079841>, <-221.43226333385226, 0.0, -49.91446765484561>}
  triangle { <-218.25421621331512, 0.0, -46.26161491079841>, <-220.96773666614772, 0.0, -45.941532345154386>, <-221.43226333385226, 0.0, -49.91446765484561>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-221.43226333385226, 0.0, -49.91446765484561>, <-220.96773666614772, 0.0, -45.941532345154386>, <-235.53941719950018, 0.0, -48.278566404572345>}
  triangle { <-220.96773666614772, 0.0, -45.941532345154386>, <-235.0765828004998, 0.0, -44.30543359542766>, <-235.53941719950018, 0.0, -48.278566404572345>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-235.53941719950018, 0.0, -48.278566404572345>, <-235.0765828004998, 0.0, -44.30543359542766>, <-241.92725589561326, 0.0, -47.52818820742284>}
  triangle { <-235.0765828004998, 0.0, -44.30543359542766>, <-241.25074410438674, 0.0, -43.58581179257716>, <-241.92725589561326, 0.0, -47.52818820742284>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-241.92725589561326, 0.0, -47.52818820742284>, <-241.25074410438674, 0.0, -43.58581179257716>, <-267.2931962037213, 0.0, -41.766872665983215>}
  triangle { <-241.25074410438674, 0.0, -43.58581179257716>, <-266.5468037962787, 0.0, -37.837127334016785>, <-267.2931962037213, 0.0, -41.766872665983215>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-267.2931962037213, 0.0, -41.766872665983215>, <-266.5468037962787, 0.0, -37.837127334016785>, <-360.38882432628594, 0.0, -27.507941432468215>}
  triangle { <-266.5468037962787, 0.0, -37.837127334016785>, <-359.7831756737141, 0.0, -23.554058567531783>, <-360.38882432628594, 0.0, -27.507941432468215>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-106.48694464482372, 0.0, -68.55666862559575>, <-107.45705535517627, 0.0, -68.79933137440425>, <-108.89019790322561, 0.0, -90.05627234300265>}
  triangle { <-107.45705535517627, 0.0, -68.79933137440425>, <-109.88384456761491, 0.0, -89.94372765699735>, <-108.89019790322561, 0.0, -90.05627234300265>}
  triangle { <-108.89019790322561, 0.0, -90.05627234300265>, <-109.88384456761491, 0.0, -89.94372765699735>, <-115.13717666780535, 0.0, -145.21027234300263>}
  triangle { <-109.88384456761491, 0.0, -89.94372765699735>, <-116.13082333219465, 0.0, -145.09772765699736>, <-115.13717666780535, 0.0, -145.21027234300263>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <99.09346372459464, 0.0, 49.75810053572823>, <99.14567828911574, 0.0, 50.25536669821048>, <93.79751395392711, 0.0, 50.31419248781411>}
  triangle { <99.14567828911574, 0.0, 50.25536669821048>, <93.84972851844822, 0.0, 50.81145865029636>, <93.79751395392711, 0.0, 50.31419248781411>}
  triangle { <93.79751395392711, 0.0, 50.31419248781411>, <93.84972851844822, 0.0, 50.81145865029636>, <55.37193077885262, 0.0, 54.349003708308814>}
  triangle { <93.84972851844822, 0.0, 50.81145865029636>, <55.424145343373716, 0.0, 54.84626987079106>, <55.37193077885262, 0.0, 54.349003708308814>}
  triangle { <55.37193077885262, 0.0, 54.349003708308814>, <55.424145343373716, 0.0, 54.84626987079106>, <35.86987314018407, 0.0, 56.39678319482226>}
  triangle { <55.424145343373716, 0.0, 54.84626987079106>, <35.92208770470517, 0.0, 56.89404935730451>, <35.86987314018407, 0.0, 56.39678319482226>}
  triangle { <35.86987314018407, 0.0, 56.39678319482226>, <35.92208770470517, 0.0, 56.89404935730451>, <35.713887278767295, 0.0, 56.41316222147869>}
  triangle { <35.92208770470517, 0.0, 56.89404935730451>, <35.76612341442784, 0.0, 56.9104261184481>, <35.713887278767295, 0.0, 56.41316222147869>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <99.14567828911574, 0.0, 50.25536669821048>, <99.51118026597248, 0.0, 53.73623007566516>, <93.84972851844822, 0.0, 50.81145865029636>}
  triangle { <99.51118026597248, 0.0, 53.73623007566516>, <94.21523049530495, 0.0, 54.292322027751055>, <93.84972851844822, 0.0, 50.81145865029636>}
  triangle { <93.84972851844822, 0.0, 50.81145865029636>, <94.21523049530495, 0.0, 54.292322027751055>, <55.424145343373716, 0.0, 54.84626987079106>}
  triangle { <94.21523049530495, 0.0, 54.292322027751055>, <55.78964732023047, 0.0, 58.327133248245744>, <55.424145343373716, 0.0, 54.84626987079106>}
  triangle { <55.424145343373716, 0.0, 54.84626987079106>, <55.78964732023047, 0.0, 58.327133248245744>, <35.92208770470517, 0.0, 56.89404935730451>}
  triangle { <55.78964732023047, 0.0, 58.327133248245744>, <36.28758968156191, 0.0, 60.37491273475921>, <35.92208770470517, 0.0, 56.89404935730451>}
  triangle { <35.92208770470517, 0.0, 56.89404935730451>, <36.28758968156191, 0.0, 60.37491273475921>, <35.76612341442784, 0.0, 56.9104261184481>}
  triangle { <36.28758968156191, 0.0, 60.37491273475921>, <36.13177638927114, 0.0, 60.391273637311826>, <35.76612341442784, 0.0, 56.9104261184481>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <99.51118026597248, 0.0, 53.73623007566516>, <99.52162317320469, 0.0, 53.83568325414386>, <94.21523049530495, 0.0, 54.292322027751055>}
  triangle { <99.52162317320469, 0.0, 53.83568325414386>, <94.22567340253715, 0.0, 54.39177520622974>, <94.21523049530495, 0.0, 54.292322027751055>}
  triangle { <94.21523049530495, 0.0, 54.292322027751055>, <94.22567340253715, 0.0, 54.39177520622974>, <55.78964732023047, 0.0, 58.327133248245744>}
  triangle { <94.22567340253715, 0.0, 54.39177520622974>, <55.80009022746265, 0.0, 58.42658642672444>, <55.78964732023047, 0.0, 58.327133248245744>}
  triangle { <55.78964732023047, 0.0, 58.327133248245744>, <55.80009022746265, 0.0, 58.42658642672444>, <36.28758968156191, 0.0, 60.37491273475921>}
  triangle { <55.80009022746265, 0.0, 58.42658642672444>, <36.2980325887941, 0.0, 60.47436591323789>, <36.28758968156191, 0.0, 60.37491273475921>}
  triangle { <36.28758968156191, 0.0, 60.37491273475921>, <36.2980325887941, 0.0, 60.47436591323789>, <36.13177638927114, 0.0, 60.391273637311826>}
  triangle { <36.2980325887941, 0.0, 60.47436591323789>, <36.14222361072886, 0.0, 60.49072636268819>, <36.13177638927114, 0.0, 60.391273637311826>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <99.52162317320469, 0.0, 53.83568325414386>, <99.88712512800349, 0.0, 57.31654642152947>, <94.22567340253715, 0.0, 54.39177520622974>}
  triangle { <99.88712512800349, 0.0, 57.31654642152947>, <94.59117535733597, 0.0, 57.872638373615366>, <94.22567340253715, 0.0, 54.39177520622974>}
  triangle { <94.22567340253715, 0.0, 54.39177520622974>, <94.59117535733597, 0.0, 57.872638373615366>, <55.80009022746265, 0.0, 58.42658642672444>}
  triangle { <94.59117535733597, 0.0, 57.872638373615366>, <56.16559218226146, 0.0, 61.907449594110055>, <55.80009022746265, 0.0, 58.42658642672444>}
  triangle { <55.80009022746265, 0.0, 58.42658642672444>, <56.16559218226146, 0.0, 61.907449594110055>, <36.2980325887941, 0.0, 60.47436591323789>}
  triangle { <56.16559218226146, 0.0, 61.907449594110055>, <36.66353454359291, 0.0, 63.95522908062351>, <36.2980325887941, 0.0, 60.47436591323789>}
  triangle { <36.2980325887941, 0.0, 60.47436591323789>, <36.66353454359291, 0.0, 63.95522908062351>, <36.14222361072886, 0.0, 60.49072636268819>}
  triangle { <36.66353454359291, 0.0, 63.95522908062351>, <36.507876563505114, 0.0, 63.971573671483796>, <36.14222361072886, 0.0, 60.49072636268819>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <99.88712512800349, 0.0, 57.31654642152947>, <99.93933971458253, 0.0, 57.81381279408079>, <94.59117535733597, 0.0, 57.872638373615366>}
  triangle { <99.93933971458253, 0.0, 57.81381279408079>, <94.643389943915, 0.0, 58.36990474616668>, <94.59117535733597, 0.0, 57.872638373615366>}
  triangle { <94.59117535733597, 0.0, 57.872638373615366>, <94.643389943915, 0.0, 58.36990474616668>, <56.16559218226146, 0.0, 61.907449594110055>}
  triangle { <94.643389943915, 0.0, 58.36990474616668>, <56.2178067688405, 0.0, 62.40471596666137>, <56.16559218226146, 0.0, 61.907449594110055>}
  triangle { <56.16559218226146, 0.0, 61.907449594110055>, <56.2178067688405, 0.0, 62.40471596666137>, <36.66353454359291, 0.0, 63.95522908062351>}
  triangle { <56.2178067688405, 0.0, 62.40471596666137>, <36.71574913017194, 0.0, 64.45249545317483>, <36.66353454359291, 0.0, 63.95522908062351>}
  triangle { <36.66353454359291, 0.0, 63.95522908062351>, <36.71574913017194, 0.0, 64.45249545317483>, <36.507876563505114, 0.0, 63.971573671483796>}
  triangle { <36.71574913017194, 0.0, 64.45249545317483>, <36.560112721232706, 0.0, 64.46883777852132>, <36.507876563505114, 0.0, 63.971573671483796>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <35.713887278767295, 0.0, 56.41316222147869>, <35.76612341442784, 0.0, 56.9104261184481>, <-75.97314166932264, 0.0, 68.15046033766058>}
  triangle { <35.76612341442784, 0.0, 56.9104261184481>, <-75.9208839626217, 0.0, 68.64772196818149>, <-75.97314166932264, 0.0, 68.15046033766058>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <35.76612341442784, 0.0, 56.9104261184481>, <36.13177638927114, 0.0, 60.391273637311826>, <-75.9208839626217, 0.0, 68.64772196818149>}
  triangle { <36.13177638927114, 0.0, 60.391273637311826>, <-75.55507999048527, 0.0, 72.12855362190459>, <-75.9208839626217, 0.0, 68.64772196818149>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <36.13177638927114, 0.0, 60.391273637311826>, <36.14222361072886, 0.0, 60.49072636268819>, <-75.55507999048527, 0.0, 72.12855362190459>}
  triangle { <36.14222361072886, 0.0, 60.49072636268819>, <-75.54462845482183, 0.0, 72.22800589399148>, <-75.55507999048527, 0.0, 72.12855362190459>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <36.14222361072886, 0.0, 60.49072636268819>, <36.507876563505114, 0.0, 63.971573671483796>, <-75.54462845482183, 0.0, 72.22800589399148>}
  triangle { <36.507876563505114, 0.0, 63.971573671483796>, <-75.17882450476156, 0.0, 75.70883733764742>, <-75.54462845482183, 0.0, 72.22800589399148>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <36.507876563505114, 0.0, 63.971573671483796>, <36.560112721232706, 0.0, 64.46883777852132>, <-75.17882450476156, 0.0, 75.70883733764742>}
  triangle { <36.560112721232706, 0.0, 64.46883777852132>, <-75.12656677598446, 0.0, 76.20609917823549>, <-75.17882450476156, 0.0, 75.70883733764742>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-82.45777477879875, 0.0, 68.83224040097751>, <-82.40547100632237, 0.0, 69.3294971882441>, <-82.98225227974177, 0.0, 68.88740737422106>}
  triangle { <-82.40547100632237, 0.0, 69.3294971882441>, <-82.9299485072654, 0.0, 69.38466416148765>, <-82.98225227974177, 0.0, 68.88740737422106>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-82.40547100632237, 0.0, 69.3294971882441>, <-82.03934457373558, 0.0, 72.81029493918463>, <-82.9299485072654, 0.0, 69.38466416148765>}
  triangle { <-82.03934457373558, 0.0, 72.81029493918463>, <-82.5638220746786, 0.0, 72.86546191242817>, <-82.9299485072654, 0.0, 69.38466416148765>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-82.03934457373558, 0.0, 72.81029493918463>, <-82.02888382492202, 0.0, 72.90974624262121>, <-82.5638220746786, 0.0, 72.86546191242817>}
  triangle { <-82.02888382492202, 0.0, 72.90974624262121>, <-82.55336132586504, 0.0, 72.96491321586475>, <-82.5638220746786, 0.0, 72.86546191242817>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-82.02888382492202, 0.0, 72.90974624262121>, <-81.66275741443084, 0.0, 76.39054378349662>, <-82.55336132586504, 0.0, 72.96491321586475>}
  triangle { <-81.66275741443084, 0.0, 76.39054378349662>, <-82.18723491537386, 0.0, 76.44571075674017>, <-82.55336132586504, 0.0, 72.96491321586475>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.66275741443084, 0.0, 76.39054378349662>, <-81.61045361985884, 0.0, 76.88780078082833>, <-82.18723491537386, 0.0, 76.44571075674017>}
  triangle { <-81.61045361985884, 0.0, 76.88780078082833>, <-82.13493112080187, 0.0, 76.94296775407187>, <-82.18723491537386, 0.0, 76.44571075674017>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-91.53523398837598, 0.0, 69.78724914605553>, <-91.48290726880944, 0.0, 70.28450351910554>, <-92.29463816686595, 0.0, 69.8671622280497>}
  triangle { <-91.48290726880944, 0.0, 70.28450351910554>, <-92.24231144729941, 0.0, 70.3644166010997>, <-92.29463816686595, 0.0, 69.8671622280497>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-91.48290726880944, 0.0, 70.28450351910554>, <-91.11662020658048, 0.0, 73.76528437052885>, <-92.24231144729941, 0.0, 70.3644166010997>}
  triangle { <-91.11662020658048, 0.0, 73.76528437052885>, <-91.87602438507045, 0.0, 73.84519745252301>, <-92.24231144729941, 0.0, 70.3644166010997>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-91.11662020658048, 0.0, 73.76528437052885>, <-91.10615486835138, 0.0, 73.86473519112236>, <-91.87602438507045, 0.0, 73.84519745252301>}
  triangle { <-91.10615486835138, 0.0, 73.86473519112236>, <-91.86555904684135, 0.0, 73.94464827311653>, <-91.87602438507045, 0.0, 73.84519745252301>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-91.10615486835138, 0.0, 73.86473519112236>, <-90.73986782822774, 0.0, 77.3455158324816>, <-91.86555904684135, 0.0, 73.94464827311653>}
  triangle { <-90.73986782822774, 0.0, 77.3455158324816>, <-91.4992720067177, 0.0, 77.42542891447575>, <-91.86555904684135, 0.0, 73.94464827311653>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-90.73986782822774, 0.0, 77.3455158324816>, <-90.68754108655588, 0.0, 77.84277041559568>, <-91.4992720067177, 0.0, 77.42542891447575>}
  triangle { <-90.68754108655588, 0.0, 77.84277041559568>, <-91.44694526504585, 0.0, 77.92268349758984>, <-91.4992720067177, 0.0, 77.42542891447575>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-98.73699590303474, 0.0, 70.54328259896005>, <-98.68494665671204, 0.0, 71.04056609260849>, <-120.421598917516, 0.0, 72.81294820846927>}
  triangle { <-98.68494665671204, 0.0, 71.04056609260849>, <-120.3695496711933, 0.0, 73.3102317021177>, <-120.421598917516, 0.0, 72.81294820846927>}
  triangle { <-120.421598917516, 0.0, 72.81294820846927>, <-120.3695496711933, 0.0, 73.3102317021177>, <-212.60451435169193, 0.0, 82.46147454522288>}
  triangle { <-120.3695496711933, 0.0, 73.3102317021177>, <-212.55309282951185, 0.0, 82.958823340491>, <-212.60451435169193, 0.0, 82.46147454522288>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-98.68494665671204, 0.0, 71.04056609260849>, <-98.32060190732398, 0.0, 74.52155078823482>, <-120.3695496711933, 0.0, 73.3102317021177>}
  triangle { <-98.32060190732398, 0.0, 74.52155078823482>, <-120.00520492180523, 0.0, 76.79121639774404>, <-120.3695496711933, 0.0, 73.3102317021177>}
  triangle { <-120.3695496711933, 0.0, 73.3102317021177>, <-120.00520492180523, 0.0, 76.79121639774404>, <-212.55309282951185, 0.0, 82.958823340491>}
  triangle { <-120.00520492180523, 0.0, 76.79121639774404>, <-212.19314214942506, 0.0, 86.44026514748656>, <-212.55309282951185, 0.0, 82.958823340491>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-98.32060190732398, 0.0, 74.52155078823482>, <-98.31019206371352, 0.0, 74.62100743294486>, <-120.00520492180523, 0.0, 76.79121639774404>}
  triangle { <-98.31019206371352, 0.0, 74.62100743294486>, <-119.99479507819477, 0.0, 76.89067304245408>, <-120.00520492180523, 0.0, 76.79121639774404>}
  triangle { <-120.00520492180523, 0.0, 76.79121639774404>, <-119.99479507819477, 0.0, 76.89067304245408>, <-212.19314214942506, 0.0, 86.44026514748656>}
  triangle { <-119.99479507819477, 0.0, 76.89067304245408>, <-212.18285785057492, 0.0, 86.53973485251343>, <-212.19314214942506, 0.0, 86.44026514748656>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-98.31019206371352, 0.0, 74.62100743294486>, <-97.94584733631353, 0.0, 78.10199191849482>, <-119.99479507819477, 0.0, 76.89067304245408>}
  triangle { <-97.94584733631353, 0.0, 78.10199191849482>, <-119.63045035079479, 0.0, 80.37165752800404>, <-119.99479507819477, 0.0, 76.89067304245408>}
  triangle { <-119.99479507819477, 0.0, 76.89067304245408>, <-119.63045035079479, 0.0, 80.37165752800404>, <-212.18285785057492, 0.0, 86.53973485251343>}
  triangle { <-119.63045035079479, 0.0, 80.37165752800404>, <-211.82290719221103, 0.0, 90.02117644940502>, <-212.18285785057492, 0.0, 86.53973485251343>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-97.94584733631353, 0.0, 78.10199191849482>, <-97.89379806800275, 0.0, 78.59927562221964>, <-119.63045035079479, 0.0, 80.37165752800404>}
  triangle { <-97.89379806800275, 0.0, 78.59927562221964>, <-119.578401082484, 0.0, 80.86894123172885>, <-119.63045035079479, 0.0, 80.37165752800404>}
  triangle { <-119.63045035079479, 0.0, 80.37165752800404>, <-119.578401082484, 0.0, 80.86894123172885>, <-211.82290719221103, 0.0, 90.02117644940502>}
  triangle { <-119.578401082484, 0.0, 80.86894123172885>, <-211.77148564830804, 0.0, 90.5185254547771>, <-211.82290719221103, 0.0, 90.02117644940502>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-212.60451435169193, 0.0, 82.46147454522288>, <-212.55309282951185, 0.0, 82.958823340491>, <-221.86446511109003, 0.0, 83.40705794567782>}
  triangle { <-212.55309282951185, 0.0, 82.958823340491>, <-221.81354349513066, 0.0, 83.90445817298581>, <-221.86446511109003, 0.0, 83.40705794567782>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-212.55309282951185, 0.0, 82.958823340491>, <-212.19314214942506, 0.0, 86.44026514748656>, <-221.81354349513066, 0.0, 83.90445817298581>}
  triangle { <-212.19314214942506, 0.0, 86.44026514748656>, <-221.45709215883016, 0.0, 87.38626000428536>, <-221.81354349513066, 0.0, 83.90445817298581>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-212.19314214942506, 0.0, 86.44026514748656>, <-212.18285785057492, 0.0, 86.53973485251343>, <-221.45709215883016, 0.0, 87.38626000428536>}
  triangle { <-212.18285785057492, 0.0, 86.53973485251343>, <-221.44690784116983, 0.0, 87.48573999571465>, <-221.45709215883016, 0.0, 87.38626000428536>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-212.18285785057492, 0.0, 86.53973485251343>, <-211.82290719221103, 0.0, 90.02117644940502>, <-221.44690784116983, 0.0, 87.48573999571465>}
  triangle { <-211.82290719221103, 0.0, 90.02117644940502>, <-221.09045652638108, 0.0, 90.96754161688851>, <-221.44690784116983, 0.0, 87.48573999571465>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-211.82290719221103, 0.0, 90.02117644940502>, <-211.77148564830804, 0.0, 90.5185254547771>, <-221.09045652638108, 0.0, 90.96754161688851>}
  triangle { <-211.77148564830804, 0.0, 90.5185254547771>, <-221.03953488890997, 0.0, 91.4649420543222>, <-221.09045652638108, 0.0, 90.96754161688851>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-221.86446511109003, 0.0, 83.40705794567782>, <-221.81354349513066, 0.0, 83.90445817298581>, <-346.7424096925257, 0.0, 96.22412327470377>}
  triangle { <-221.81354349513066, 0.0, 83.90445817298581>, <-346.6868035605875, 0.0, 96.72102160956597>, <-346.7424096925257, 0.0, 96.22412327470377>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-221.81354349513066, 0.0, 83.90445817298581>, <-221.45709215883016, 0.0, 87.38626000428536>, <-346.6868035605875, 0.0, 96.72102160956597>}
  triangle { <-221.45709215883016, 0.0, 87.38626000428536>, <-346.29756061017355, 0.0, 100.19931019350267>, <-346.6868035605875, 0.0, 96.72102160956597>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-221.45709215883016, 0.0, 87.38626000428536>, <-221.44690784116983, 0.0, 87.48573999571465>, <-346.29756061017355, 0.0, 100.19931019350267>}
  triangle { <-221.44690784116983, 0.0, 87.48573999571465>, <-346.2864393898264, 0.0, 100.29868980649732>, <-346.29756061017355, 0.0, 100.19931019350267>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-221.44690784116983, 0.0, 87.48573999571465>, <-221.09045652638108, 0.0, 90.96754161688851>, <-346.2864393898264, 0.0, 100.29868980649732>}
  triangle { <-221.09045652638108, 0.0, 90.96754161688851>, <-345.89719646290314, 0.0, 103.77697818052035>, <-346.2864393898264, 0.0, 100.29868980649732>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-221.09045652638108, 0.0, 90.96754161688851>, <-221.03953488890997, 0.0, 91.4649420543222>, <-345.89719646290314, 0.0, 103.77697818052035>}
  triangle { <-221.03953488890997, 0.0, 91.4649420543222>, <-345.84159030747423, 0.0, 104.27387672529622>, <-345.89719646290314, 0.0, 103.77697818052035>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-346.7424096925257, 0.0, 96.22412327470377>, <-346.6868035605875, 0.0, 96.72102160956597>, <-407.2150878306171, 0.0, 103.55303487739562>}
  triangle { <-346.6868035605875, 0.0, 96.72102160956597>, <-407.15532390407276, 0.0, 104.04945029837079>, <-407.2150878306171, 0.0, 103.55303487739562>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-346.6868035605875, 0.0, 96.72102160956597>, <-346.29756061017355, 0.0, 100.19931019350267>, <-407.15532390407276, 0.0, 104.04945029837079>}
  triangle { <-346.29756061017355, 0.0, 100.19931019350267>, <-406.73697638940837, 0.0, 107.52435848486516>, <-407.15532390407276, 0.0, 104.04945029837079>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-346.29756061017355, 0.0, 100.19931019350267>, <-346.2864393898264, 0.0, 100.29868980649732>, <-406.73697638940837, 0.0, 107.52435848486516>}
  triangle { <-346.2864393898264, 0.0, 100.29868980649732>, <-406.7250236105916, 0.0, 107.62364151513484>, <-406.73697638940837, 0.0, 107.52435848486516>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-346.2864393898264, 0.0, 100.29868980649732>, <-345.89719646290314, 0.0, 103.77697818052035>, <-406.7250236105916, 0.0, 107.62364151513484>}
  triangle { <-345.89719646290314, 0.0, 103.77697818052035>, <-406.3066761211744, 0.0, 111.09854949191953>, <-406.7250236105916, 0.0, 107.62364151513484>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-345.89719646290314, 0.0, 103.77697818052035>, <-345.84159030747423, 0.0, 104.27387672529622>, <-406.3066761211744, 0.0, 111.09854949191953>}
  triangle { <-345.84159030747423, 0.0, 104.27387672529622>, <-406.2469121693829, 0.0, 111.59496512260438>, <-406.3066761211744, 0.0, 111.09854949191953>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-407.2150878306171, 0.0, 103.55303487739562>, <-407.15532390407276, 0.0, 104.04945029837079>, <-467.7925499248538, 0.0, 110.79727096940294>}
  triangle { <-407.15532390407276, 0.0, 104.04945029837079>, <-467.7356919124475, 0.0, 111.29402761356903>, <-467.7925499248538, 0.0, 110.79727096940294>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-407.15532390407276, 0.0, 104.04945029837079>, <-406.73697638940837, 0.0, 107.52435848486516>, <-467.7356919124475, 0.0, 111.29402761356903>}
  triangle { <-406.73697638940837, 0.0, 107.52435848486516>, <-467.3376857981524, 0.0, 114.7713243625646>, <-467.7356919124475, 0.0, 111.29402761356903>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-406.73697638940837, 0.0, 107.52435848486516>, <-406.7250236105916, 0.0, 107.62364151513484>, <-467.3376857981524, 0.0, 114.7713243625646>}
  triangle { <-406.7250236105916, 0.0, 107.62364151513484>, <-467.3263142018476, 0.0, 114.8706756374354>, <-467.3376857981524, 0.0, 114.7713243625646>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-406.7250236105916, 0.0, 107.62364151513484>, <-406.3066761211744, 0.0, 111.09854949191953>, <-467.3263142018476, 0.0, 114.8706756374354>}
  triangle { <-406.3066761211744, 0.0, 111.09854949191953>, <-466.92830811157205, 0.0, 118.34797217657713>, <-467.3263142018476, 0.0, 114.8706756374354>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-406.3066761211744, 0.0, 111.09854949191953>, <-406.2469121693829, 0.0, 111.59496512260438>, <-466.92830811157205, 0.0, 118.34797217657713>}
  triangle { <-406.2469121693829, 0.0, 111.59496512260438>, <-466.8714500751462, 0.0, 118.84472903059705>, <-466.92830811157205, 0.0, 118.34797217657713>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-467.7925499248538, 0.0, 110.79727096940294>, <-467.7356919124475, 0.0, 111.29402761356903>, <-518.0732133465933, 0.0, 116.29477712889364>}
  triangle { <-467.7356919124475, 0.0, 111.29402761356903>, <-518.0191129362955, 0.0, 116.7918416545878>, <-518.0732133465933, 0.0, 116.29477712889364>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-467.7356919124475, 0.0, 111.29402761356903>, <-467.3376857981524, 0.0, 114.7713243625646>, <-518.0191129362955, 0.0, 116.7918416545878>}
  triangle { <-467.3376857981524, 0.0, 114.7713243625646>, <-517.6404100380913, 0.0, 120.27129357442851>, <-518.0191129362955, 0.0, 116.7918416545878>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-467.3376857981524, 0.0, 114.7713243625646>, <-467.3263142018476, 0.0, 114.8706756374354>, <-517.6404100380913, 0.0, 120.27129357442851>}
  triangle { <-467.3263142018476, 0.0, 114.8706756374354>, <-517.6295899619087, 0.0, 120.37070642557148>, <-517.6404100380913, 0.0, 120.27129357442851>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-467.3263142018476, 0.0, 114.8706756374354>, <-466.92830811157205, 0.0, 118.34797217657713>, <-517.6295899619087, 0.0, 120.37070642557148>}
  triangle { <-466.92830811157205, 0.0, 118.34797217657713>, <-517.250887086559, 0.0, 123.8501581354283>, <-517.6295899619087, 0.0, 120.37070642557148>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-466.92830811157205, 0.0, 118.34797217657713>, <-466.8714500751462, 0.0, 118.84472903059705>, <-517.250887086559, 0.0, 123.8501581354283>}
  triangle { <-466.8714500751462, 0.0, 118.84472903059705>, <-517.1967866534067, 0.0, 124.34722287110635>, <-517.250887086559, 0.0, 123.8501581354283>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-518.0732133465933, 0.0, 116.29477712889364>, <-518.0191129362955, 0.0, 116.7918416545878>, <-529.2422072026873, 0.0, 117.50492936505073>}
  triangle { <-518.0191129362955, 0.0, 116.7918416545878>, <-529.1914408840533, 0.0, 118.00234546650937>, <-529.2422072026873, 0.0, 117.50492936505073>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-518.0191129362955, 0.0, 116.7918416545878>, <-517.6404100380913, 0.0, 120.27129357442851>, <-529.1914408840533, 0.0, 118.00234546650937>}
  triangle { <-517.6404100380913, 0.0, 120.27129357442851>, <-528.8360766291061, 0.0, 121.48425841687117>, <-529.1914408840533, 0.0, 118.00234546650937>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-517.6404100380913, 0.0, 120.27129357442851>, <-517.6295899619087, 0.0, 120.37070642557148>, <-528.8360766291061, 0.0, 121.48425841687117>}
  triangle { <-517.6295899619087, 0.0, 120.37070642557148>, <-528.825923370894, 0.0, 121.58374158312884>, <-528.8360766291061, 0.0, 121.48425841687117>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-517.6295899619087, 0.0, 120.37070642557148>, <-517.250887086559, 0.0, 123.8501581354283>, <-528.825923370894, 0.0, 121.58374158312884>}
  triangle { <-517.250887086559, 0.0, 123.8501581354283>, <-528.4705591373928, 0.0, 125.06565432335823>, <-528.825923370894, 0.0, 121.58374158312884>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-517.250887086559, 0.0, 123.8501581354283>, <-517.1967866534067, 0.0, 124.34722287110635>, <-528.4705591373928, 0.0, 125.06565432335823>}
  triangle { <-517.1967866534067, 0.0, 124.34722287110635>, <-528.4197927973128, 0.0, 125.56307063494928>, <-528.4705591373928, 0.0, 125.06565432335823>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-529.2422072026873, 0.0, 117.50492936505073>, <-529.1914408840533, 0.0, 118.00234546650937>, <-629.2776211981468, 0.0, 127.08683069665099>}
  triangle { <-529.1914408840533, 0.0, 118.00234546650937>, <-629.23075438604, 0.0, 127.5846293497437>, <-629.2776211981468, 0.0, 127.08683069665099>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-529.1914408840533, 0.0, 118.00234546650937>, <-528.8360766291061, 0.0, 121.48425841687117>, <-629.23075438604, 0.0, 127.5846293497437>}
  triangle { <-528.8360766291061, 0.0, 121.48425841687117>, <-628.9026866786651, 0.0, 131.06922016172854>, <-629.23075438604, 0.0, 127.5846293497437>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-528.8360766291061, 0.0, 121.48425841687117>, <-528.825923370894, 0.0, 121.58374158312884>, <-628.9026866786651, 0.0, 131.06922016172854>}
  triangle { <-528.825923370894, 0.0, 121.58374158312884>, <-628.893313321335, 0.0, 131.16877983827146>, <-628.9026866786651, 0.0, 131.06922016172854>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-528.825923370894, 0.0, 121.58374158312884>, <-528.4705591373928, 0.0, 125.06565432335823>, <-628.893313321335, 0.0, 131.16877983827146>}
  triangle { <-528.4705591373928, 0.0, 125.06565432335823>, <-628.5652456337589, 0.0, 134.6533704399623>, <-628.893313321335, 0.0, 131.16877983827146>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-528.4705591373928, 0.0, 125.06565432335823>, <-528.4197927973128, 0.0, 125.56307063494928>, <-628.5652456337589, 0.0, 134.6533704399623>}
  triangle { <-528.4197927973128, 0.0, 125.56307063494928>, <-628.5183788018533, 0.0, 135.151169303349>, <-628.5652456337589, 0.0, 134.6533704399623>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-629.2776211981468, 0.0, 127.08683069665099>, <-629.23075438604, 0.0, 127.5846293497437>, <-686.5857180148068, 0.0, 132.39185490029266>}
  triangle { <-629.23075438604, 0.0, 127.5846293497437>, <-686.519333078219, 0.0, 132.8874283431769>, <-686.5857180148068, 0.0, 132.39185490029266>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-629.23075438604, 0.0, 127.5846293497437>, <-628.9026866786651, 0.0, 131.06922016172854>, <-686.519333078219, 0.0, 132.8874283431769>}
  triangle { <-628.9026866786651, 0.0, 131.06922016172854>, <-686.0546384900531, 0.0, 136.35644268262854>, <-686.519333078219, 0.0, 132.8874283431769>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-628.9026866786651, 0.0, 131.06922016172854>, <-628.893313321335, 0.0, 131.16877983827146>, <-686.0546384900531, 0.0, 136.35644268262854>}
  triangle { <-628.893313321335, 0.0, 131.16877983827146>, <-686.0413615099469, 0.0, 136.45555731737147>, <-686.0546384900531, 0.0, 136.35644268262854>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-628.893313321335, 0.0, 131.16877983827146>, <-628.5652456337589, 0.0, 134.6533704399623>, <-686.0413615099469, 0.0, 136.45555731737147>}
  triangle { <-628.5652456337589, 0.0, 134.6533704399623>, <-685.5766669498253, 0.0, 139.9245714474691>, <-686.0413615099469, 0.0, 136.45555731737147>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-628.5652456337589, 0.0, 134.6533704399623>, <-628.5183788018533, 0.0, 135.151169303349>, <-685.5766669498253, 0.0, 139.9245714474691>}
  triangle { <-628.5183788018533, 0.0, 135.151169303349>, <-685.5102819851932, 0.0, 140.42014509970736>, <-685.5766669498253, 0.0, 139.9245714474691>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-686.5857180148068, 0.0, 132.39185490029266>, <-686.519333078219, 0.0, 132.8874283431769>, <-702.5784672203628, 0.0, 135.2788826985706>}
  triangle { <-686.519333078219, 0.0, 132.8874283431769>, <-702.3980391780107, 0.0, 135.74519345185743>, <-702.5784672203628, 0.0, 135.2788826985706>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-686.519333078219, 0.0, 132.8874283431769>, <-686.0546384900531, 0.0, 136.35644268262854>, <-702.3980391780107, 0.0, 135.74519345185743>}
  triangle { <-686.0546384900531, 0.0, 136.35644268262854>, <-701.1350427944353, 0.0, 139.00936894999887>, <-702.3980391780107, 0.0, 135.74519345185743>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-686.0546384900531, 0.0, 136.35644268262854>, <-686.0413615099469, 0.0, 136.45555731737147>, <-701.1350427944353, 0.0, 139.00936894999887>}
  triangle { <-686.0413615099469, 0.0, 136.45555731737147>, <-701.0989572055646, 0.0, 139.10263105000115>, <-701.1350427944353, 0.0, 139.00936894999887>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-686.0413615099469, 0.0, 136.45555731737147>, <-685.5766669498253, 0.0, 139.9245714474691>, <-701.0989572055646, 0.0, 139.10263105000115>}
  triangle { <-685.5766669498253, 0.0, 139.9245714474691>, <-699.8359608982108, 0.0, 142.36680635115056>, <-701.0989572055646, 0.0, 139.10263105000115>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-685.5766669498253, 0.0, 139.9245714474691>, <-685.5102819851932, 0.0, 140.42014509970736>, <-699.8359608982108, 0.0, 142.36680635115056>}
  triangle { <-685.5102819851932, 0.0, 140.42014509970736>, <-699.6555327796372, 0.0, 142.8331173014294>, <-699.8359608982108, 0.0, 142.36680635115056>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-702.5784672203628, 0.0, 135.2788826985706>, <-702.3980391780107, 0.0, 135.74519345185743>, <-712.2462988801477, 0.0, 141.4515144408548>}
  triangle { <-702.3980391780107, 0.0, 135.74519345185743>, <-711.884039778305, 0.0, 141.79614226943232>, <-712.2462988801477, 0.0, 141.4515144408548>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-702.3980391780107, 0.0, 135.74519345185743>, <-701.1350427944353, 0.0, 139.00936894999887>, <-711.884039778305, 0.0, 141.79614226943232>}
  triangle { <-701.1350427944353, 0.0, 139.00936894999887>, <-709.3482258905083, 0.0, 144.2085372358606>, <-711.884039778305, 0.0, 141.79614226943232>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-701.1350427944353, 0.0, 139.00936894999887>, <-701.0989572055646, 0.0, 139.10263105000115>, <-709.3482258905083, 0.0, 144.2085372358606>}
  triangle { <-701.0989572055646, 0.0, 139.10263105000115>, <-709.2757741094917, 0.0, 144.2774627641394>, <-709.3482258905083, 0.0, 144.2085372358606>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-701.0989572055646, 0.0, 139.10263105000115>, <-699.8359608982108, 0.0, 142.36680635115056>, <-709.2757741094917, 0.0, 144.2774627641394>}
  triangle { <-699.8359608982108, 0.0, 142.36680635115056>, <-706.7399603747307, 0.0, 146.68985758498033>, <-709.2757741094917, 0.0, 144.2774627641394>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-699.8359608982108, 0.0, 142.36680635115056>, <-699.6555327796372, 0.0, 142.8331173014294>, <-706.7399603747307, 0.0, 146.68985758498033>}
  triangle { <-699.6555327796372, 0.0, 142.8331173014294>, <-706.3777011198523, 0.0, 147.0344855591452>, <-706.7399603747307, 0.0, 146.68985758498033>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-712.2462988801477, 0.0, 141.4515144408548>, <-711.884039778305, 0.0, 141.79614226943232>, <-717.908897495554, 0.0, 151.4559626234362>}
  triangle { <-711.884039778305, 0.0, 141.79614226943232>, <-717.4277990647624, 0.0, 151.5921400701293>, <-717.908897495554, 0.0, 151.4559626234362>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-711.884039778305, 0.0, 141.79614226943232>, <-709.3482258905083, 0.0, 144.2085372358606>, <-717.4277990647624, 0.0, 151.5921400701293>}
  triangle { <-709.3482258905083, 0.0, 144.2085372358606>, <-714.0601098169484, 0.0, 152.54538226272712>, <-717.4277990647624, 0.0, 151.5921400701293>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-709.3482258905083, 0.0, 144.2085372358606>, <-709.2757741094917, 0.0, 144.2774627641394>, <-714.0601098169484, 0.0, 152.54538226272712>}
  triangle { <-709.2757741094917, 0.0, 144.2774627641394>, <-713.9638901830515, 0.0, 152.57261773727288>, <-714.0601098169484, 0.0, 152.54538226272712>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-709.2757741094917, 0.0, 144.2774627641394>, <-706.7399603747307, 0.0, 146.68985758498033>, <-713.9638901830515, 0.0, 152.57261773727288>}
  triangle { <-706.7399603747307, 0.0, 146.68985758498033>, <-710.5962011384764, 0.0, 153.5258598723428>, <-713.9638901830515, 0.0, 152.57261773727288>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-706.7399603747307, 0.0, 146.68985758498033>, <-706.3777011198523, 0.0, 147.0344855591452>, <-710.5962011384764, 0.0, 153.5258598723428>}
  triangle { <-706.3777011198523, 0.0, 147.0344855591452>, <-710.1151025044459, 0.0, 153.6620373765638>, <-710.5962011384764, 0.0, 153.5258598723428>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-717.908897495554, 0.0, 151.4559626234362>, <-717.4277990647624, 0.0, 151.5921400701293>, <-718.654836884172, 0.0, 168.50336972027105>}
  triangle { <-717.4277990647624, 0.0, 151.5921400701293>, <-718.1548570483772, 0.0, 168.49887963158622>, <-718.654836884172, 0.0, 168.50336972027105>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-717.4277990647624, 0.0, 151.5921400701293>, <-714.0601098169484, 0.0, 152.54538226272712>, <-718.1548570483772, 0.0, 168.49887963158622>}
  triangle { <-714.0601098169484, 0.0, 152.54538226272712>, <-714.6549979564232, 0.0, 168.4674490086246>, <-718.1548570483772, 0.0, 168.49887963158622>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-714.0601098169484, 0.0, 152.54538226272712>, <-713.9638901830515, 0.0, 152.57261773727288>, <-714.6549979564232, 0.0, 168.4674490086246>}
  triangle { <-713.9638901830515, 0.0, 152.57261773727288>, <-714.5550020435768, 0.0, 168.4665509913754>, <-714.6549979564232, 0.0, 168.4674490086246>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-713.9638901830515, 0.0, 152.57261773727288>, <-710.5962011384764, 0.0, 153.5258598723428>, <-714.5550020435768, 0.0, 168.4665509913754>}
  triangle { <-710.5962011384764, 0.0, 153.5258598723428>, <-711.0551431628384, 0.0, 168.43512037031064>, <-714.5550020435768, 0.0, 168.4665509913754>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-710.5962011384764, 0.0, 153.5258598723428>, <-710.1151025044459, 0.0, 153.6620373765638>, <-711.0551431628384, 0.0, 168.43512037031064>}
  triangle { <-710.1151025044459, 0.0, 153.6620373765638>, <-710.555163115828, 0.0, 168.43063027972897>, <-711.0551431628384, 0.0, 168.43512037031064>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-718.654836884172, 0.0, 168.50336972027105>, <-718.1548570483772, 0.0, 168.49887963158622>, <-716.3330661191715, 0.0, 210.5676824136504>}
  triangle { <-718.1548570483772, 0.0, 168.49887963158622>, <-715.8345394641639, 0.0, 210.5293265621423>, <-716.3330661191715, 0.0, 210.5676824136504>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-718.1548570483772, 0.0, 168.49887963158622>, <-714.6549979564232, 0.0, 168.4674490086246>, <-715.8345394641639, 0.0, 210.5293265621423>}
  triangle { <-714.6549979564232, 0.0, 168.4674490086246>, <-712.3448526384234, 0.0, 210.26083558306752>, <-715.8345394641639, 0.0, 210.5293265621423>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-714.6549979564232, 0.0, 168.4674490086246>, <-714.5550020435768, 0.0, 168.4665509913754>, <-712.3448526384234, 0.0, 210.26083558306752>}
  triangle { <-714.5550020435768, 0.0, 168.4665509913754>, <-712.2451473615765, 0.0, 210.2531644169325>, <-712.3448526384234, 0.0, 210.26083558306752>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-714.5550020435768, 0.0, 168.4665509913754>, <-711.0551431628384, 0.0, 168.43512037031064>, <-712.2451473615765, 0.0, 210.2531644169325>}
  triangle { <-711.0551431628384, 0.0, 168.43512037031064>, <-708.7554607464376, 0.0, 209.98467345406104>, <-712.2451473615765, 0.0, 210.2531644169325>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-711.0551431628384, 0.0, 168.43512037031064>, <-710.555163115828, 0.0, 168.43063027972897>, <-708.7554607464376, 0.0, 209.98467345406104>}
  triangle { <-710.555163115828, 0.0, 168.43063027972897>, <-708.2569338808285, 0.0, 209.9463175863496>, <-708.7554607464376, 0.0, 209.98467345406104>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-716.3330661191715, 0.0, 210.5676824136504>, <-715.8345394641639, 0.0, 210.5293265621423>, <-711.2966622949377, 0.0, 261.6174144126894>}
  triangle { <-715.8345394641639, 0.0, 210.5293265621423>, <-710.7986793219055, 0.0, 261.57254843818754>, <-711.2966622949377, 0.0, 261.6174144126894>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-715.8345394641639, 0.0, 210.5293265621423>, <-712.3448526384234, 0.0, 210.26083558306752>, <-710.7986793219055, 0.0, 261.57254843818754>}
  triangle { <-712.3448526384234, 0.0, 210.26083558306752>, <-707.3127982702554, 0.0, 261.2584865950133>, <-710.7986793219055, 0.0, 261.57254843818754>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-712.3448526384234, 0.0, 210.26083558306752>, <-712.2451473615765, 0.0, 210.2531644169325>, <-707.3127982702554, 0.0, 261.2584865950133>}
  triangle { <-712.2451473615765, 0.0, 210.2531644169325>, <-707.2132017297447, 0.0, 261.2495134049867>, <-707.3127982702554, 0.0, 261.2584865950133>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-712.2451473615765, 0.0, 210.2531644169325>, <-708.7554607464376, 0.0, 209.98467345406104>, <-707.2132017297447, 0.0, 261.2495134049867>}
  triangle { <-708.7554607464376, 0.0, 209.98467345406104>, <-703.7273208884664, 0.0, 260.935451580766>, <-707.2132017297447, 0.0, 261.2495134049867>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-708.7554607464376, 0.0, 209.98467345406104>, <-708.2569338808285, 0.0, 209.9463175863496>, <-703.7273208884664, 0.0, 260.935451580766>}
  triangle { <-708.2569338808285, 0.0, 209.9463175863496>, <-703.2293377050623, 0.0, 260.8905855873106>, <-703.7273208884664, 0.0, 260.935451580766>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-711.2966622949377, 0.0, 261.6174144126894>, <-710.7986793219055, 0.0, 261.57254843818754>, <-708.8941274602787, 0.0, 291.0221487323931>}
  triangle { <-710.7986793219055, 0.0, 261.57254843818754>, <-708.3943586644594, 0.0, 291.0069451859883>, <-708.8941274602787, 0.0, 291.0221487323931>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-710.7986793219055, 0.0, 261.57254843818754>, <-707.3127982702554, 0.0, 261.2584865950133>, <-708.3943586644594, 0.0, 291.0069451859883>}
  triangle { <-707.3127982702554, 0.0, 261.2584865950133>, <-704.8959768524371, 0.0, 290.9005203538147>, <-708.3943586644594, 0.0, 291.0069451859883>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-707.3127982702554, 0.0, 261.2584865950133>, <-707.2132017297447, 0.0, 261.2495134049867>, <-704.8959768524371, 0.0, 290.9005203538147>}
  triangle { <-707.2132017297447, 0.0, 261.2495134049867>, <-704.7960231475629, 0.0, 290.8974796461853>, <-704.8959768524371, 0.0, 290.9005203538147>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-707.2132017297447, 0.0, 261.2495134049867>, <-703.7273208884664, 0.0, 260.935451580766>, <-704.7960231475629, 0.0, 290.8974796461853>}
  triangle { <-703.7273208884664, 0.0, 260.935451580766>, <-701.2976415466669, 0.0, 290.7910548204344>, <-704.7960231475629, 0.0, 290.8974796461853>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-703.7273208884664, 0.0, 260.935451580766>, <-703.2293377050623, 0.0, 260.8905855873106>, <-701.2976415466669, 0.0, 290.7910548204344>}
  triangle { <-703.2293377050623, 0.0, 260.8905855873106>, <-700.7978725397213, 0.0, 290.7758512676069>, <-701.2976415466669, 0.0, 290.7910548204344>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-708.8941274602787, 0.0, 291.0221487323931>, <-708.3943586644594, 0.0, 291.0069451859883>, <-709.3801468918944, 0.0, 314.4388676187373>}
  triangle { <-708.3943586644594, 0.0, 291.0069451859883>, <-708.8802522403267, 0.0, 314.4491308751404>, <-709.3801468918944, 0.0, 314.4388676187373>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <-708.3943586644594, 0.0, 291.0069451859883>, <-704.8959768524371, 0.0, 290.9005203538147>, <-708.8802522403267, 0.0, 314.4491308751404>}
  triangle { <-704.8959768524371, 0.0, 290.9005203538147>, <-705.3809894380051, 0.0, 314.5209736749172>, <-708.8802522403267, 0.0, 314.4491308751404>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-704.8959768524371, 0.0, 290.9005203538147>, <-704.7960231475629, 0.0, 290.8974796461853>, <-705.3809894380051, 0.0, 314.5209736749172>}
  triangle { <-704.7960231475629, 0.0, 290.8974796461853>, <-705.2810105619949, 0.0, 314.5230263250828>, <-705.3809894380051, 0.0, 314.5209736749172>}
 uv_mapping  texture { texture_ROAD_MARKING_DASHED }}
mesh {
  triangle { <-704.7960231475629, 0.0, 290.8974796461853>, <-701.2976415466669, 0.0, 290.7910548204344>, <-705.2810105619949, 0.0, 314.5230263250828>}
  triangle { <-701.2976415466669, 0.0, 290.7910548204344>, <-701.7817479708528, 0.0, 314.59486912052387>, <-705.2810105619949, 0.0, 314.5230263250828>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-701.2976415466669, 0.0, 290.7910548204344>, <-700.7978725397213, 0.0, 290.7758512676069>, <-701.7817479708528, 0.0, 314.59486912052387>}
  triangle { <-700.7978725397213, 0.0, 290.7758512676069>, <-701.2818531081057, 0.0, 314.6051323812627>, <-701.7817479708528, 0.0, 314.59486912052387>}
 uv_mapping  texture { texture_RED_ROAD_MARKING }}
mesh {
  triangle { <165.76341519823936, 0.0, 44.59070802481198>, <166.09258480176064, 0.0, 47.37129197518802>, <119.83541519823935, 0.0, 50.027731981050415>}
  triangle { <166.09258480176064, 0.0, 47.37129197518802>, <120.16458480176065, 0.0, 52.808315931426456>, <119.83541519823935, 0.0, 50.027731981050415>}
  triangle { <119.83541519823935, 0.0, 50.027731981050415>, <120.16458480176065, 0.0, 52.808315931426456>, <111.5709687424052, 0.0, 51.006089265613646>}
  triangle { <120.16458480176065, 0.0, 52.808315931426456>, <111.9001383459265, 0.0, 53.78667321598969>, <111.5709687424052, 0.0, 51.006089265613646>}
  triangle { <111.5709687424052, 0.0, 51.006089265613646>, <111.9001383459265, 0.0, 53.78667321598969>, <107.85873635690892, 0.0, 51.445548776392855>}
  triangle { <111.9001383459265, 0.0, 53.78667321598969>, <108.18790596043023, 0.0, 54.226132726768896>, <107.85873635690892, 0.0, 51.445548776392855>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <140.60929251292205, 0.0, -138.50342221544452>, <140.72870748707797, 0.0, -137.5105777845555>, <91.22331013555942, 0.0, -132.4177717009229>}
  triangle { <140.72870748707797, 0.0, -137.5105777845555>, <92.00668986444057, 0.0, -131.7962282990771>, <91.22331013555942, 0.0, -132.4177717009229>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <91.22331013555942, 0.0, -132.4177717009229>, <92.00668986444057, 0.0, -131.7962282990771>, <95.75461019459928, 0.0, -89.94527336114113>}
  triangle { <92.00668986444057, 0.0, -131.7962282990771>, <96.74860213621494, 0.0, -90.05472663885887>, <95.75461019459928, 0.0, -89.94527336114113>}
  triangle { <95.75461019459928, 0.0, -89.94527336114113>, <96.74860213621494, 0.0, -90.05472663885887>, <96.19719767099687, 0.0, -85.92594754310784>}
  triangle { <96.74860213621494, 0.0, -90.05472663885887>, <97.19118961261253, 0.0, -86.03540082082557>, <96.19719767099687, 0.0, -85.92594754310784>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <97.34872667397727, 0.0, -84.60398655558546>, <98.41836672105717, 0.0, -65.73407340000678>}
  triangle { <97.34872667397727, 0.0, -84.60398655558546>, <99.41237118405118, 0.0, -65.84341290589553>, <98.41836672105717, 0.0, -65.73407340000678>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <99.56768427703359, 0.0, -64.43197161414011>, <102.9628983575437, 0.0, -24.449024258809313>}
  triangle { <99.56768427703359, 0.0, -64.43197161414011>, <103.95689425271065, 0.0, -24.558441626677688>, <102.9628983575437, 0.0, -24.449024258809313>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <103.33740614392502, 0.0, -21.049505339545547>, <104.33138329029262, 0.0, -21.15909289585982>, <104.45913841769284, 0.0, -10.87520926097754>}
  triangle { <104.33138329029262, 0.0, -21.15909289585982>, <105.45311556406044, 0.0, -10.984796817291814>, <104.45913841769284, 0.0, -10.87520926097754>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.04033365139865, 0.0, -5.922312744980268>, <106.03267866517912, 0.0, -6.045809196852633>, <105.17516182519313, 0.0, -4.838912663815593>}
  triangle { <106.03267866517912, 0.0, -6.045809196852633>, <106.1675068389736, 0.0, -4.962409115687958>, <105.17516182519313, 0.0, -4.838912663815593>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.44166114512153, 0.0, -2.427564936746026>, <106.43702483380754, 0.0, -2.5237477171454925>, <105.66806655531727, 0.0, -0.08457044963555568>}
  triangle { <106.43702483380754, 0.0, -2.5237477171454925>, <106.66343024400328, 0.0, -0.18075323003502233>, <105.66806655531727, 0.0, -0.08457044963555568>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <106.80485570427291, 0.0, 1.2500814162948342>, <105.88173456327071, 0.0, 2.061221503563473>}
  triangle { <106.80485570427291, 0.0, 1.2500814162948342>, <106.8762654367293, 0.0, 1.956778496436527>, <105.88173456327071, 0.0, 2.061221503563473>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.88173456327071, 0.0, 2.061221503563473>, <106.8762654367293, 0.0, 1.956778496436527>, <110.44093571442818, 0.0, 43.89441021449429>}
  triangle { <106.8762654367293, 0.0, 1.956778496436527>, <111.43504919795336, 0.0, 43.78606640122647>, <110.44093571442818, 0.0, 43.89441021449429>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-14.444177589754174, 0.0, 74.59644815327266>, <-13.767660758144475, 0.0, 75.33287532316035>, <-26.993859325695063, 0.0, 86.1516327285023>}
  triangle { <-13.767660758144475, 0.0, 75.33287532316035>, <-26.140140674304938, 0.0, 86.6723672714977>, <-26.993859325695063, 0.0, 86.1516327285023>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-26.993859325695063, 0.0, 86.1516327285023>, <-26.140140674304938, 0.0, 86.6723672714977>, <-28.03312803387041, 0.0, 89.86776784763664>}
  triangle { <-26.140140674304938, 0.0, 86.6723672714977>, <-27.068732559220397, 0.0, 90.13223215236336>, <-28.03312803387041, 0.0, 89.86776784763664>}
  triangle { <-28.03312803387041, 0.0, 89.86776784763664>, <-27.068732559220397, 0.0, 90.13223215236336>, <-32.43119773732501, 0.0, 105.90576784763664>}
  triangle { <-27.068732559220397, 0.0, 90.13223215236336>, <-31.466802262674996, 0.0, 106.17023215236335>, <-32.43119773732501, 0.0, 105.90576784763664>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <54.35266649865015, 0.0, 52.436493743381625>, <55.3404785851387, 0.0, 52.28084258923507>, <55.300962730602286, 0.0, 58.45468541455837>}
  triangle { <55.3404785851387, 0.0, 52.28084258923507>, <56.28877481709083, 0.0, 58.299034260411815>, <55.300962730602286, 0.0, 58.45468541455837>}
  triangle { <55.300962730602286, 0.0, 58.45468541455837>, <56.28877481709083, 0.0, 58.299034260411815>, <56.34046861676846, 0.0, 65.05172277005454>}
  triangle { <56.28877481709083, 0.0, 58.299034260411815>, <57.32828070325701, 0.0, 64.89607161590797>, <56.34046861676846, 0.0, 65.05172277005454>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <36.25448217966869, 0.0, 55.901156841074005>, <35.79636086146775, 0.0, 60.48411306385919>}
  triangle { <36.25448217966869, 0.0, 55.901156841074005>, <36.789261408888265, 0.0, 60.365165584137905>, <35.79636086146775, 0.0, 60.48411306385919>}
  triangle { <35.79636086146775, 0.0, 60.48411306385919>, <36.789261408888265, 0.0, 60.365165584137905>, <36.59809701757529, 0.0, 67.17651436694916>}
  triangle { <36.789261408888265, 0.0, 60.365165584137905>, <37.59099756499581, 0.0, 67.05756688722786>, <36.59809701757529, 0.0, 67.17651436694916>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <94.03775262090333, 0.0, 62.98695771388226>, <94.81956046483167, 0.0, 63.61047715637953>, <74.30403006659941, 0.0, 87.7303386437048>}
  triangle { <94.81956046483167, 0.0, 63.61047715637953>, <75.08583791052774, 0.0, 88.35385808620207>, <74.30403006659941, 0.0, 87.7303386437048>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <58.08881943941066, 0.0, 73.63102204548025>, <57.09204742282123, 0.0, 73.71130620920036>, <57.50499344650042, 0.0, 66.38250147398612>}
  triangle { <57.09204742282123, 0.0, 73.71130620920036>, <56.50822142991099, 0.0, 66.46278563770623>, <57.50499344650042, 0.0, 66.38250147398612>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <132.6547941429612, 0.0, -9.382218918835935>, <134.8092058570388, 0.0, -7.593781081164064>, <119.89132691953941, 0.0, -8.814622192947255>}
  triangle { <134.8092058570388, 0.0, -7.593781081164064>, <120.10867308046059, 0.0, -6.02307058509473>, <119.89132691953941, 0.0, -8.814622192947255>}
  triangle { <119.89132691953941, 0.0, -8.814622192947255>, <120.10867308046059, 0.0, -6.02307058509473>, <119.28177314907254, 0.0, -8.715958124391147>}
  triangle { <120.10867308046059, 0.0, -6.02307058509473>, <118.74422685092748, 0.0, -5.968041875608853>, <119.28177314907254, 0.0, -8.715958124391147>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <119.28177314907254, 0.0, -8.715958124391147>, <118.74422685092748, 0.0, -5.968041875608853>, <114.79910080152582, 0.0, -11.016585544382476>}
  triangle { <118.74422685092748, 0.0, -5.968041875608853>, <113.57689919847418, 0.0, -8.497414455617523>, <114.79910080152582, 0.0, -11.016585544382476>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <114.79910080152582, 0.0, -11.016585544382476>, <113.57689919847418, 0.0, -8.497414455617523>, <110.16595739597852, 0.0, -13.080937912512198>}
  triangle { <113.57689919847418, 0.0, -8.497414455617523>, <110.01404260402148, 0.0, -10.285062087487802>, <110.16595739597852, 0.0, -13.080937912512198>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <110.16595739597852, 0.0, -13.080937912512198>, <110.01404260402148, 0.0, -10.285062087487802>, <106.13867543811067, 0.0, -11.747482692807885>}
  triangle { <110.01404260402148, 0.0, -10.285062087487802>, <107.75132456188932, 0.0, -9.458517307192114>, <106.13867543811067, 0.0, -11.747482692807885>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-137.85368879355693, 0.0, -381.7078578861996>, <-133.87031120644306, 0.0, -382.0721421138004>, <-131.5186614571634, 0.0, -312.4355592149498>}
  triangle { <-133.87031120644306, 0.0, -382.0721421138004>, <-127.53533854283658, 0.0, -312.80044078505017>, <-131.5186614571634, 0.0, -312.4355592149498>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-131.5186614571634, 0.0, -312.4355592149498>, <-127.53533854283658, 0.0, -312.80044078505017>, <-130.2235404051541, 0.0, -298.3207092502228>}
  triangle { <-127.53533854283658, 0.0, -312.80044078505017>, <-126.24245959484591, 0.0, -298.70929074977715>, <-130.2235404051541, 0.0, -298.3207092502228>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-130.2235404051541, 0.0, -298.3207092502228>, <-126.24245959484591, 0.0, -298.70929074977715>, <-128.71233624437542, 0.0, -283.71474455930996>}
  triangle { <-126.24245959484591, 0.0, -298.70929074977715>, <-124.73366375562456, 0.0, -284.12725544069>, <-128.71233624437542, 0.0, -283.71474455930996>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-128.71233624437542, 0.0, -283.71474455930996>, <-124.73366375562456, 0.0, -284.12725544069>, <-126.87932284987225, 0.0, -266.0716154100323>}
  triangle { <-124.73366375562456, 0.0, -284.12725544069>, <-122.90067715012775, 0.0, -266.48438458996776>, <-126.87932284987225, 0.0, -266.0716154100323>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-126.87932284987225, 0.0, -266.0716154100323>, <-122.90067715012775, 0.0, -266.48438458996776>, <-125.26133352765527, 0.0, -250.45371835819273>}
  triangle { <-122.90067715012775, 0.0, -266.48438458996776>, <-121.28266647234474, 0.0, -250.86628164180726>, <-125.26133352765527, 0.0, -250.45371835819273>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-125.26133352765527, 0.0, -250.45371835819273>, <-121.28266647234474, 0.0, -250.86628164180726>, <-124.13861357613196, 0.0, -239.63643718986168>}
  triangle { <-121.28266647234474, 0.0, -250.86628164180726>, <-120.15938642386804, 0.0, -240.04356281013833>, <-124.13861357613196, 0.0, -239.63643718986168>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-124.13861357613196, 0.0, -239.63643718986168>, <-120.15938642386804, 0.0, -240.04356281013833>, <-123.68090949922554, 0.0, -235.0973505920966>}
  triangle { <-120.15938642386804, 0.0, -240.04356281013833>, <-119.70109050077447, 0.0, -235.4986494079034>, <-123.68090949922554, 0.0, -235.0973505920966>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-123.68090949922554, 0.0, -235.0973505920966>, <-119.70109050077447, 0.0, -235.4986494079034>, <-121.91795646552742, 0.0, -217.61384459585094>}
  triangle { <-119.70109050077447, 0.0, -235.4986494079034>, <-117.94204353447259, 0.0, -218.05215540414906>, <-121.91795646552742, 0.0, -217.61384459585094>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-121.91795646552742, 0.0, -217.61384459585094>, <-117.94204353447259, 0.0, -218.05215540414906>, <-119.22885340991427, 0.0, -195.1425421419875>}
  triangle { <-117.94204353447259, 0.0, -218.05215540414906>, <-115.25714659008572, 0.0, -195.6174578580125>, <-119.22885340991427, 0.0, -195.1425421419875>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-119.22885340991427, 0.0, -195.1425421419875>, <-115.25714659008572, 0.0, -195.6174578580125>, <-113.94464188166, 0.0, -150.91477977134508>}
  triangle { <-115.25714659008572, 0.0, -195.6174578580125>, <-109.97335811834, 0.0, -151.3932202286549>, <-113.94464188166, 0.0, -150.91477977134508>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-113.94464188166, 0.0, -150.91477977134508>, <-109.97335811834, 0.0, -151.3932202286549>, <-110.43164769165442, 0.0, -121.99482800199971>}
  triangle { <-109.97335811834, 0.0, -151.3932202286549>, <-106.46035230834558, 0.0, -122.47317199800028>, <-110.43164769165442, 0.0, -121.99482800199971>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-110.43164769165442, 0.0, -121.99482800199971>, <-106.46035230834558, 0.0, -122.47317199800028>, <-106.58224694674793, 0.0, -89.76282948136632>}
  triangle { <-106.46035230834558, 0.0, -122.47317199800028>, <-102.61047145203979, 0.0, -90.23717051863368>, <-106.58224694674793, 0.0, -89.76282948136632>}
  triangle { <-106.58224694674793, 0.0, -89.76282948136632>, <-102.61047145203979, 0.0, -90.23717051863368>, <-103.29872393418589, 0.0, -62.26907453927933>}
  triangle { <-102.61047145203979, 0.0, -90.23717051863368>, <-99.32694843947775, 0.0, -62.743415576546695>, <-103.29872393418589, 0.0, -62.26907453927933>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-98.50552825151895, 0.0, -55.463757276011044>, <-101.8315636670853, 0.0, -48.909072233079186>}
  triangle { <-98.50552825151895, 0.0, -55.463757276011044>, <-97.85395541126161, 0.0, -49.331721689725256>, <-101.8315636670853, 0.0, -48.909072233079186>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-101.31825933527875, 0.0, -44.07641987156052>, <-97.34061655142699, 0.0, -44.4987442540819>, <-89.87692317074534, 0.0, 63.6832788717983>}
  triangle { <-97.34061655142699, 0.0, -44.4987442540819>, <-85.89928038689358, 0.0, 63.26095448927692>, <-89.87692317074534, 0.0, 63.6832788717983>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-85.51654712548552, 0.0, 66.85999405400916>, <-89.27917553462966, 0.0, 69.30101117996732>}
  triangle { <-85.51654712548552, 0.0, 66.85999405400916>, <-85.30167381355933, 0.0, 68.87736031087518>, <-89.27917553462966, 0.0, 69.30101117996732>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-88.33528420169007, 0.0, 77.86379389254404>, <-84.36100540574846, 0.0, 77.41090532774143>, <-88.0886748048033, 0.0, 80.02789025773754>}
  triangle { <-84.36100540574846, 0.0, 77.41090532774143>, <-84.11439600886169, 0.0, 79.57500169293493>, <-88.0886748048033, 0.0, 80.02789025773754>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-83.71095988987008, 0.0, 83.11159114378742>, <-86.92442255593947, 0.0, 90.22691508214749>}
  triangle { <-83.71095988987008, 0.0, 83.11159114378742>, <-82.95025117287408, 0.0, 89.77308491785251>, <-86.92442255593947, 0.0, 90.22691508214749>}
  triangle { <-86.92442255593947, 0.0, 90.22691508214749>, <-82.95025117287408, 0.0, 89.77308491785251>, <-86.80915444587528, 0.0, 91.23631219197848>}
  triangle { <-82.95025117287408, 0.0, 89.77308491785251>, <-82.83484555412473, 0.0, 90.78368780802153>, <-86.80915444587528, 0.0, 91.23631219197848>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-86.80915444587528, 0.0, 91.23631219197848>, <-82.83484555412473, 0.0, 90.78368780802153>, <-84.8771934430978, 0.0, 108.24596951057423>}
  triangle { <-82.83484555412473, 0.0, 90.78368780802153>, <-80.9028065569022, 0.0, 107.79403048942577>, <-84.8771934430978, 0.0, 108.24596951057423>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-84.8771934430978, 0.0, 108.24596951057423>, <-80.9028065569022, 0.0, 107.79403048942577>, <-83.17012437199902, 0.0, 123.24057610246336>}
  triangle { <-80.9028065569022, 0.0, 107.79403048942577>, <-79.19587562800099, 0.0, 122.78742389753663>, <-83.17012437199902, 0.0, 123.24057610246336>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-83.17012437199902, 0.0, 123.24057610246336>, <-79.19587562800099, 0.0, 122.78742389753663>, <-81.6331386725331, 0.0, 136.69945064831754>}
  triangle { <-79.19587562800099, 0.0, 122.78742389753663>, <-77.65886132746691, 0.0, 136.2465493516825>, <-81.6331386725331, 0.0, 136.69945064831754>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.6331386725331, 0.0, 136.69945064831754>, <-77.65886132746691, 0.0, 136.2465493516825>, <-80.04315352767088, 0.0, 150.6813202542088>}
  triangle { <-77.65886132746691, 0.0, 136.2465493516825>, <-76.06884647232911, 0.0, 150.22867974579123>, <-80.04315352767088, 0.0, 150.6813202542088>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-80.04315352767088, 0.0, 150.6813202542088>, <-76.06884647232911, 0.0, 150.22867974579123>, <-78.44315284843547, 0.0, 164.7083262180013>}
  triangle { <-76.06884647232911, 0.0, 150.22867974579123>, <-74.46884715156453, 0.0, 164.2556737819987>, <-78.44315284843547, 0.0, 164.7083262180013>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-78.44315284843547, 0.0, 164.7083262180013>, <-74.46884715156453, 0.0, 164.2556737819987>, <-76.93419475948936, 0.0, 177.97695793382405>}
  triangle { <-74.46884715156453, 0.0, 164.2556737819987>, <-72.95980524051065, 0.0, 177.52504206617596>, <-76.93419475948936, 0.0, 177.97695793382405>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-76.93419475948936, 0.0, 177.97695793382405>, <-72.95980524051065, 0.0, 177.52504206617596>, <-75.35214023130894, 0.0, 191.89243696940534>}
  triangle { <-72.95980524051065, 0.0, 177.52504206617596>, <-71.37785976869105, 0.0, 191.43956303059466>, <-75.35214023130894, 0.0, 191.89243696940534>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-75.35214023130894, 0.0, 191.89243696940534>, <-71.37785976869105, 0.0, 191.43956303059466>, <-74.02184634364149, 0.0, 203.5400013247963>}
  triangle { <-71.37785976869105, 0.0, 191.43956303059466>, <-70.04815365635851, 0.0, 203.08199867520372>, <-74.02184634364149, 0.0, 203.5400013247963>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-74.02184634364149, 0.0, 203.5400013247963>, <-70.04815365635851, 0.0, 203.08199867520372>, <-71.26259642140174, 0.0, 227.26415937894396>}
  triangle { <-70.04815365635851, 0.0, 203.08199867520372>, <-67.28940357859825, 0.0, 226.80184062105602>, <-71.26259642140174, 0.0, 227.26415937894396>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-71.26259642140174, 0.0, 227.26415937894396>, <-67.28940357859825, 0.0, 226.80184062105602>, <-69.85263049252312, 0.0, 239.3758663816526>}
  triangle { <-67.28940357859825, 0.0, 226.80184062105602>, <-65.87936950747688, 0.0, 238.91413361834742>, <-69.85263049252312, 0.0, 239.3758663816526>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-69.85263049252312, 0.0, 239.3758663816526>, <-65.87936950747688, 0.0, 238.91413361834742>, <-62.45654446472923, 0.0, 303.1316054611914>}
  triangle { <-65.87936950747688, 0.0, 238.91413361834742>, <-58.48345553527077, 0.0, 302.66839453880857>, <-62.45654446472923, 0.0, 303.1316054611914>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-62.45654446472923, 0.0, 303.1316054611914>, <-58.48345553527077, 0.0, 302.66839453880857>, <-61.80953832609541, 0.0, 308.65365810789626>}
  triangle { <-58.48345553527077, 0.0, 302.66839453880857>, <-57.836461673904594, 0.0, 308.1903418921038>, <-61.80953832609541, 0.0, 308.65365810789626>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-61.80953832609541, 0.0, 308.65365810789626>, <-57.836461673904594, 0.0, 308.1903418921038>, <-51.65565156322414, 0.0, 396.1416849937449>}
  triangle { <-57.836461673904594, 0.0, 308.1903418921038>, <-47.682348436775854, 0.0, 395.6803150062551>, <-51.65565156322414, 0.0, 396.1416849937449>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-51.65565156322414, 0.0, 396.1416849937449>, <-47.682348436775854, 0.0, 395.6803150062551>, <-49.27463854361067, 0.0, 416.63679709062393>}
  triangle { <-47.682348436775854, 0.0, 395.6803150062551>, <-45.30136145638932, 0.0, 416.1752029093761>, <-49.27463854361067, 0.0, 416.63679709062393>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <49.08802260944486, 0.0, 67.22543990264906>, <56.380256627076214, 0.0, 74.52320479981013>}
  triangle { <49.08802260944486, 0.0, 67.22543990264906>, <57.01578639536242, 0.0, 73.75112843466088>, <56.380256627076214, 0.0, 74.52320479981013>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <58.371201058528236, 0.0, 76.1634404883529>, <59.00737874686785, 0.0, 75.39189791087654>, <73.37240051246384, 0.0, 88.53272336337183>}
  triangle { <59.00737874686785, 0.0, 75.39189791087654>, <74.00857820080346, 0.0, 87.76118078589546>, <73.37240051246384, 0.0, 88.53272336337183>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <74.48351974527664, 0.0, 89.4487916493006>, <75.11960787127826, 0.0, 88.67717523166829>, <75.62018199593103, 0.0, 90.38580820881616>}
  triangle { <75.11960787127826, 0.0, 88.67717523166829>, <76.25627012193266, 0.0, 89.61419179118384>, <75.62018199593103, 0.0, 90.38580820881616>}
  triangle { <75.62018199593103, 0.0, 90.38580820881616>, <76.25627012193266, 0.0, 89.61419179118384>, <97.64115977531033, 0.0, 108.53897615414584>}
  triangle { <76.25627012193266, 0.0, 89.61419179118384>, <98.27684022468968, 0.0, 107.76702384585417>, <97.64115977531033, 0.0, 108.53897615414584>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <97.64115977531033, 0.0, 108.53897615414584>, <98.27684022468968, 0.0, 107.76702384585417>, <100.24266646645738, 0.0, 110.67893691042251>}
  triangle { <98.27684022468968, 0.0, 107.76702384585417>, <100.87793906184525, 0.0, 109.90664892686381>, <100.24266646645738, 0.0, 110.67893691042251>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <105.81981171011421, 0.0, -22.40028094556243>, <104.47167896851474, 0.0, -24.854366894342284>, <106.0319546665397, 0.0, -22.52329590499986>}
  triangle { <104.47167896851474, 0.0, -24.854366894342284>, <104.9100453334603, 0.0, -25.088704095000143>, <106.0319546665397, 0.0, -22.52329590499986>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <106.0319546665397, 0.0, -22.52329590499986>, <104.9100453334603, 0.0, -25.088704095000143>, <111.51212434058938, 0.0, -24.348301208629284>}
  triangle { <104.9100453334603, 0.0, -25.088704095000143>, <110.50187565941063, 0.0, -26.959698791370716>, <111.51212434058938, 0.0, -24.348301208629284>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <111.51212434058938, 0.0, -24.348301208629284>, <110.50187565941063, 0.0, -26.959698791370716>, <116.0708104979768, 0.0, -26.397904431809444>}
  triangle { <110.50187565941063, 0.0, -26.959698791370716>, <114.40718950202321, 0.0, -28.650095568190558>, <116.0708104979768, 0.0, -26.397904431809444>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <116.0708104979768, 0.0, -26.397904431809444>, <114.40718950202321, 0.0, -28.650095568190558>, <119.93135373409928, 0.0, -30.935126921380157>}
  triangle { <114.40718950202321, 0.0, -28.650095568190558>, <117.30464626590071, 0.0, -31.904873078619847>, <119.93135373409928, 0.0, -30.935126921380157>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <119.93135373409928, 0.0, -30.935126921380157>, <117.30464626590071, 0.0, -31.904873078619847>, <119.96012216753996, 0.0, -36.72053442878778>}
  triangle { <117.30464626590071, 0.0, -31.904873078619847>, <117.20387783246002, 0.0, -36.227465571212214>, <119.96012216753996, 0.0, -36.72053442878778>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <119.96012216753996, 0.0, -36.72053442878778>, <117.20387783246002, 0.0, -36.227465571212214>, <116.96351386836308, 0.0, -45.05011724595935>}
  triangle { <117.20387783246002, 0.0, -36.227465571212214>, <114.25248613163693, 0.0, -44.34988275404066>, <116.96351386836308, 0.0, -45.05011724595935>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <116.96351386836308, 0.0, -45.05011724595935>, <114.25248613163693, 0.0, -44.34988275404066>, <115.47564108845623, 0.0, -54.388941506803825>}
  triangle { <114.25248613163693, 0.0, -44.34988275404066>, <112.70235891154377, 0.0, -54.00305849319617>, <115.47564108845623, 0.0, -54.388941506803825>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <115.47564108845623, 0.0, -54.388941506803825>, <112.70235891154377, 0.0, -54.00305849319617>, <115.1021376465514, 0.0, -57.544883262818665>}
  triangle { <112.70235891154377, 0.0, -54.00305849319617>, <112.32186235344861, 0.0, -57.21311673718133>, <115.1021376465514, 0.0, -57.544883262818665>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <115.1021376465514, 0.0, -57.544883262818665>, <112.32186235344861, 0.0, -57.21311673718133>, <111.18043295237905, 0.0, -90.16709898228402>}
  triangle { <112.32186235344861, 0.0, -57.21311673718133>, <108.4004488780632, 0.0, -89.83290101771598>, <111.18043295237905, 0.0, -90.16709898228402>}
  triangle { <111.18043295237905, 0.0, -90.16709898228402>, <108.4004488780632, 0.0, -89.83290101771598>, <107.35193720127852, 0.0, -121.76904564853683>}
  triangle { <108.4004488780632, 0.0, -89.83290101771598>, <104.56206279872147, 0.0, -122.00695435146318>, <107.35193720127852, 0.0, -121.76904564853683>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <107.35193720127852, 0.0, -121.76904564853683>, <104.56206279872147, 0.0, -122.00695435146318>, <108.44751117895755, 0.0, -125.4429848443089>}
  triangle { <104.56206279872147, 0.0, -122.00695435146318>, <105.98248882104245, 0.0, -126.7710151556911>, <108.44751117895755, 0.0, -125.4429848443089>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <108.44751117895755, 0.0, -125.4429848443089>, <105.98248882104245, 0.0, -126.7710151556911>, <110.13764735527171, 0.0, -127.58559151922958>}
  triangle { <105.98248882104245, 0.0, -126.7710151556911>, <108.87435264472829, 0.0, -130.08440848077043>, <110.13764735527171, 0.0, -127.58559151922958>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <110.13764735527171, 0.0, -127.58559151922958>, <108.87435264472829, 0.0, -130.08440848077043>, <114.73046118448175, 0.0, -127.8322993408181>}
  triangle { <108.87435264472829, 0.0, -130.08440848077043>, <115.40553881551824, 0.0, -130.5497006591819>, <114.73046118448175, 0.0, -127.8322993408181>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <114.73046118448175, 0.0, -127.8322993408181>, <115.40553881551824, 0.0, -130.5497006591819>, <117.43922711518849, 0.0, -126.10334597941605>}
  triangle { <115.40553881551824, 0.0, -130.5497006591819>, <119.18477288481151, 0.0, -128.29265402058394>, <117.43922711518849, 0.0, -126.10334597941605>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <117.43922711518849, 0.0, -126.10334597941605>, <119.18477288481151, 0.0, -128.29265402058394>, <120.00316959699322, 0.0, -123.58394203954259>}
  triangle { <119.18477288481151, 0.0, -128.29265402058394>, <122.5348304030068, 0.0, -124.78005796045741>, <120.00316959699322, 0.0, -123.58394203954259>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <120.00316959699322, 0.0, -123.58394203954259>, <122.5348304030068, 0.0, -124.78005796045741>, <126.77805452006325, 0.0, -59.923040958503776>}
  triangle { <122.5348304030068, 0.0, -124.78005796045741>, <129.56194547993672, 0.0, -60.222959041496225>, <126.77805452006325, 0.0, -59.923040958503776>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <126.77805452006325, 0.0, -59.923040958503776>, <129.56194547993672, 0.0, -60.222959041496225>, <132.6547941429612, 0.0, -9.382218918835935>}
  triangle { <129.56194547993672, 0.0, -60.222959041496225>, <134.8092058570388, 0.0, -7.593781081164064>, <132.6547941429612, 0.0, -9.382218918835935>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-95.45453562628738, 0.0, 82.19506622857952>, <-95.34953384195798, 0.0, 83.18953826201619>, <-120.0525008921647, 0.0, 84.79225363752444>}
  triangle { <-95.34953384195798, 0.0, 83.18953826201619>, <-119.9474991078353, 0.0, 85.7867256709611>, <-120.0525008921647, 0.0, 84.79225363752444>}
  triangle { <-120.0525008921647, 0.0, 84.79225363752444>, <-119.9474991078353, 0.0, 85.7867256709611>, <-198.14930645630534, 0.0, 93.04638298048711>}
  triangle { <-119.9474991078353, 0.0, 85.7867256709611>, <-197.86669354369468, 0.0, 94.00561701951288>, <-198.14930645630534, 0.0, 93.04638298048711>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-198.14930645630534, 0.0, 93.04638298048711>, <-197.86669354369468, 0.0, 94.00561701951288>, <-202.0434789450229, 0.0, 95.00472738673389>}
  triangle { <-197.86669354369468, 0.0, 94.00561701951288>, <-201.5925210549771, 0.0, 95.8972726132661>, <-202.0434789450229, 0.0, 95.00472738673389>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-92.55449662672964, 0.0, 66.093178602776>, <-92.77950337327036, 0.0, 65.11882139722398>, <-89.46940053653802, 0.0, 65.89223881821981>}
  triangle { <-92.77950337327036, 0.0, 65.11882139722398>, <-89.536452513917, 0.0, 64.89448933446671>, <-89.46940053653802, 0.0, 65.89223881821981>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-85.85739239179803, 0.0, 65.64875416572661>, <-85.92485468420553, 0.0, 64.65103234121685>, <-83.1266057694088, 0.0, 65.46410838461159>}
  triangle { <-85.92485468420553, 0.0, 64.65103234121685>, <-83.1940680618163, 0.0, 64.46638656010182>, <-83.1266057694088, 0.0, 65.46410838461159>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-93.50902608194947, 0.0, 83.75500347833962>, <-92.86377279732714, 0.0, 82.99103476256384>, <-90.2149571519744, 0.0, 86.48982445513393>}
  triangle { <-92.86377279732714, 0.0, 82.99103476256384>, <-89.33104284802559, 0.0, 86.02217554486607>, <-90.2149571519744, 0.0, 86.48982445513393>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-90.2149571519744, 0.0, 86.48982445513393>, <-89.33104284802559, 0.0, 86.02217554486607>, <-89.88021641746026, 0.0, 90.05181506987431>}
  triangle { <-89.33104284802559, 0.0, 86.02217554486607>, <-88.88560051464366, 0.0, 89.94818493012569>, <-89.88021641746026, 0.0, 90.05181506987431>}
  triangle { <-89.88021641746026, 0.0, 90.05181506987431>, <-88.88560051464366, 0.0, 89.94818493012569>, <-86.54109030474493, 0.0, 122.09986305717833>}
  triangle { <-88.88560051464366, 0.0, 89.94818493012569>, <-85.54690969525507, 0.0, 121.99213694282169>, <-86.54109030474493, 0.0, 122.09986305717833>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-86.54109030474493, 0.0, 122.09986305717833>, <-85.54690969525507, 0.0, 121.99213694282169>, <-84.42843213498186, 0.0, 140.87462495582687>}
  triangle { <-85.54690969525507, 0.0, 121.99213694282169>, <-83.43556786501814, 0.0, 140.75537504417312>, <-84.42843213498186, 0.0, 140.87462495582687>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-84.42843213498186, 0.0, 140.87462495582687>, <-83.43556786501814, 0.0, 140.75537504417312>, <-77.24897227211368, 0.0, 197.09533644523017>}
  triangle { <-83.43556786501814, 0.0, 140.75537504417312>, <-76.25702772788632, 0.0, 196.96866355476985>, <-77.24897227211368, 0.0, 197.09533644523017>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-77.71078672173691, 0.0, 79.50740882127543>, <-78.7073662707251, 0.0, 79.59004781049045>, <-78.02430712668658, 0.0, 75.7265297624766>}
  triangle { <-78.7073662707251, 0.0, 79.59004781049045>, <-79.02088667567477, 0.0, 75.80916875169162>, <-78.02430712668658, 0.0, 75.7265297624766>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-78.56710830574299, 0.0, 69.22855576695737>, <-79.56358678265899, 0.0, 69.3124047087705>, <-78.89838952478594, 0.0, 65.29154001643637>}
  triangle { <-79.56358678265899, 0.0, 69.3124047087705>, <-79.89486800170194, 0.0, 65.3753889582495>, <-78.89838952478594, 0.0, 65.29154001643637>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-96.33693402449448, 0.0, 67.6927519259469>, <-95.3432847870291, 0.0, 67.58022995971605>, <-95.95439578117183, 0.0, 71.07083752568731>}
  triangle { <-95.3432847870291, 0.0, 67.58022995971605>, <-94.96074654370645, 0.0, 70.95831555945647>, <-95.95439578117183, 0.0, 71.07083752568731>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-95.22480506972326, 0.0, 77.50970251309789>, <-94.2311712439049, 0.0, 77.39704453428783>, <-94.78776596303705, 0.0, 81.3643503968578>}
  triangle { <-94.2311712439049, 0.0, 77.39704453428783>, <-93.79413213721868, 0.0, 81.25169241804774>, <-94.78776596303705, 0.0, 81.3643503968578>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-92.83839763489324, 0.0, 82.90629664971716>, <-92.95755709403532, 0.0, 81.91342151995666>, <-87.60773796190006, 0.0, 82.27854139741224>}
  triangle { <-92.95755709403532, 0.0, 81.91342151995666>, <-87.72689742104214, 0.0, 81.28566626765173>, <-87.60773796190006, 0.0, 82.27854139741224>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-84.07306056750848, 0.0, 81.85406366956894>, <-84.19236679633282, 0.0, 80.8612061653098>, <-79.14156154104091, 0.0, 81.26147253864141>}
  triangle { <-84.19236679633282, 0.0, 80.8612061653098>, <-79.26086776986526, 0.0, 80.26861503438226>, <-79.14156154104091, 0.0, 81.26147253864141>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-14.568023814511445, 0.0, 73.5553338371611>, <-14.46508197230487, 0.0, 74.55002121373886>, <-77.08626170486751, 0.0, 80.02544970621398>}
  triangle { <-14.46508197230487, 0.0, 74.55002121373886>, <-76.98331986266093, 0.0, 81.02013708279173>, <-77.08626170486751, 0.0, 80.02544970621398>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-79.07684357285058, 0.0, 81.35655085533635>, <-78.19692406245704, 0.0, 81.83167363444592>, <-80.2971931385913, 0.0, 83.65960719002173>}
  triangle { <-78.19692406245704, 0.0, 81.83167363444592>, <-79.31880686140872, 0.0, 83.86639280997828>, <-80.2971931385913, 0.0, 83.65960719002173>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-80.2971931385913, 0.0, 83.65960719002173>, <-79.31880686140872, 0.0, 83.86639280997828>, <-79.94645918077403, 0.0, 88.37722301750352>}
  triangle { <-79.31880686140872, 0.0, 83.86639280997828>, <-78.94954081922596, 0.0, 88.29877698249646>, <-79.94645918077403, 0.0, 88.37722301750352>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <84.19577209787246, 0.0, -60.206555472500874>, <83.20076349114791, 0.0, -60.10676633208946>, <83.94435248285257, 0.0, -62.713488389376955>}
  triangle { <83.20076349114791, 0.0, -60.10676633208946>, <82.94934387612801, 0.0, -62.61369924896554>, <83.94435248285257, 0.0, -62.713488389376955>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <83.79980336103797, 0.0, -64.14677381363512>, <82.80490638413478, 0.0, -64.04587780108324>, <82.98304338677971, 0.0, -72.20053142697132>}
  triangle { <82.80490638413478, 0.0, -64.04587780108324>, <81.98814640987652, 0.0, -72.09963541441944>, <82.98304338677971, 0.0, -72.20053142697132>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <82.6244708160263, 0.0, -75.74225676325473>, <81.6295397034981, 0.0, -75.64169791817683>, <81.92286792310186, 0.0, -82.68392903753032>}
  triangle { <81.6295397034981, 0.0, -75.64169791817683>, <80.92793681057366, 0.0, -82.58337019245242>, <81.92286792310186, 0.0, -82.68392903753032>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <82.12912207140971, 0.0, -82.94252667928268>, <82.00590466615017, 0.0, -83.93490638032512>, <87.70824907746852, 0.0, -83.63525099899408>}
  triangle { <82.00590466615017, 0.0, -83.93490638032512>, <87.58503167220898, 0.0, -84.62763070003652>, <87.70824907746852, 0.0, -83.63525099899408>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <91.26098301527608, 0.0, -84.07646725725927>, <91.1377127200291, 0.0, -85.06884038986097>, <96.12012650812078, 0.0, -84.68005882310514>}
  triangle { <91.1377127200291, 0.0, -85.06884038986097>, <95.9968562128738, 0.0, -85.67243195570684>, <96.12012650812078, 0.0, -84.68005882310514>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <81.77504588150101, 0.0, -84.11829502844527>, <80.78051780769282, 0.0, -84.01382536582814>, <81.15171839028027, 0.0, -90.05223483130857>}
  triangle { <80.78051780769282, 0.0, -84.01382536582814>, <80.15719031647207, 0.0, -89.94776516869143>, <81.15171839028027, 0.0, -90.05223483130857>}
  triangle { <81.15171839028027, 0.0, -90.05223483130857>, <80.15719031647207, 0.0, -89.94776516869143>, <75.8842640369041, 0.0, -140.19723483130858>}
  triangle { <80.15719031647207, 0.0, -89.94776516869143>, <74.8897359630959, 0.0, -140.09276516869144>, <75.8842640369041, 0.0, -140.19723483130858>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <36.80768424678934, 0.0, -58.30804928049173>, <36.74328508078836, 0.0, -59.305973499768115>, <39.067127919994256, 0.0, -58.45385823609168>}
  triangle { <36.74328508078836, 0.0, -59.305973499768115>, <39.002728753993274, 0.0, -59.45178245536807>, <39.067127919994256, 0.0, -58.45385823609168>}
  triangle { <39.067127919994256, 0.0, -58.45385823609168>, <39.002728753993274, 0.0, -59.45178245536807>, <42.963673403151056, 0.0, -58.70531448352311>}
  triangle { <39.002728753993274, 0.0, -59.45178245536807>, <42.899274237150074, 0.0, -59.703238702799496>, <42.963673403151056, 0.0, -58.70531448352311>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-56.41912458714648, 0.0, -48.10747280118199>, <-56.508658856185455, 0.0, -49.103456543352344>, <-53.158397230717824, 0.0, -48.40059690354643>}
  triangle { <-56.508658856185455, 0.0, -49.103456543352344>, <-53.2479314997568, 0.0, -49.39658064571678>, <-53.158397230717824, 0.0, -48.40059690354643>}
  triangle { <-53.158397230717824, 0.0, -48.40059690354643>, <-53.2479314997568, 0.0, -49.39658064571678>, <-49.05538130661546, 0.0, -48.76943879931803>}
  triangle { <-53.2479314997568, 0.0, -49.39658064571678>, <-49.14491557565444, 0.0, -49.765422541488384>, <-49.05538130661546, 0.0, -48.76943879931803>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-47.63268098930234, 0.0, -48.91145860819617>, <-47.74179798477386, 0.0, -49.90548752191009>, <-8.788202015226139, 0.0, -53.175512478089914>}
  triangle { <-47.74179798477386, 0.0, -49.90548752191009>, <-8.897319010697666, 0.0, -54.16954139180383>, <-8.788202015226139, 0.0, -53.175512478089914>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-7.375187023058361, 0.0, -53.3331775370397>, <-7.4878545060484605, 0.0, -54.32681028523024>, <35.37798185152884, 0.0, -58.18093636516033>}
  triangle { <-7.4878545060484605, 0.0, -54.32681028523024>, <35.26531436853873, 0.0, -59.17456911335086>, <35.37798185152884, 0.0, -58.18093636516033>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-93.10190515147885, 0.0, -44.124052623872245>, <-93.21049127576119, 0.0, -45.11813966916222>, <-80.87439046470021, 0.0, -45.459688608400675>}
  triangle { <-93.21049127576119, 0.0, -45.11813966916222>, <-80.98297658898255, 0.0, -46.45377565369065>, <-80.87439046470021, 0.0, -45.459688608400675>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-79.42338828961621, 0.0, -45.617543840755125>, <-79.5311068594682, 0.0, -46.61172526771353>, <-68.63595132648445, 0.0, -46.78635191796091>}
  triangle { <-79.5311068594682, 0.0, -46.61172526771353>, <-68.74366989633643, 0.0, -47.78053334491931>, <-68.63595132648445, 0.0, -46.78635191796091>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-67.20392367402329, 0.0, -46.94221314610424>, <-67.31260617980374, 0.0, -47.93628965872149>, <-57.84239382019627, 0.0, -47.9657103412785>}
  triangle { <-67.31260617980374, 0.0, -47.93628965872149>, <-57.95107632597672, 0.0, -48.95978685389576>, <-57.84239382019627, 0.0, -47.9657103412785>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <113.63402129392108, 0.0, 60.18190982832268>, <112.98563177957467, 0.0, 59.42060106199613>, <114.375767008794, 0.0, 59.52065502743934>}
  triangle { <112.98563177957467, 0.0, 59.42060106199613>, <113.982232991206, 0.0, 58.60134497256066>, <114.375767008794, 0.0, 59.52065502743934>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <114.375767008794, 0.0, 59.52065502743934>, <113.982232991206, 0.0, 58.60134497256066>, <120.05164681090132, 0.0, 58.953819724119306>}
  triangle { <113.982232991206, 0.0, 58.60134497256066>, <119.94835318909868, 0.0, 57.95916881666741>, <120.05164681090132, 0.0, 58.953819724119306>}
  triangle { <120.05164681090132, 0.0, 58.953819724119306>, <119.94835318909868, 0.0, 57.95916881666741>, <168.45432363786634, 0.0, 53.872984750944475>}
  triangle { <119.94835318909868, 0.0, 57.95916881666741>, <168.81167636213368, 0.0, 52.93901524905552>, <168.45432363786634, 0.0, 53.872984750944475>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <168.45432363786634, 0.0, 53.872984750944475>, <168.81167636213368, 0.0, 52.93901524905552>, <170.46376660139737, 0.0, 56.12841038562642>}
  triangle { <168.81167636213368, 0.0, 52.93901524905552>, <171.38423339860265, 0.0, 55.73758961437358>, <170.46376660139737, 0.0, 56.12841038562642>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <170.46376660139737, 0.0, 56.12841038562642>, <171.38423339860265, 0.0, 55.73758961437358>, <172.59082546766788, 0.0, 86.33459865565305>}
  triangle { <171.38423339860265, 0.0, 55.73758961437358>, <173.35517453233214, 0.0, 86.97940134434694>, <172.59082546766788, 0.0, 86.33459865565305>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <172.59082546766788, 0.0, 86.33459865565305>, <173.35517453233214, 0.0, 86.97940134434694>, <115.9399612653951, 0.0, 92.03083759546881>}
  triangle { <173.35517453233214, 0.0, 86.97940134434694>, <116.04245513805033, 0.0, 93.0255712312066>, <115.9399612653951, 0.0, 92.03083759546881>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <50.947715487567066, 0.0, 13.612802646711726>, <50.56783499925179, 0.0, 12.68776707193779>, <56.55394024415764, 0.0, 11.310517787386969>}
  triangle { <50.56783499925179, 0.0, 12.68776707193779>, <56.17405975584236, 0.0, 10.385482212613033>, <56.55394024415764, 0.0, 11.310517787386969>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <109.13200703473694, 0.0, 177.80837393093037>, <108.13799296526307, 0.0, 177.91762606906963>, <106.3460896999957, 0.0, 152.46113136201657>}
  triangle { <108.13799296526307, 0.0, 177.91762606906963>, <105.3519103000043, 0.0, 152.5688686379834>, <106.3460896999957, 0.0, 152.46113136201657>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <106.3460896999957, 0.0, 152.46113136201657>, <105.3519103000043, 0.0, 152.5688686379834>, <103.21047818994131, 0.0, 123.10884573265709>}
  triangle { <105.3519103000043, 0.0, 152.5688686379834>, <102.21552181005868, 0.0, 123.20915426734292>, <103.21047818994131, 0.0, 123.10884573265709>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <103.21047818994131, 0.0, 123.10884573265709>, <102.21552181005868, 0.0, 123.20915426734292>, <102.19342026301715, 0.0, 112.38195536117878>}
  triangle { <102.21552181005868, 0.0, 123.20915426734292>, <101.19788509480532, 0.0, 112.47634672123608>, <102.19342026301715, 0.0, 112.38195536117878>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <101.94590679320366, 0.0, 109.77359568104859>, <100.95038617307752, 0.0, 109.86814035252016>, <100.06351740111778, 0.0, 89.95272766426422>}
  triangle { <100.95038617307752, 0.0, 109.86814035252016>, <99.06799678099163, 0.0, 90.04727233573578>, <100.06351740111778, 0.0, 89.95272766426422>}
  triangle { <100.06351740111778, 0.0, 89.95272766426422>, <99.06799678099163, 0.0, 90.04727233573578>, <97.7762314823774, 0.0, 66.0125937916718>}
  triangle { <99.06799678099163, 0.0, 90.04727233573578>, <96.8297685176226, 0.0, 66.33540620832821>, <97.7762314823774, 0.0, 66.0125937916718>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <97.7762314823774, 0.0, 66.0125937916718>, <96.8297685176226, 0.0, 66.33540620832821>, <95.9507140723976, 0.0, 63.09277900782444>}
  triangle { <96.8297685176226, 0.0, 66.33540620832821>, <95.10490312544911, 0.0, 63.6262617554575>, <95.9507140723976, 0.0, 63.09277900782444>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <94.20480493764668, 0.0, 61.85862952468205>, <93.9840635801863, 0.0, 62.833961905517704>, <91.30974451841833, 0.0, 61.21071578160874>}
  triangle { <93.9840635801863, 0.0, 62.833961905517704>, <91.25625548158168, 0.0, 62.20928421839126>, <91.30974451841833, 0.0, 61.21071578160874>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <91.30974451841833, 0.0, 61.21071578160874>, <91.25625548158168, 0.0, 62.20928421839126>, <57.61548817116579, 0.0, 65.11417341871152>}
  triangle { <91.25625548158168, 0.0, 62.20928421839126>, <57.730776601395625, 0.0, 66.10750547691518>, <57.61548817116579, 0.0, 65.11417341871152>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <56.163491726010875, 0.0, 65.28579742886913>, <56.28296582179841, 0.0, 66.27863474708181>, <48.99309469101316, 0.0, 66.14865450170379>}
  triangle { <56.28296582179841, 0.0, 66.27863474708181>, <49.1125687868007, 0.0, 67.14149181991647>, <48.99309469101316, 0.0, 66.14865450170379>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <46.45986328828753, 0.0, 66.42336091728174>, <46.555992470524394, 0.0, 67.41872978374406>, <37.83764728827357, 0.0, 67.25606384890622>}
  triangle { <46.555992470524394, 0.0, 67.41872978374406>, <37.93377647051044, 0.0, 68.25143271536854>, <37.83764728827357, 0.0, 67.25606384890622>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <36.41405335278705, 0.0, 67.41095668794806>, <36.534239775385046, 0.0, 68.40370802832645>, <-11.416618615379006, 0.0, 73.20152792215133>}
  triangle { <36.534239775385046, 0.0, 68.40370802832645>, <-11.296432192781014, 0.0, 74.19427926252972>, <-11.416618615379006, 0.0, 73.20152792215133>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <111.33917046642443, 0.0, 60.13839491046588>, <111.45567504495739, 0.0, 61.13158506505907>, <104.59828465129507, 0.0, 60.92912371219478>}
  triangle { <111.45567504495739, 0.0, 61.13158506505907>, <104.71478922982803, 0.0, 61.922313866787974>, <104.59828465129507, 0.0, 60.92912371219478>}
  triangle { <104.59828465129507, 0.0, 60.92912371219478>, <104.71478922982803, 0.0, 61.922313866787974>, <95.90627833650751, 0.0, 61.94872557557097>}
  triangle { <104.71478922982803, 0.0, 61.922313866787974>, <96.02278291504047, 0.0, 62.94191573016416>, <95.90627833650751, 0.0, 61.94872557557097>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <95.42648982150105, 0.0, 61.56197889141419>, <94.4312056714321, 0.0, 61.65898126572281>, <94.71809402395553, 0.0, 54.29354742983609>}
  triangle { <94.4312056714321, 0.0, 61.65898126572281>, <93.72280987388658, 0.0, 54.390549804144705>, <94.71809402395553, 0.0, 54.29354742983609>}
  triangle { <94.71809402395553, 0.0, 54.29354742983609>, <93.72280987388658, 0.0, 54.390549804144705>, <94.01149456578194, 0.0, 47.04354714705945>}
  triangle { <93.72280987388658, 0.0, 54.390549804144705>, <93.01621041571299, 0.0, 47.140549521368065>, <94.01149456578194, 0.0, 47.04354714705945>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <94.50045126709631, 0.0, 46.4566019895836>, <94.4160567693086, 0.0, 45.46016956902355>, <102.97491760764682, 0.0, 45.73884299652743>}
  triangle { <94.4160567693086, 0.0, 45.46016956902355>, <102.8905231098591, 0.0, 44.74241057596738>, <102.97491760764682, 0.0, 45.73884299652743>}
  triangle { <102.97491760764682, 0.0, 45.73884299652743>, <102.8905231098591, 0.0, 44.74241057596738>, <110.34076592212647, 0.0, 45.114980247329>}
  triangle { <102.8905231098591, 0.0, 44.74241057596738>, <110.25637142433875, 0.0, 44.118547826768946>, <110.34076592212647, 0.0, 45.114980247329>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <111.73458779645384, 0.0, 61.447393737307344>, <112.70576177888375, 0.0, 61.68576549706767>, <111.38800807874165, 0.0, 62.89226575164126>}
  triangle { <112.70576177888375, 0.0, 61.68576549706767>, <112.38599192125835, 0.0, 62.95573424835874>, <111.38800807874165, 0.0, 62.89226575164126>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <111.38800807874165, 0.0, 62.89226575164126>, <112.38599192125835, 0.0, 62.95573424835874>, <114.48118577490249, 0.0, 90.05671097994072>}
  triangle { <112.38599192125835, 0.0, 62.95573424835874>, <115.47473268321465, 0.0, 89.94328902005928>, <114.48118577490249, 0.0, 90.05671097994072>}
  triangle { <114.48118577490249, 0.0, 90.05671097994072>, <115.47473268321465, 0.0, 89.94328902005928>, <114.69656273655461, 0.0, 91.94335722194536>}
  triangle { <115.47473268321465, 0.0, 89.94328902005928>, <115.69010964486678, 0.0, 91.82993526206393>, <114.69656273655461, 0.0, 91.94335722194536>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <114.85942836683174, 0.0, 93.37381616628026>, <115.85304297759592, 0.0, 93.26098884123918>, <115.3621926946179, 0.0, 97.80141366252055>}
  triangle { <115.85304297759592, 0.0, 93.26098884123918>, <116.35580730538209, 0.0, 97.68858633747946>, <115.3621926946179, 0.0, 97.80141366252055>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-108.7671890818432, 0.0, -67.31389514682084>, <-109.35830043679944, 0.0, -66.5073051852903>, <-119.70444432252188, 0.0, -75.3292884360603>}
  triangle { <-109.35830043679944, 0.0, -66.5073051852903>, <-120.29555567747812, 0.0, -74.52269847452976>, <-119.70444432252188, 0.0, -75.3292884360603>}
  triangle { <-119.70444432252188, 0.0, -75.3292884360603>, <-120.29555567747812, 0.0, -74.52269847452976>, <-146.99644432252188, 0.0, -95.33029498076527>}
  triangle { <-120.29555567747812, 0.0, -74.52269847452976>, <-147.58755567747812, 0.0, -94.52370501923474>, <-146.99644432252188, 0.0, -95.33029498076527>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <111.57970923130263, 0.0, 45.2272912031078>, <111.23764601282608, 0.0, 52.442076866797244>}
  triangle { <111.57970923130263, 0.0, 45.2272912031078>, <112.23346107550563, 0.0, 52.35068561480609>, <111.23764601282608, 0.0, 52.442076866797244>}
  triangle { <111.23764601282608, 0.0, 52.442076866797244>, <112.23346107550563, 0.0, 52.35068561480609>, <111.88247600621648, 0.0, 59.4682572319363>}
  triangle { <112.23346107550563, 0.0, 52.35068561480609>, <112.87829106889603, 0.0, 59.376865979945144>, <111.88247600621648, 0.0, 59.4682572319363>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-110.41630684284958, 0.0, -54.07416338418768>, <-111.41355138048256, 0.0, -53.99997893729229>, <-110.56284572975646, 0.0, -56.0440520958306>}
  triangle { <-111.41355138048256, 0.0, -53.99997893729229>, <-111.56009026738944, 0.0, -55.969867648935214>, <-110.56284572975646, 0.0, -56.0440520958306>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-110.83312747133058, 0.0, -59.63477061525853>, <-111.83024020556641, 0.0, -59.55883514775651>, <-111.0660867671541, 0.0, -62.27070285484232>}
  triangle { <-111.83024020556641, 0.0, -59.55883514775651>, <-112.02591323284591, 0.0, -62.55129714515768>, <-111.0660867671541, 0.0, -62.27070285484232>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-111.0660867671541, 0.0, -62.27070285484232>, <-112.02591323284591, 0.0, -62.55129714515768>, <-108.51516851072184, 0.0, -65.60904347897728>}
  triangle { <-112.02591323284591, 0.0, -62.55129714515768>, <-109.3143674230062, 0.0, -66.21011011305664>, <-108.51516851072184, 0.0, -65.60904347897728>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-108.48549285779897, 0.0, -67.36157730792561>, <-106.48694464482372, 0.0, -68.55666862559575>}
  triangle { <-108.48549285779897, 0.0, -67.36157730792561>, <-107.45705535517627, 0.0, -68.79933137440425>, <-106.48694464482372, 0.0, -68.55666862559575>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <154.6670004139235, 0.0, -5.377854149986953>, <154.77899958607654, 0.0, -4.384145850013048>, <119.94400041392348, 0.0, -1.464283885179165>}
  triangle { <154.77899958607654, 0.0, -4.384145850013048>, <120.05599958607652, 0.0, -0.47057558520525916>, <119.94400041392348, 0.0, -1.464283885179165>}
  triangle { <119.94400041392348, 0.0, -1.464283885179165>, <120.05599958607652, 0.0, -0.47057558520525916>, <106.89447037391268, 0.0, 0.006506447865277709>}
  triangle { <120.05599958607652, 0.0, -0.47057558520525916>, <107.00646954606573, 0.0, 1.0002147478391836>, <106.89447037391268, 0.0, 0.006506447865277709>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <102.249688399241, 0.0, 57.810903503889236>, <106.22602551738731, 0.0, 57.37645773874482>, <102.66836838148839, 0.0, 61.642941672063586>}
  triangle { <106.22602551738731, 0.0, 57.37645773874482>, <106.64470549963471, 0.0, 61.20849590691917>, <102.66836838148839, 0.0, 61.642941672063586>}
  triangle { <102.66836838148839, 0.0, 61.642941672063586>, <106.64470549963471, 0.0, 61.20849590691917>, <105.79033090506293, 0.0, 90.2172228825722>}
  triangle { <106.64470549963471, 0.0, 61.20849590691917>, <109.76666802320925, 0.0, 89.7827771174278>, <105.79033090506293, 0.0, 90.2172228825722>}
  triangle { <105.79033090506293, 0.0, 90.2172228825722>, <109.76666802320925, 0.0, 89.7827771174278>, <107.3917818256532, 0.0, 104.874768289187>}
  triangle { <109.76666802320925, 0.0, 89.7827771174278>, <111.3682181743468, 0.0, 104.441231710813>, <107.3917818256532, 0.0, 104.874768289187>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <107.3917818256532, 0.0, 104.874768289187>, <111.3682181743468, 0.0, 104.441231710813>, <108.20078110902564, 0.0, 112.31076171611407>}
  triangle { <111.3682181743468, 0.0, 104.441231710813>, <112.17721889097434, 0.0, 111.87723828388592>, <108.20078110902564, 0.0, 112.31076171611407>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <108.20078110902564, 0.0, 112.31076171611407>, <112.17721889097434, 0.0, 111.87723828388592>, <115.902912799844, 0.0, 182.80990187080803>}
  triangle { <112.17721889097434, 0.0, 111.87723828388592>, <119.877087200156, 0.0, 182.35609812919196>, <115.902912799844, 0.0, 182.80990187080803>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <115.902912799844, 0.0, 182.80990187080803>, <119.877087200156, 0.0, 182.35609812919196>, <117.74574708855059, 0.0, 198.27909265635373>}
  triangle { <119.877087200156, 0.0, 182.35609812919196>, <121.71825291144941, 0.0, 197.81090734364625>, <117.74574708855059, 0.0, 198.27909265635373>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <117.74574708855059, 0.0, 198.27909265635373>, <121.71825291144941, 0.0, 197.81090734364625>, <137.42445447109665, 0.0, 367.07559633329157>}
  triangle { <121.71825291144941, 0.0, 197.81090734364625>, <141.39754552890335, 0.0, 366.6124036667084>, <137.42445447109665, 0.0, 367.07559633329157>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-7.029433198162428, 0.0, -48.621492831294155>, <-8.022566801837572, 0.0, -48.50450716870585>, <-7.557373379581266, 0.0, -53.10336798844557>}
  triangle { <-8.022566801837572, 0.0, -48.50450716870585>, <-8.55050698325641, 0.0, -52.986382325857264>, <-7.557373379581266, 0.0, -53.10336798844557>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-4.3832121605471075, 0.0, -22.840273655502422>, <-3.3887878394528923, 0.0, -22.94572634449758>, <-4.072083568060162, 0.0, -19.90631490769806>}
  triangle { <-3.3887878394528923, 0.0, -22.94572634449758>, <-3.0776592469659465, 0.0, -20.01176759669322>, <-4.072083568060162, 0.0, -19.90631490769806>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <37.017190541847185, 0.0, -40.69028368818699>, <37.90260234672492, 0.0, -40.22547627023504>, <35.162415339481655, 0.0, -37.11722907020786>}
  triangle { <37.90260234672492, 0.0, -40.22547627023504>, <35.88958466051835, 0.0, -36.43077092979214>, <35.162415339481655, 0.0, -37.11722907020786>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.162415339481655, 0.0, -37.11722907020786>, <35.88958466051835, 0.0, -36.43077092979214>, <30.330442550333743, 0.0, -34.206640869001696>}
  triangle { <35.88958466051835, 0.0, -36.43077092979214>, <31.087557449666257, 0.0, -33.55335913099831>, <30.330442550333743, 0.0, -34.206640869001696>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <30.330442550333743, 0.0, -34.206640869001696>, <31.087557449666257, 0.0, -33.55335913099831>, <29.080233587601708, 0.0, -31.264903522217395>}
  triangle { <31.087557449666257, 0.0, -33.55335913099831>, <30.003604964013906, 0.0, -30.8809955889539>, <29.080233587601708, 0.0, -31.264903522217395>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-35.85413543366917, 0.0, -33.0533050030823>, <-35.771864566330834, 0.0, -32.0566949969177>, <-45.784576245269356, 0.0, -32.2335400262419>}
  triangle { <-35.771864566330834, 0.0, -32.0566949969177>, <-45.70230537793102, 0.0, -31.236930020077303>, <-45.784576245269356, 0.0, -32.2335400262419>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.2956342099987839, 0.0, 38.729256911109296>, <2.290365790001216, 0.0, 38.6267430888907>, <2.047824259651179, 0.0, 46.028050189516016>}
  triangle { <2.290365790001216, 0.0, 38.6267430888907>, <3.0425558396536116, 0.0, 45.92553636729742>, <2.047824259651179, 0.0, 46.028050189516016>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <3.2672247720581176, 0.0, 46.10291134418977>, <4.680070225475266, 0.0, 46.924756427305105>}
  triangle { <3.2672247720581176, 0.0, 46.10291134418977>, <4.548951745911973, 0.0, 45.93338972203555>, <4.680070225475266, 0.0, 46.924756427305105>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <6.0776605172084235, 0.0, 47.118807756388826>, <6.098316058636393, 0.0, 55.63411115347512>}
  triangle { <6.0776605172084235, 0.0, 47.118807756388826>, <7.091108813253373, 0.0, 55.51426731183096>, <6.098316058636393, 0.0, 55.63411115347512>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <26.169491224822576, 0.0, -37.835512308207235>, <25.382508775177424, 0.0, -38.45248769179276>, <27.399725707109496, 0.0, -39.404736903330615>}
  triangle { <25.382508775177424, 0.0, -38.45248769179276>, <26.612743257464345, 0.0, -40.02171228691614>, <27.399725707109496, 0.0, -39.404736903330615>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.8763441209135, 0.0, -57.58963486166906>, <-52.39552052567508, 0.0, -57.95551339182828>, <-54.94357616285652, 0.0, -48.715649509551994>}
  triangle { <-52.39552052567508, 0.0, -57.95551339182828>, <-51.462752567618104, 0.0, -49.081528039711216>, <-54.94357616285652, 0.0, -48.715649509551994>}
  triangle { <-54.94357616285652, 0.0, -48.715649509551994>, <-51.462752567618104, 0.0, -49.081528039711216>, <-48.971012500357325, 0.0, 3.181863254537082>}
  triangle { <-51.462752567618104, 0.0, -49.081528039711216>, <-46.772987499642674, 0.0, 0.45813674546291794>, <-48.971012500357325, 0.0, 3.181863254537082>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-48.971012500357325, 0.0, 3.181863254537082>, <-46.772987499642674, 0.0, 0.45813674546291794>, <-40.7141664447756, 0.0, 2.8035639031589827>}
  triangle { <-46.772987499642674, 0.0, 0.45813674546291794>, <-41.09174106786705, 0.0, -0.6760104104600495>, <-40.7141664447756, 0.0, 2.8035639031589827>}
  triangle { <-40.7141664447756, 0.0, 2.8035639031589827>, <-41.09174106786705, 0.0, -0.6760104104600495>, <33.40929220005197, 0.0, -5.650928054244325>}
  triangle { <-41.09174106786705, 0.0, -0.6760104104600495>, <30.884707799948025, 0.0, -8.075071945755676>, <33.40929220005197, 0.0, -5.650928054244325>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <33.40929220005197, 0.0, -5.650928054244325>, <30.884707799948025, 0.0, -8.075071945755676>, <34.84177451160303, 0.0, -20.840248148449554>}
  triangle { <30.884707799948025, 0.0, -8.075071945755676>, <31.374225488396963, 0.0, -21.315751851550445>, <34.84177451160303, 0.0, -20.840248148449554>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <34.84177451160303, 0.0, -20.840248148449554>, <31.374225488396963, 0.0, -21.315751851550445>, <35.62370498399815, 0.0, -24.57955985091777>}
  triangle { <31.374225488396963, 0.0, -21.315751851550445>, <32.19703240881893, 0.0, -25.29224145059229>, <35.62370498399815, 0.0, -24.57955985091777>}
  triangle { <35.62370498399815, 0.0, -24.57955985091777>, <32.19703240881893, 0.0, -25.29224145059229>, <35.96001705328757, 0.0, -26.27832369499585>}
  triangle { <32.19703240881893, 0.0, -25.29224145059229>, <32.66398294671242, 0.0, -27.45567630500415>, <35.96001705328757, 0.0, -26.27832369499585>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <35.96001705328757, 0.0, -26.27832369499585>, <32.66398294671242, 0.0, -27.45567630500415>, <38.69326639226348, 0.0, -31.48875346113766>}
  triangle { <32.66398294671242, 0.0, -27.45567630500415>, <35.718733607736525, 0.0, -33.33324653886234>, <38.69326639226348, 0.0, -31.48875346113766>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <38.69326639226348, 0.0, -31.48875346113766>, <35.718733607736525, 0.0, -33.33324653886234>, <42.749003995964635, 0.0, -37.24732640360594>}
  triangle { <35.718733607736525, 0.0, -33.33324653886234>, <39.372996004035365, 0.0, -38.17067359639407>, <42.749003995964635, 0.0, -37.24732640360594>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <42.749003995964635, 0.0, -37.24732640360594>, <39.372996004035365, 0.0, -38.17067359639407>, <40.77702333501752, 0.0, -59.118967924287716>}
  triangle { <39.372996004035365, 0.0, -38.17067359639407>, <37.29283333897001, 0.0, -58.786672767172035>, <40.77702333501752, 0.0, -59.118967924287716>}
  triangle { <40.77702333501752, 0.0, -59.118967924287716>, <37.29283333897001, 0.0, -58.786672767172035>, <40.00963931178686, 0.0, -67.16516324074883>}
  triangle { <37.29283333897001, 0.0, -58.786672767172035>, <36.52544931573936, 0.0, -66.83286808363314>, <40.00963931178686, 0.0, -67.16516324074883>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-50.284541421468916, 0.0, 26.229808326278178>, <-49.28941815703415, 0.0, 26.13116914247833>, <-49.02937024321101, 0.0, 37.365416228090346>}
  triangle { <-49.28941815703415, 0.0, 26.13116914247833>, <-48.404629756788985, 0.0, 36.58458377190966>, <-49.02937024321101, 0.0, 37.365416228090346>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-49.02937024321101, 0.0, 37.365416228090346>, <-48.404629756788985, 0.0, 36.58458377190966>, <-45.43009519531502, 0.0, 36.92823423881494>}
  triangle { <-48.404629756788985, 0.0, 36.58458377190966>, <-46.21590480468498, 0.0, 36.30976576118506>, <-45.43009519531502, 0.0, 36.92823423881494>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-45.43009519531502, 0.0, 36.92823423881494>, <-46.21590480468498, 0.0, 36.30976576118506>, <-46.75320712947428, 0.0, 25.475898913666384>}
  triangle { <-46.21590480468498, 0.0, 36.30976576118506>, <-47.53479287052571, 0.0, 24.85210108633362>, <-46.75320712947428, 0.0, 25.475898913666384>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-46.75320712947428, 0.0, 25.475898913666384>, <-47.53479287052571, 0.0, 24.85210108633362>, <-41.48845126783314, 0.0, 25.0492236061808>}
  triangle { <-47.53479287052571, 0.0, 24.85210108633362>, <-41.59703450025469, 0.0, 24.055136245011322>, <-41.48845126783314, 0.0, 25.0492236061808>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-38.33743654968535, 0.0, 59.0251792487881>, <-38.72994755173134, 0.0, 59.94492655825568>, <-56.22699721006738, 0.0, 51.3906373385389>}
  triangle { <-38.72994755173134, 0.0, 59.94492655825568>, <-56.619508212113374, 0.0, 52.31038464800648>, <-56.22699721006738, 0.0, 51.3906373385389>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-43.03477656700244, 0.0, -3.4426199361280707>, <-44.029223432997554, 0.0, -3.3373800638719295>, <-44.16405625937071, 0.0, -14.113562677053148>}
  triangle { <-44.029223432997554, 0.0, -3.3373800638719295>, <-45.158503125365826, 0.0, -14.008322804797006>, <-44.16405625937071, 0.0, -14.113562677053148>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-44.310639558782114, 0.0, -15.524078907718275>, <-45.30547612620413, 0.0, -15.422588986445403>, <-45.89050897460583, 0.0, -31.010462648102738>}
  triangle { <-45.30547612620413, 0.0, -15.422588986445403>, <-46.88534554202784, 0.0, -30.908972726829866>, <-45.89050897460583, 0.0, -31.010462648102738>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-46.04228972842782, 0.0, -32.44611796843449>, <-47.036355428196146, 0.0, -32.337336607236395>, <-47.81873238539152, 0.0, -48.6796040495391>}
  triangle { <-47.036355428196146, 0.0, -32.337336607236395>, <-48.81279808515985, 0.0, -48.570822688341>, <-47.81873238539152, 0.0, -48.6796040495391>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-43.97608931337085, 0.0, -14.346719467722101>, <-44.0842396574952, 0.0, -15.340854017501849>, <-4.15176034250479, 0.0, -18.67914598249815>}
  triangle { <-44.0842396574952, 0.0, -15.340854017501849>, <-4.259910686629146, 0.0, -19.6732805322779>, <-4.15176034250479, 0.0, -18.67914598249815>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.742880123233158, 0.0, -18.827712485876276>, <-2.844465871004029, 0.0, -19.822539272734083>, <23.104910630989092, 0.0, -21.471383573144422>}
  triangle { <-2.844465871004029, 0.0, -19.822539272734083>, <22.875089369010905, 0.0, -22.444616426855575>, <23.104910630989092, 0.0, -21.471383573144422>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <23.104910630989092, 0.0, -21.471383573144422>, <22.875089369010905, 0.0, -22.444616426855575>, <26.838730728507848, 0.0, -22.92762585708559>}
  triangle { <22.875089369010905, 0.0, -22.444616426855575>, <26.133269271492154, 0.0, -23.63637414291441>, <26.838730728507848, 0.0, -22.92762585708559>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <26.838730728507848, 0.0, -22.92762585708559>, <26.133269271492154, 0.0, -23.63637414291441>, <28.390202874349974, 0.0, -26.845659791894292>}
  triangle { <26.133269271492154, 0.0, -23.63637414291441>, <27.45667832987653, 0.0, -27.204173285176843>, <28.390202874349974, 0.0, -26.845659791894292>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <29.049279264971425, 0.0, -31.26994831959074>, <28.051792643864623, 0.0, -31.19909325122628>, <28.467940404046413, 0.0, -39.453946295846485>}
  triangle { <28.051792643864623, 0.0, -31.19909325122628>, <27.47045378293961, 0.0, -39.38309122748203>, <28.467940404046413, 0.0, -39.453946295846485>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <29.295030708427102, 0.0, -40.391576580216764>, <29.240857593262593, 0.0, -41.390108138853435>, <36.942584390538144, 0.0, -40.80647764444894>}
  triangle { <29.240857593262593, 0.0, -41.390108138853435>, <36.88841127537364, 0.0, -41.80500920308561>, <36.942584390538144, 0.0, -40.80647764444894>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <37.32693622358962, 0.0, -42.321142450296236>, <36.62279532762864, 0.0, -58.08816689806281>}
  triangle { <37.32693622358962, 0.0, -42.321142450296236>, <35.628625138651856, 0.0, -57.98034465847438>, <36.62279532762864, 0.0, -58.08816689806281>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-61.6291513500116, 0.0, 61.18562033071276>, <-65.10801294257925, 0.0, 61.56970628431899>, <-63.15379228059206, 0.0, 47.37617292433706>}
  triangle { <-65.10801294257925, 0.0, 61.56970628431899>, <-66.63265387315971, 0.0, 47.76025887794329>, <-63.15379228059206, 0.0, 47.37617292433706>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-40.86540099527133, 0.0, 17.978213294923922>, <-40.97755862969235, 0.0, 16.984522867758056>, <-14.848204145137338, 0.0, 15.002535887587474>}
  triangle { <-40.97755862969235, 0.0, 16.984522867758056>, <-15.335795854862663, 0.0, 14.129464112412528>, <-14.848204145137338, 0.0, 15.002535887587474>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-14.848204145137338, 0.0, 15.002535887587474>, <-15.335795854862663, 0.0, 14.129464112412528>, <-12.197105639890816, 0.0, 11.618480859954857>}
  triangle { <-15.335795854862663, 0.0, 14.129464112412528>, <-12.684894360109185, 0.0, 10.745519140045143>, <-12.197105639890816, 0.0, 11.618480859954857>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-12.197105639890816, 0.0, 11.618480859954857>, <-12.684894360109185, 0.0, 10.745519140045143>, <-3.773117518037493, 0.0, 10.702896248682935>}
  triangle { <-12.684894360109185, 0.0, 10.745519140045143>, <-3.885723625979062, 0.0, 9.709256543128527>, <-3.773117518037493, 0.0, 10.702896248682935>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.3407146605188185, 0.0, 10.53783139484442>, <-2.4570656167821703, 0.0, 9.544623231881285>, <-2.2429343832178295, 0.0, 10.526376768118714>}
  triangle { <-2.4570656167821703, 0.0, 9.544623231881285>, <-2.3592853394811812, 0.0, 9.533168605155579>, <-2.2429343832178295, 0.0, 10.526376768118714>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-0.8149656806784428, 0.0, 10.3630204494435>, <-0.9259266975239869, 0.0, 9.369195689870363>, <1.1506306414217726, 0.0, 10.101788941010822>}
  triangle { <-0.9259266975239869, 0.0, 9.369195689870363>, <1.4453693585782275, 0.0, 9.146211058989179>, <1.1506306414217726, 0.0, 10.101788941010822>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.1506306414217726, 0.0, 10.101788941010822>, <1.4453693585782275, 0.0, 9.146211058989179>, <4.517540733967097, 0.0, 12.994824925171535>}
  triangle { <1.4453693585782275, 0.0, 9.146211058989179>, <4.818459266032903, 0.0, 12.041175074828466>, <4.517540733967097, 0.0, 12.994824925171535>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <4.517540733967097, 0.0, 12.994824925171535>, <4.818459266032903, 0.0, 12.041175074828466>, <27.618198446646435, 0.0, 10.61345846883056>}
  triangle { <4.818459266032903, 0.0, 12.041175074828466>, <28.247801553353565, 0.0, 9.83654153116944>, <27.618198446646435, 0.0, 10.61345846883056>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <27.618198446646435, 0.0, 10.61345846883056>, <28.247801553353565, 0.0, 9.83654153116944>, <27.970598356982602, 0.0, 15.099339689473796>}
  triangle { <28.247801553353565, 0.0, 9.83654153116944>, <28.964502853739535, 0.0, 14.98909518246167>, <27.970598356982602, 0.0, 15.099339689473796>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <28.81099230831381, 0.0, 17.170224126240008>, <29.600648590069138, 0.0, 16.55667465253447>, <31.240080420731033, 0.0, 20.29653222218343>}
  triangle { <29.600648590069138, 0.0, 16.55667465253447>, <32.02973670248636, 0.0, 19.68298274847789>, <31.240080420731033, 0.0, 20.29653222218343>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <31.893999462309278, 0.0, 21.90093511003126>, <32.8875657029083, 0.0, 21.787682624222196>, <32.16167509174056, 0.0, 24.249258565662952>}
  triangle { <32.8875657029083, 0.0, 21.787682624222196>, <33.155241332339585, 0.0, 24.13600607985389>, <32.16167509174056, 0.0, 24.249258565662952>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <32.30301103030029, 0.0, 25.66789513565129>, <33.299391812939554, 0.0, 25.58289315927924>, <32.885457022121905, 0.0, 32.49524219210339>}
  triangle { <33.299391812939554, 0.0, 25.58289315927924>, <33.88183780476117, 0.0, 32.410240215731335>, <32.885457022121905, 0.0, 32.49524219210339>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <34.12180861757728, 0.0, 35.01227703487515>, <34.60546477340168, 0.0, 50.02601741880976>}
  triangle { <34.12180861757728, 0.0, 35.01227703487515>, <35.60058570524147, 0.0, 49.927354705415624>, <34.60546477340168, 0.0, 50.02601741880976>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.40860605271313, 0.0, -14.24079877372032>, <89.9707176190701, 0.0, -15.067860190404547>, <96.97026630435731, 0.0, -9.10152301672566>}
  triangle { <89.9707176190701, 0.0, -15.067860190404547>, <97.53237787071428, 0.0, -9.928584433409887>, <96.97026630435731, 0.0, -9.10152301672566>}
  triangle { <96.97026630435731, 0.0, -9.10152301672566>, <97.53237787071428, 0.0, -9.928584433409887>, <104.53192931102001, 0.0, -3.9622453872850913>}
  triangle { <97.53237787071428, 0.0, -9.928584433409887>, <105.09404087737698, 0.0, -4.7893068039693185>, <104.53192931102001, 0.0, -3.9622453872850913>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <27.950114524680544, 0.0, 24.171317565884387>, <27.897885475319455, 0.0, 23.172682434115615>, <29.764110894783837, 0.0, 24.076444771065773>}
  triangle { <27.897885475319455, 0.0, 23.172682434115615>, <29.71188184542275, 0.0, 23.077809639297>, <29.764110894783837, 0.0, 24.076444771065773>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <30.894828619175353, 0.0, 22.76449199565658>, <29.899420311812978, 0.0, 22.860211908078053>, <30.61007680591144, 0.0, 21.32971795658606>}
  triangle { <29.899420311812978, 0.0, 22.860211908078053>, <29.83792319408856, 0.0, 20.694282043413942>, <30.61007680591144, 0.0, 21.32971795658606>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <30.61007680591144, 0.0, 21.32971795658606>, <29.83792319408856, 0.0, 20.694282043413942>, <31.286782140715086, 0.0, 21.410144628346266>}
  triangle { <29.83792319408856, 0.0, 20.694282043413942>, <31.189154118313088, 0.0, 20.414921653710998>, <31.286782140715086, 0.0, 21.410144628346266>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <29.967, 0.0, 24.26899998368323>, <30.967, 0.0, 24.26899998368323>, <30.130182442694025, 0.0, 25.488532046094026>}
  triangle { <30.967, 0.0, 24.26899998368323>, <30.803817557305972, 0.0, 24.749467953905974>, <30.130182442694025, 0.0, 25.488532046094026>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <30.130182442694025, 0.0, 25.488532046094026>, <30.803817557305972, 0.0, 24.749467953905974>, <32.069298033182896, 0.0, 25.472410177560064>}
  triangle { <30.803817557305972, 0.0, 24.749467953905974>, <31.976866568459407, 0.0, 24.476691128666715>, <32.069298033182896, 0.0, 25.472410177560064>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.8410824988302747, 0.0, 46.28896492949304>, <1.9686898768616372, 0.0, 47.280789690764884>, <-0.5401689696879943, 0.0, 46.73883311070674>}
  triangle { <1.9686898768616372, 0.0, 47.280789690764884>, <0.24416896968799431, 0.0, 47.359166889293256>, <-0.5401689696879943, 0.0, 46.73883311070674>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-0.5401689696879943, 0.0, 46.73883311070674>, <0.24416896968799431, 0.0, 47.359166889293256>, <0.3036219926868778, 0.0, 56.148084799413375>}
  triangle { <0.24416896968799431, 0.0, 47.359166889293256>, <1.2981664492748917, 0.0, 56.04377121511079>, <0.3036219926868778, 0.0, 56.148084799413375>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <6.217657021520886, 0.0, 46.9919986282377>, <6.434818894586079, 0.0, 46.01586302244986>, <32.353250955719155, 0.0, 52.80641057957807>}
  triangle { <6.434818894586079, 0.0, 46.01586302244986>, <32.57041282878435, 0.0, 51.830274973790225>, <32.353250955719155, 0.0, 52.80641057957807>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <81.45698517045945, 0.0, -11.862528597476341>, <81.41101482954055, 0.0, -12.861471402523659>, <84.82476751124723, 0.0, -12.017510545956714>}
  triangle { <81.41101482954055, 0.0, -12.861471402523659>, <84.77879717032833, 0.0, -13.016453351004031>, <84.82476751124723, 0.0, -12.017510545956714>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <86.0694302516052, 0.0, -11.831026775005597>, <85.30696516258871, 0.0, -9.41429166448101>}
  triangle { <86.0694302516052, 0.0, -11.831026775005597>, <85.99103483741129, 0.0, -10.14370833551899>, <85.30696516258871, 0.0, -9.41429166448101>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <85.95242455401045, 0.0, -13.343672575454507>, <84.95908203389111, 0.0, -13.228474321461755>, <85.62675898566631, 0.0, -14.790292743489223>}
  triangle { <84.95908203389111, 0.0, -13.228474321461755>, <84.86124101433369, 0.0, -15.433707256510777>, <85.62675898566631, 0.0, -14.790292743489223>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <29.653255987684698, 0.0, 16.430184817516018>, <29.531588679780132, 0.0, 15.437613879906392>, <49.45710830400129, 0.0, 14.002669255486229>}
  triangle { <29.531588679780132, 0.0, 15.437613879906392>, <49.335440996096715, 0.0, 13.0100983178766>, <49.45710830400129, 0.0, 14.002669255486229>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <50.68242378556213, 0.0, 14.065016557188708>, <53.9811344449339, 0.0, 49.7645167996789>}
  triangle { <50.68242378556213, 0.0, 14.065016557188708>, <54.97393866257303, 0.0, 49.64476795651983>, <53.9811344449339, 0.0, 49.7645167996789>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <53.916752167800176, 0.0, 49.7999285509423>, <53.283993153605486, 0.0, 50.57427732891986>, <34.82577638357442, 0.0, 34.199739901078594>}
  triangle { <53.283993153605486, 0.0, 50.57427732891986>, <34.19301736937973, 0.0, 34.97408867905616>, <34.82577638357442, 0.0, 34.199739901078594>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <44.19316914887476, 0.0, -58.58059439037445>, <45.387145258474206, 0.0, -32.09269160258528>}
  triangle { <44.19316914887476, 0.0, -58.58059439037445>, <46.026854741525796, 0.0, -32.86130839741471>, <45.387145258474206, 0.0, -32.09269160258528>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <45.387145258474206, 0.0, -32.09269160258528>, <46.026854741525796, 0.0, -32.86130839741471>, <52.067654221420504, 0.0, -32.64778019652613>}
  triangle { <46.026854741525796, 0.0, -32.86130839741471>, <51.9623457785795, 0.0, -33.64221980347388>, <52.067654221420504, 0.0, -32.64778019652613>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-93.2963024983847, 0.0, -43.885147729660744>, <-90.77609647889703, 0.0, -7.248681892930476>}
  triangle { <-93.2963024983847, 0.0, -43.885147729660744>, <-89.78069285242289, 0.0, -7.344450470251665>, <-90.77609647889703, 0.0, -7.248681892930476>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-90.30495082522118, 0.0, -2.7254231000199556>, <-89.31117802039459, 0.0, -2.8368484669123224>, <-87.89256631198059, 0.0, 18.789983946914784>}
  triangle { <-89.31117802039459, 0.0, -2.8368484669123224>, <-86.898793507154, 0.0, 18.678558580022415>, <-87.89256631198059, 0.0, 18.789983946914784>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-87.49805396628938, 0.0, 22.38601134349756>, <-86.50376067184908, 0.0, 22.279330301924784>, <-83.00702380582759, 0.0, 64.24350643206863>}
  triangle { <-86.50376067184908, 0.0, 22.279330301924784>, <-82.01273051138729, 0.0, 64.13682539049584>, <-83.00702380582759, 0.0, 64.24350643206863>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-81.7558493005777, 0.0, 64.34528097294006>, <-80.12320115900376, 0.0, 65.18571571205975>}
  triangle { <-81.7558493005777, 0.0, 64.34528097294006>, <-80.22353266126517, 0.0, 64.19076164796736>, <-80.12320115900376, 0.0, 65.18571571205975>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-78.69013465816408, 0.0, 65.040638109826>, <-78.79124507073593, 0.0, 64.04576289932493>, <-70.79480617738143, 0.0, 64.23822599657196>}
  triangle { <-78.79124507073593, 0.0, 64.04576289932493>, <-70.89591658995327, 0.0, 63.243350786070884>, <-70.79480617738143, 0.0, 64.23822599657196>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-69.3823826795885, 0.0, 64.09518095677576>, <-69.48279401750271, 0.0, 63.10023494657305>, <-64.73470791178518, 0.0, 63.6261311421731>}
  triangle { <-69.48279401750271, 0.0, 63.10023494657305>, <-64.83511924969939, 0.0, 62.63118513197039>, <-64.73470791178518, 0.0, 63.6261311421731>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-61.55087600066903, 0.0, 63.30479171067639>, <-61.651301369395235, 0.0, 62.30984711658272>, <-56.80514740737244, 0.0, 62.825778560913534>}
  triangle { <-61.651301369395235, 0.0, 62.30984711658272>, <-56.905572776098644, 0.0, 61.83083396681987>, <-56.80514740737244, 0.0, 62.825778560913534>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.37202956392713, 0.0, 62.68044826188347>, <-55.47338625140756, 0.0, 61.68559811140703>, <-38.6339704140218, 0.0, 60.97515201252023>}
  triangle { <-55.47338625140756, 0.0, 61.68559811140703>, <-38.735327101502236, 0.0, 59.980301862043795>, <-38.6339704140218, 0.0, 60.97515201252023>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-34.63759330702872, 0.0, 60.587409720605244>, <-34.72937434680074, 0.0, 59.59163050775816>, <0.2049295026614316, 0.0, 57.37597195358234>}
  triangle { <-34.72937434680074, 0.0, 59.59163050775816>, <0.1131484628894174, 0.0, 56.380192740735254>, <0.2049295026614316, 0.0, 57.37597195358234>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.6379611634353695, 0.0, 57.24537646710675>, <1.548229858835267, 0.0, 56.24941045715724>, <6.0087701411647325, 0.0, 56.85158954284276>}
  triangle { <1.548229858835267, 0.0, 56.24941045715724>, <5.9190388365646305, 0.0, 55.85562353289325>, <6.0087701411647325, 0.0, 56.85158954284276>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <7.338877289716304, 0.0, 55.70969226787376>, <32.46724579985797, 0.0, 53.8140524903658>}
  triangle { <7.338877289716304, 0.0, 55.70969226787376>, <32.35251009500541, 0.0, 52.82065643740808>, <32.46724579985797, 0.0, 53.8140524903658>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <38.44494754284878, 0.0, 53.167944013129016>, <38.34476791581325, 0.0, 52.17297464559702>, <53.354830890825546, 0.0, 51.666725380993086>}
  triangle { <38.34476791581325, 0.0, 52.17297464559702>, <53.25465126379002, 0.0, 50.67175601346109>, <53.354830890825546, 0.0, 51.666725380993086>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <56.02199127190947, 0.0, 51.39578813590365>, <55.92004585108769, 0.0, 50.40099814240076>, <89.84281376403065, 0.0, 47.92563929104534>}
  triangle { <55.92004585108769, 0.0, 50.40099814240076>, <89.61318623596934, 0.0, 46.95236070895466>, <89.84281376403065, 0.0, 47.92563929104534>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.84281376403065, 0.0, 47.92563929104534>, <89.61318623596934, 0.0, 46.95236070895466>, <92.6065077423244, 0.0, 46.88585765987982>}
  triangle { <89.61318623596934, 0.0, 46.95236070895466>, <92.25304791846557, 0.0, 45.95040795363276>, <92.6065077423244, 0.0, 46.88585765987982>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <94.34415181957051, 0.0, 45.35159153299244>, <93.45967505253584, 0.0, 44.885007297750924>, <95.64736124372814, 0.0, 42.83354257486118>}
  triangle { <93.45967505253584, 0.0, 44.885007297750924>, <94.66463875627187, 0.0, 42.64845742513882>, <95.64736124372814, 0.0, 42.83354257486118>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <95.64736124372814, 0.0, 42.83354257486118>, <94.66463875627187, 0.0, 42.64845742513882>, <89.75919788453275, 0.0, -9.199098073907466>}
  triangle { <94.66463875627187, 0.0, 42.64845742513882>, <88.76558776693169, 0.0, -9.08623118682001>, <89.75919788453275, 0.0, -9.199098073907466>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.6170416930674, 0.0, -10.6373468234147>, <88.62056188873505, 0.0, -10.55351365839188>, <89.31832470305051, 0.0, -14.188035237502028>}
  triangle { <88.62056188873505, 0.0, -10.55351365839188>, <88.32184489871815, 0.0, -14.104202072479207>, <89.31832470305051, 0.0, -14.188035237502028>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.07876537935476, 0.0, -16.533318305315714>, <88.0859152121335, 0.0, -16.413951034052896>, <86.34450376980865, 0.0, -39.27583447029798>}
  triangle { <88.0859152121335, 0.0, -16.413951034052896>, <85.35165360258739, 0.0, -39.15646719903516>, <86.34450376980865, 0.0, -39.27583447029798>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <86.09402956726586, 0.0, -41.53275877360668>, <85.09916649734205, 0.0, -41.43152897511943>, <84.45099337616715, 0.0, -57.68013882868128>}
  triangle { <85.09916649734205, 0.0, -41.43152897511943>, <83.45613030624334, 0.0, -57.578909030194026>, <84.45099337616715, 0.0, -57.68013882868128>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <83.12809535910418, 0.0, -60.06655180942114>, <82.5150949358918, 0.0, -59.27646923073621>, <80.06821084337997, 0.0, -62.440620740598035>}
  triangle { <82.5150949358918, 0.0, -59.27646923073621>, <79.45521042016759, 0.0, -61.650538161913104>, <80.06821084337997, 0.0, -62.440620740598035>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <55.05664009262479, 0.0, -59.01376874634803>, <55.58855710413711, 0.0, -59.86056523480544>, <84.4806935189796, 0.0, -40.53098713534157>}
  triangle { <55.58855710413711, 0.0, -59.86056523480544>, <85.01261053049193, 0.0, -41.37778362379898>, <84.4806935189796, 0.0, -40.53098713534157>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <44.39468881695133, 0.0, -58.82041326017488>, <44.29876276977065, 0.0, -59.81580172377705>, <52.55201870831949, 0.0, -59.60653891929296>}
  triangle { <44.29876276977065, 0.0, -59.81580172377705>, <52.456092661138804, 0.0, -60.60192738289513>, <52.55201870831949, 0.0, -59.60653891929296>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <55.60118555189587, 0.0, -59.915083725378025>, <55.49576237913884, 0.0, -60.90951117604793>, <77.4231788322653, 0.0, -62.22851922632819>}
  triangle { <55.49576237913884, 0.0, -60.90951117604793>, <77.31775565950825, 0.0, -63.22294667699809>, <77.4231788322653, 0.0, -62.22851922632819>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <80.08956782725117, 0.0, -62.51624427280173>, <79.98042075135818, 0.0, -63.51026988405327>, <82.71387511384249, 0.0, -62.80440130148781>}
  triangle { <79.98042075135818, 0.0, -63.51026988405327>, <82.6047280379495, 0.0, -63.79842691273935>, <82.71387511384249, 0.0, -62.80440130148781>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <84.14477511138351, 0.0, -62.96065973873211>, <84.03680715611345, 0.0, -63.95481411338165>, <89.85438923031238, 0.0, -63.580739856590164>}
  triangle { <84.03680715611345, 0.0, -63.95481411338165>, <89.74642127504232, 0.0, -64.5748942312397>, <89.85438923031238, 0.0, -63.580739856590164>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <93.39385566935897, 0.0, -63.96676682947179>, <93.28498227285056, 0.0, -64.96082245343491>, <98.34165722101578, 0.0, -64.50867207822525>}
  triangle { <93.28498227285056, 0.0, -64.96082245343491>, <98.23278382450737, 0.0, -65.50272770218838>, <98.34165722101578, 0.0, -64.50867207822525>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-92.77950337327036, 0.0, 65.11882139722398>, <-92.55449662672964, 0.0, 66.093178602776>, <-95.4510657840248, 0.0, 66.20010966721901>}
  triangle { <-92.55449662672964, 0.0, 66.093178602776>, <-95.07384124458888, 0.0, 67.12623149875489>, <-95.4510657840248, 0.0, 66.20010966721901>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-96.67965523900031, 0.0, 66.51025792304031>, <-96.57210882080724, 0.0, 67.50445798738039>, <-120.05377320909653, 0.0, 69.03872553863515>}
  triangle { <-96.57210882080724, 0.0, 67.50445798738039>, <-119.94622679090347, 0.0, 70.03292560297523>, <-120.05377320909653, 0.0, 69.03872553863515>}
  triangle { <-120.05377320909653, 0.0, 69.03872553863515>, <-119.94622679090347, 0.0, 70.03292560297523>, <-222.24278960686848, 0.0, 80.0929017419132>}
  triangle { <-119.94622679090347, 0.0, 70.03292560297523>, <-222.1352103931315, 0.0, 81.08709825808681>, <-222.24278960686848, 0.0, 80.0929017419132>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-222.24278960686848, 0.0, 80.0929017419132>, <-222.1352103931315, 0.0, 81.08709825808681>, <-336.3147146855853, 0.0, 92.4775032031145>}
  triangle { <-222.1352103931315, 0.0, 81.08709825808681>, <-336.5912853144147, 0.0, 93.4384967968855>, <-336.3147146855853, 0.0, 92.4775032031145>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-336.3147146855853, 0.0, 92.4775032031145>, <-336.5912853144147, 0.0, 93.4384967968855>, <-340.5998447086174, 0.0, 89.09552390342>}
  triangle { <-336.5912853144147, 0.0, 93.4384967968855>, <-341.4721552913826, 0.0, 89.58447609658>, <-340.5998447086174, 0.0, 89.09552390342>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-340.5998447086174, 0.0, 89.09552390342>, <-341.4721552913826, 0.0, 89.58447609658>, <-353.89104317153465, 0.0, -20.97761411940698>}
  triangle { <-341.4721552913826, 0.0, 89.58447609658>, <-354.6889568284654, 0.0, -21.58038588059302>, <-353.89104317153465, 0.0, -20.97761411940698>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-94.34974857939015, 0.0, -45.26247150310075>, <-94.70280583182439, 0.0, -44.32686978415001>, <-97.13595924754954, 0.0, -46.31387175523637>}
  triangle { <-94.70280583182439, 0.0, -44.32686978415001>, <-97.48901649998378, 0.0, -45.378270036285635>, <-97.13595924754954, 0.0, -46.31387175523637>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-101.65654407236241, 0.0, -48.070655399299795>, <-102.02790682527737, 0.0, -47.14216753952594>, <-105.15701838369627, 0.0, -49.47003483590496>}
  triangle { <-102.02790682527737, 0.0, -47.14216753952594>, <-105.48098161630374, 0.0, -48.52396516409504>, <-105.15701838369627, 0.0, -49.47003483590496>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-105.15701838369627, 0.0, -49.47003483590496>, <-105.48098161630374, 0.0, -48.52396516409504>, <-108.39854096215613, 0.0, -50.367151097130886>}
  triangle { <-105.48098161630374, 0.0, -48.52396516409504>, <-108.99545903784387, 0.0, -49.564848902869116>, <-108.39854096215613, 0.0, -50.367151097130886>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-108.39854096215613, 0.0, -50.367151097130886>, <-108.99545903784387, 0.0, -49.564848902869116>, <-110.06403806886199, 0.0, -53.020158643385905>}
  triangle { <-108.99545903784387, 0.0, -49.564848902869116>, <-110.90548391837798, 0.0, -52.4798171936226>, <-110.06403806886199, 0.0, -53.020158643385905>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-111.60923146027581, 0.0, -53.766946942727614>, <-111.50983567770614, 0.0, -52.771898964785166>, <-120.04969789128484, 0.0, -52.923825018196915>}
  triangle { <-111.50983567770614, 0.0, -52.771898964785166>, <-119.95030210871516, 0.0, -51.92877704025447>, <-120.04969789128484, 0.0, -52.923825018196915>}
  triangle { <-120.04969789128484, 0.0, -52.923825018196915>, <-119.95030210871516, 0.0, -51.92877704025447>, <-240.5486296542372, 0.0, -40.88654896018181>}
  triangle { <-119.95030210871516, 0.0, -51.92877704025447>, <-240.40137034576279, 0.0, -39.89745103981819>, <-240.5486296542372, 0.0, -40.88654896018181>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-240.5486296542372, 0.0, -40.88654896018181>, <-240.40137034576279, 0.0, -39.89745103981819>, <-266.4059502441755, 0.0, -35.75220397656812>}
  triangle { <-240.40137034576279, 0.0, -39.89745103981819>, <-266.2300497558245, 0.0, -34.76779602343188>, <-266.4059502441755, 0.0, -35.75220397656812>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-266.4059502441755, 0.0, -35.75220397656812>, <-266.2300497558245, 0.0, -34.76779602343188>, <-354.6889568284654, 0.0, -21.58038588059302>}
  triangle { <-266.2300497558245, 0.0, -34.76779602343188>, <-353.89104317153465, 0.0, -20.97761411940698>, <-354.6889568284654, 0.0, -21.58038588059302>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-21.131305182271497, 0.0, -1109.2650153060388>, <-17.1566948177285, 0.0, -1109.7149846939612>, <-17.357332882086652, 0.0, -1075.9292601152952>}
  triangle { <-17.1566948177285, 0.0, -1109.7149846939612>, <-13.382667117913345, 0.0, -1076.3787398847048>, <-17.357332882086652, 0.0, -1075.9292601152952>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-17.357332882086652, 0.0, -1075.9292601152952>, <-13.382667117913345, 0.0, -1076.3787398847048>, <-13.28944525843971, 0.0, -1039.9187987240007>}
  triangle { <-13.382667117913345, 0.0, -1076.3787398847048>, <-9.310554741560292, 0.0, -1040.3292012759994>, <-13.28944525843971, 0.0, -1039.9187987240007>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-13.28944525843971, 0.0, -1039.9187987240007>, <-9.310554741560292, 0.0, -1040.3292012759994>, <-8.420309146580154, 0.0, -987.7567531671511>}
  triangle { <-9.310554741560292, 0.0, -1040.3292012759994>, <-4.437690853419846, 0.0, -988.1292468328488>, <-8.420309146580154, 0.0, -987.7567531671511>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-8.420309146580154, 0.0, -987.7567531671511>, <-4.437690853419846, 0.0, -988.1292468328488>, <-6.821311204469295, 0.0, -970.693775170949>}
  triangle { <-4.437690853419846, 0.0, -988.1292468328488>, <-2.8386887955307047, 0.0, -971.066224829051>, <-6.821311204469295, 0.0, -970.693775170949>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-6.821311204469295, 0.0, -970.693775170949>, <-2.8386887955307047, 0.0, -971.066224829051>, <-1.4914012327811448, 0.0, -913.5832886499375>}
  triangle { <-2.8386887955307047, 0.0, -971.066224829051>, <2.489401232781145, 0.0, -913.9747113500625>, <-1.4914012327811448, 0.0, -913.5832886499375>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-1.4914012327811448, 0.0, -913.5832886499375>, <2.489401232781145, 0.0, -913.9747113500625>, <1.728177426532253, 0.0, -882.4266334498794>}
  triangle { <2.489401232781145, 0.0, -913.9747113500625>, <5.703822573467748, 0.0, -882.8673665501207>, <1.728177426532253, 0.0, -882.4266334498794>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <1.728177426532253, 0.0, -882.4266334498794>, <5.703822573467748, 0.0, -882.8673665501207>, <14.463419864576975, 0.0, -774.8602678039698>}
  triangle { <5.703822573467748, 0.0, -882.8673665501207>, <18.434580135423026, 0.0, -775.3397321960302>, <14.463419864576975, 0.0, -774.8602678039698>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <14.463419864576975, 0.0, -774.8602678039698>, <18.434580135423026, 0.0, -775.3397321960302>, <16.4668957072804, 0.0, -758.5823589791801>}
  triangle { <18.434580135423026, 0.0, -775.3397321960302>, <20.437104292719603, 0.0, -759.06964102082>, <16.4668957072804, 0.0, -758.5823589791801>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <16.4668957072804, 0.0, -758.5823589791801>, <20.437104292719603, 0.0, -759.06964102082>, <16.97090365491635, 0.0, -754.4642942332739>}
  triangle { <20.437104292719603, 0.0, -759.06964102082>, <20.94109634508365, 0.0, -754.951705766726>, <16.97090365491635, 0.0, -754.4642942332739>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <16.97090365491635, 0.0, -754.4642942332739>, <20.94109634508365, 0.0, -754.951705766726>, <22.649990242520193, 0.0, -708.3475899701118>}
  triangle { <20.94109634508365, 0.0, -754.951705766726>, <26.62000975747981, 0.0, -708.8364100298882>, <22.649990242520193, 0.0, -708.3475899701118>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <22.649990242520193, 0.0, -708.3475899701118>, <26.62000975747981, 0.0, -708.8364100298882>, <24.033980807095435, 0.0, -697.1056666134142>}
  triangle { <26.62000975747981, 0.0, -708.8364100298882>, <28.00401919290456, 0.0, -697.5943333865858>, <24.033980807095435, 0.0, -697.1056666134142>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <24.033980807095435, 0.0, -697.1056666134142>, <28.00401919290456, 0.0, -697.5943333865858>, <28.290110293432463, 0.0, -662.5232398704887>}
  triangle { <28.00401919290456, 0.0, -697.5943333865858>, <32.265889706567535, 0.0, -662.9627601295114>, <28.290110293432463, 0.0, -662.5232398704887>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <28.290110293432463, 0.0, -662.5232398704887>, <32.265889706567535, 0.0, -662.9627601295114>, <38.83664191412485, 0.0, -554.975850337774>}
  triangle { <32.265889706567535, 0.0, -662.9627601295114>, <42.81735808587515, 0.0, -555.3681496622261>, <38.83664191412485, 0.0, -554.975850337774>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <38.83664191412485, 0.0, -554.975850337774>, <42.81735808587515, 0.0, -555.3681496622261>, <54.21156023875986, 0.0, -399.72768088451386>}
  triangle { <42.81735808587515, 0.0, -555.3681496622261>, <58.19243976124014, 0.0, -400.11831911548614>, <54.21156023875986, 0.0, -399.72768088451386>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <54.21156023875986, 0.0, -399.72768088451386>, <58.19243976124014, 0.0, -400.11831911548614>, <67.13340113538244, 0.0, -266.81830911177013>}
  triangle { <58.19243976124014, 0.0, -400.11831911548614>, <71.11459886461755, 0.0, -267.20569088822987>, <67.13340113538244, 0.0, -266.81830911177013>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <67.13340113538244, 0.0, -266.81830911177013>, <71.11459886461755, 0.0, -267.20569088822987>, <67.54778176935667, 0.0, -262.56360947254944>}
  triangle { <71.11459886461755, 0.0, -267.20569088822987>, <71.52621823064334, 0.0, -262.9783905274506>, <67.54778176935667, 0.0, -262.56360947254944>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <67.54778176935667, 0.0, -262.56360947254944>, <71.52621823064334, 0.0, -262.9783905274506>, <78.05425390625668, 0.0, -168.03094465216117>}
  triangle { <71.52621823064334, 0.0, -262.9783905274506>, <82.02974609374333, 0.0, -168.47305534783885>, <78.05425390625668, 0.0, -168.03094465216117>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <78.05425390625668, 0.0, -168.03094465216117>, <82.02974609374333, 0.0, -168.47305534783885>, <80.59880788884422, 0.0, -145.16439203427296>}
  triangle { <82.02974609374333, 0.0, -168.47305534783885>, <84.57119211115577, 0.0, -145.63360796572704>, <80.59880788884422, 0.0, -145.16439203427296>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <80.59880788884422, 0.0, -145.16439203427296>, <84.57119211115577, 0.0, -145.63360796572704>, <81.77561977718274, 0.0, -135.74799010664685>}
  triangle { <84.57119211115577, 0.0, -145.63360796572704>, <85.74838022281726, 0.0, -136.21400989335314>, <81.77561977718274, 0.0, -135.74799010664685>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <81.77561977718274, 0.0, -135.74799010664685>, <85.74838022281726, 0.0, -136.21400989335314>, <86.81562519191392, 0.0, -89.78201112562141>}
  triangle { <85.74838022281726, 0.0, -136.21400989335314>, <90.79179463027903, 0.0, -90.21798887437859>, <86.81562519191392, 0.0, -89.78201112562141>}
  triangle { <86.81562519191392, 0.0, -89.78201112562141>, <90.79179463027903, 0.0, -90.21798887437859>, <87.23981524260944, 0.0, -85.91334690951854>}
  triangle { <90.79179463027903, 0.0, -90.21798887437859>, <91.21598468097454, 0.0, -86.34932465827572>, <87.23981524260944, 0.0, -85.91334690951854>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <91.60666418258094, 0.0, -82.79132367401866>, <88.18347810940863, 0.0, -77.32632567052903>}
  triangle { <91.60666418258094, 0.0, -82.79132367401866>, <92.15951346072397, 0.0, -77.76352457845374>, <88.18347810940863, 0.0, -77.32632567052903>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <88.78883638746714, 0.0, -71.67023911346314>, <92.76733782498601, 0.0, -72.08439646479266>, <89.39644926401834, 0.0, -65.83335442445888>}
  triangle { <92.76733782498601, 0.0, -72.08439646479266>, <93.37495070153722, 0.0, -66.2475117757884>, <89.39644926401834, 0.0, -65.83335442445888>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <93.74302511519976, 0.0, -62.70591505759037>, <95.26200187478483, 0.0, -9.30864371770269>}
  triangle { <93.74302511519976, 0.0, -62.70591505759037>, <99.24064230028677, 0.0, -9.721463732432856>, <95.26200187478483, 0.0, -9.30864371770269>}
  triangle { <95.26200187478483, 0.0, -9.30864371770269>, <99.24064230028677, 0.0, -9.721463732432856>, <100.94340014600199, 0.0, 45.44703679361249>}
  triangle { <99.24064230028677, 0.0, -9.721463732432856>, <104.92204057150393, 0.0, 45.03421677888232>, <100.94340014600199, 0.0, 45.44703679361249>}
  triangle { <100.94340014600199, 0.0, 45.44703679361249>, <104.92204057150393, 0.0, 45.03421677888232>, <101.3419623813609, 0.0, 49.288264847232604>}
  triangle { <104.92204057150393, 0.0, 45.03421677888232>, <105.32060280686284, 0.0, 48.87544483250243>, <101.3419623813609, 0.0, 49.288264847232604>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.99626076975177, 0.0, 8.72717873777178>, <-80.99773923024823, 0.0, 8.672821262228219>, <-86.85934153241085, 0.0, 18.685270700665875>}
  triangle { <-80.99773923024823, 0.0, 8.672821262228219>, <-85.95832883986007, 0.0, 19.11906342520419>, <-86.85934153241085, 0.0, 18.685270700665875>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.94750634627539, 0.0, 8.483103637730842>, <-81.04649365372461, 0.0, 8.916896362269156>, <-82.07676516696317, 0.1, 8.751581718334396>}
  triangle { <-81.04649365372461, 0.0, 8.916896362269156>, <-81.17575247441239, 0.1, 9.18537444287271>, <-82.07676516696317, 0.1, 8.751581718334396>}
  triangle { <-82.07676516696317, 0.1, 8.751581718334396>, <-81.17575247441239, 0.1, 9.18537444287271>, <-82.07676516696317, 0.0, 8.751581718334396>}
  triangle { <-81.17575247441239, 0.1, 9.18537444287271>, <-81.17575247441239, 0.0, 9.18537444287271>, <-82.07676516696317, 0.0, 8.751581718334396>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.94750634627539, 0.0, 8.483103637730842>, <-82.07676516696317, 0.1, 8.751581718334396>, <-82.07676516696317, 0.0, 8.751581718334396>}
  triangle { <-81.17575247441239, 0.0, 9.18537444287271>, <-81.17575247441239, 0.1, 9.18537444287271>, <-81.04649365372461, 0.0, 8.916896362269156>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.07676516696317, 0.0, 8.751581718334396>, <-81.17575247441239, 0.0, 9.18537444287271>, <-82.20602398765095, 0.1, 9.02005979893795>}
  triangle { <-81.17575247441239, 0.0, 9.18537444287271>, <-81.30501129510017, 0.1, 9.453852523476264>, <-82.20602398765095, 0.1, 9.02005979893795>}
  triangle { <-82.20602398765095, 0.1, 9.02005979893795>, <-81.30501129510017, 0.1, 9.453852523476264>, <-82.20602398765095, 0.0, 9.02005979893795>}
  triangle { <-81.30501129510017, 0.1, 9.453852523476264>, <-81.30501129510017, 0.0, 9.453852523476264>, <-82.20602398765095, 0.0, 9.02005979893795>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.07676516696317, 0.0, 8.751581718334396>, <-82.20602398765095, 0.1, 9.02005979893795>, <-82.20602398765095, 0.0, 9.02005979893795>}
  triangle { <-81.30501129510017, 0.0, 9.453852523476264>, <-81.30501129510017, 0.1, 9.453852523476264>, <-81.17575247441239, 0.0, 9.18537444287271>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.20602398765095, 0.0, 9.02005979893795>, <-81.30501129510017, 0.0, 9.453852523476264>, <-82.33528280833873, 0.1, 9.288537879541504>}
  triangle { <-81.30501129510017, 0.0, 9.453852523476264>, <-81.43427011578795, 0.1, 9.722330604079819>, <-82.33528280833873, 0.1, 9.288537879541504>}
  triangle { <-82.33528280833873, 0.1, 9.288537879541504>, <-81.43427011578795, 0.1, 9.722330604079819>, <-82.33528280833873, 0.0, 9.288537879541504>}
  triangle { <-81.43427011578795, 0.1, 9.722330604079819>, <-81.43427011578795, 0.0, 9.722330604079819>, <-82.33528280833873, 0.0, 9.288537879541504>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.20602398765095, 0.0, 9.02005979893795>, <-82.33528280833873, 0.1, 9.288537879541504>, <-82.33528280833873, 0.0, 9.288537879541504>}
  triangle { <-81.43427011578795, 0.0, 9.722330604079819>, <-81.43427011578795, 0.1, 9.722330604079819>, <-81.30501129510017, 0.0, 9.453852523476264>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.33528280833873, 0.0, 9.288537879541504>, <-81.43427011578795, 0.0, 9.722330604079819>, <-82.46454162902651, 0.1, 9.557015960145058>}
  triangle { <-81.43427011578795, 0.0, 9.722330604079819>, <-81.56352893647573, 0.1, 9.990808684683373>, <-82.46454162902651, 0.1, 9.557015960145058>}
  triangle { <-82.46454162902651, 0.1, 9.557015960145058>, <-81.56352893647573, 0.1, 9.990808684683373>, <-82.46454162902651, 0.0, 9.557015960145058>}
  triangle { <-81.56352893647573, 0.1, 9.990808684683373>, <-81.56352893647573, 0.0, 9.990808684683373>, <-82.46454162902651, 0.0, 9.557015960145058>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.33528280833873, 0.0, 9.288537879541504>, <-82.46454162902651, 0.1, 9.557015960145058>, <-82.46454162902651, 0.0, 9.557015960145058>}
  triangle { <-81.56352893647573, 0.0, 9.990808684683373>, <-81.56352893647573, 0.1, 9.990808684683373>, <-81.43427011578795, 0.0, 9.722330604079819>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.46454162902651, 0.0, 9.557015960145058>, <-81.56352893647573, 0.0, 9.990808684683373>, <-82.5938004497143, 0.1, 9.825494040748612>}
  triangle { <-81.56352893647573, 0.0, 9.990808684683373>, <-81.69278775716352, 0.1, 10.259286765286927>, <-82.5938004497143, 0.1, 9.825494040748612>}
  triangle { <-82.5938004497143, 0.1, 9.825494040748612>, <-81.69278775716352, 0.1, 10.259286765286927>, <-82.5938004497143, 0.0, 9.825494040748612>}
  triangle { <-81.69278775716352, 0.1, 10.259286765286927>, <-81.69278775716352, 0.0, 10.259286765286927>, <-82.5938004497143, 0.0, 9.825494040748612>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.46454162902651, 0.0, 9.557015960145058>, <-82.5938004497143, 0.1, 9.825494040748612>, <-82.5938004497143, 0.0, 9.825494040748612>}
  triangle { <-81.69278775716352, 0.0, 10.259286765286927>, <-81.69278775716352, 0.1, 10.259286765286927>, <-81.56352893647573, 0.0, 9.990808684683373>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.5938004497143, 0.0, 9.825494040748612>, <-81.69278775716352, 0.0, 10.259286765286927>, <-82.72305927040208, 0.1, 10.093972121352166>}
  triangle { <-81.69278775716352, 0.0, 10.259286765286927>, <-81.8220465778513, 0.1, 10.52776484589048>, <-82.72305927040208, 0.1, 10.093972121352166>}
  triangle { <-82.72305927040208, 0.1, 10.093972121352166>, <-81.8220465778513, 0.1, 10.52776484589048>, <-82.72305927040208, 0.0, 10.093972121352166>}
  triangle { <-81.8220465778513, 0.1, 10.52776484589048>, <-81.8220465778513, 0.0, 10.52776484589048>, <-82.72305927040208, 0.0, 10.093972121352166>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.5938004497143, 0.0, 9.825494040748612>, <-82.72305927040208, 0.1, 10.093972121352166>, <-82.72305927040208, 0.0, 10.093972121352166>}
  triangle { <-81.8220465778513, 0.0, 10.52776484589048>, <-81.8220465778513, 0.1, 10.52776484589048>, <-81.69278775716352, 0.0, 10.259286765286927>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.72305927040208, 0.0, 10.093972121352166>, <-81.8220465778513, 0.0, 10.52776484589048>, <-82.85231809108986, 0.1, 10.36245020195572>}
  triangle { <-81.8220465778513, 0.0, 10.52776484589048>, <-81.95130539853908, 0.1, 10.796242926494035>, <-82.85231809108986, 0.1, 10.36245020195572>}
  triangle { <-82.85231809108986, 0.1, 10.36245020195572>, <-81.95130539853908, 0.1, 10.796242926494035>, <-82.85231809108986, 0.0, 10.36245020195572>}
  triangle { <-81.95130539853908, 0.1, 10.796242926494035>, <-81.95130539853908, 0.0, 10.796242926494035>, <-82.85231809108986, 0.0, 10.36245020195572>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.72305927040208, 0.0, 10.093972121352166>, <-82.85231809108986, 0.1, 10.36245020195572>, <-82.85231809108986, 0.0, 10.36245020195572>}
  triangle { <-81.95130539853908, 0.0, 10.796242926494035>, <-81.95130539853908, 0.1, 10.796242926494035>, <-81.8220465778513, 0.0, 10.52776484589048>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.85231809108986, 0.0, 10.36245020195572>, <-81.95130539853908, 0.0, 10.796242926494035>, <-82.98157691177764, 0.1, 10.630928282559275>}
  triangle { <-81.95130539853908, 0.0, 10.796242926494035>, <-82.08056421922686, 0.1, 11.064721007097589>, <-82.98157691177764, 0.1, 10.630928282559275>}
  triangle { <-82.98157691177764, 0.1, 10.630928282559275>, <-82.08056421922686, 0.1, 11.064721007097589>, <-82.98157691177764, 0.0, 10.630928282559275>}
  triangle { <-82.08056421922686, 0.1, 11.064721007097589>, <-82.08056421922686, 0.0, 11.064721007097589>, <-82.98157691177764, 0.0, 10.630928282559275>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.85231809108986, 0.0, 10.36245020195572>, <-82.98157691177764, 0.1, 10.630928282559275>, <-82.98157691177764, 0.0, 10.630928282559275>}
  triangle { <-82.08056421922686, 0.0, 11.064721007097589>, <-82.08056421922686, 0.1, 11.064721007097589>, <-81.95130539853908, 0.0, 10.796242926494035>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.98157691177764, 0.0, 10.630928282559275>, <-82.08056421922686, 0.0, 11.064721007097589>, <-83.11083573246542, 0.1, 10.899406363162829>}
  triangle { <-82.08056421922686, 0.0, 11.064721007097589>, <-82.20982303991464, 0.1, 11.333199087701143>, <-83.11083573246542, 0.1, 10.899406363162829>}
  triangle { <-83.11083573246542, 0.1, 10.899406363162829>, <-82.20982303991464, 0.1, 11.333199087701143>, <-83.11083573246542, 0.0, 10.899406363162829>}
  triangle { <-82.20982303991464, 0.1, 11.333199087701143>, <-82.20982303991464, 0.0, 11.333199087701143>, <-83.11083573246542, 0.0, 10.899406363162829>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.98157691177764, 0.0, 10.630928282559275>, <-83.11083573246542, 0.1, 10.899406363162829>, <-83.11083573246542, 0.0, 10.899406363162829>}
  triangle { <-82.20982303991464, 0.0, 11.333199087701143>, <-82.20982303991464, 0.1, 11.333199087701143>, <-82.08056421922686, 0.0, 11.064721007097589>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.11083573246542, 0.0, 10.899406363162829>, <-82.20982303991464, 0.0, 11.333199087701143>, <-83.2400945531532, 0.1, 11.167884443766383>}
  triangle { <-82.20982303991464, 0.0, 11.333199087701143>, <-82.33908186060242, 0.1, 11.601677168304697>, <-83.2400945531532, 0.1, 11.167884443766383>}
  triangle { <-83.2400945531532, 0.1, 11.167884443766383>, <-82.33908186060242, 0.1, 11.601677168304697>, <-83.2400945531532, 0.0, 11.167884443766383>}
  triangle { <-82.33908186060242, 0.1, 11.601677168304697>, <-82.33908186060242, 0.0, 11.601677168304697>, <-83.2400945531532, 0.0, 11.167884443766383>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.11083573246542, 0.0, 10.899406363162829>, <-83.2400945531532, 0.1, 11.167884443766383>, <-83.2400945531532, 0.0, 11.167884443766383>}
  triangle { <-82.33908186060242, 0.0, 11.601677168304697>, <-82.33908186060242, 0.1, 11.601677168304697>, <-82.20982303991464, 0.0, 11.333199087701143>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.2400945531532, 0.0, 11.167884443766383>, <-82.33908186060242, 0.0, 11.601677168304697>, <-83.36935337384098, 0.1, 11.436362524369937>}
  triangle { <-82.33908186060242, 0.0, 11.601677168304697>, <-82.4683406812902, 0.1, 11.870155248908251>, <-83.36935337384098, 0.1, 11.436362524369937>}
  triangle { <-83.36935337384098, 0.1, 11.436362524369937>, <-82.4683406812902, 0.1, 11.870155248908251>, <-83.36935337384098, 0.0, 11.436362524369937>}
  triangle { <-82.4683406812902, 0.1, 11.870155248908251>, <-82.4683406812902, 0.0, 11.870155248908251>, <-83.36935337384098, 0.0, 11.436362524369937>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.2400945531532, 0.0, 11.167884443766383>, <-83.36935337384098, 0.1, 11.436362524369937>, <-83.36935337384098, 0.0, 11.436362524369937>}
  triangle { <-82.4683406812902, 0.0, 11.870155248908251>, <-82.4683406812902, 0.1, 11.870155248908251>, <-82.33908186060242, 0.0, 11.601677168304697>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.36935337384098, 0.0, 11.436362524369937>, <-82.4683406812902, 0.0, 11.870155248908251>, <-83.49861219452876, 0.1, 11.70484060497349>}
  triangle { <-82.4683406812902, 0.0, 11.870155248908251>, <-82.59759950197798, 0.1, 12.138633329511805>, <-83.49861219452876, 0.1, 11.70484060497349>}
  triangle { <-83.49861219452876, 0.1, 11.70484060497349>, <-82.59759950197798, 0.1, 12.138633329511805>, <-83.49861219452876, 0.0, 11.70484060497349>}
  triangle { <-82.59759950197798, 0.1, 12.138633329511805>, <-82.59759950197798, 0.0, 12.138633329511805>, <-83.49861219452876, 0.0, 11.70484060497349>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.36935337384098, 0.0, 11.436362524369937>, <-83.49861219452876, 0.1, 11.70484060497349>, <-83.49861219452876, 0.0, 11.70484060497349>}
  triangle { <-82.59759950197798, 0.0, 12.138633329511805>, <-82.59759950197798, 0.1, 12.138633329511805>, <-82.4683406812902, 0.0, 11.870155248908251>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.49861219452876, 0.0, 11.70484060497349>, <-82.59759950197798, 0.0, 12.138633329511805>, <-83.62787101521654, 0.1, 11.973318685577045>}
  triangle { <-82.59759950197798, 0.0, 12.138633329511805>, <-82.72685832266576, 0.1, 12.407111410115359>, <-83.62787101521654, 0.1, 11.973318685577045>}
  triangle { <-83.62787101521654, 0.1, 11.973318685577045>, <-82.72685832266576, 0.1, 12.407111410115359>, <-83.62787101521654, 0.0, 11.973318685577045>}
  triangle { <-82.72685832266576, 0.1, 12.407111410115359>, <-82.72685832266576, 0.0, 12.407111410115359>, <-83.62787101521654, 0.0, 11.973318685577045>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.49861219452876, 0.0, 11.70484060497349>, <-83.62787101521654, 0.1, 11.973318685577045>, <-83.62787101521654, 0.0, 11.973318685577045>}
  triangle { <-82.72685832266576, 0.0, 12.407111410115359>, <-82.72685832266576, 0.1, 12.407111410115359>, <-82.59759950197798, 0.0, 12.138633329511805>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.62787101521654, 0.0, 11.973318685577045>, <-82.72685832266576, 0.0, 12.407111410115359>, <-83.75712983590432, 0.1, 12.241796766180599>}
  triangle { <-82.72685832266576, 0.0, 12.407111410115359>, <-82.85611714335354, 0.1, 12.675589490718913>, <-83.75712983590432, 0.1, 12.241796766180599>}
  triangle { <-83.75712983590432, 0.1, 12.241796766180599>, <-82.85611714335354, 0.1, 12.675589490718913>, <-83.75712983590432, 0.0, 12.241796766180599>}
  triangle { <-82.85611714335354, 0.1, 12.675589490718913>, <-82.85611714335354, 0.0, 12.675589490718913>, <-83.75712983590432, 0.0, 12.241796766180599>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.62787101521654, 0.0, 11.973318685577045>, <-83.75712983590432, 0.1, 12.241796766180599>, <-83.75712983590432, 0.0, 12.241796766180599>}
  triangle { <-82.85611714335354, 0.0, 12.675589490718913>, <-82.85611714335354, 0.1, 12.675589490718913>, <-82.72685832266576, 0.0, 12.407111410115359>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.75712983590432, 0.0, 12.241796766180599>, <-82.85611714335354, 0.0, 12.675589490718913>, <-83.8863886565921, 0.1, 12.510274846784153>}
  triangle { <-82.85611714335354, 0.0, 12.675589490718913>, <-82.98537596404132, 0.1, 12.944067571322467>, <-83.8863886565921, 0.1, 12.510274846784153>}
  triangle { <-83.8863886565921, 0.1, 12.510274846784153>, <-82.98537596404132, 0.1, 12.944067571322467>, <-83.8863886565921, 0.0, 12.510274846784153>}
  triangle { <-82.98537596404132, 0.1, 12.944067571322467>, <-82.98537596404132, 0.0, 12.944067571322467>, <-83.8863886565921, 0.0, 12.510274846784153>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.75712983590432, 0.0, 12.241796766180599>, <-83.8863886565921, 0.1, 12.510274846784153>, <-83.8863886565921, 0.0, 12.510274846784153>}
  triangle { <-82.98537596404132, 0.0, 12.944067571322467>, <-82.98537596404132, 0.1, 12.944067571322467>, <-82.85611714335354, 0.0, 12.675589490718913>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.8863886565921, 0.0, 12.510274846784153>, <-82.98537596404132, 0.0, 12.944067571322467>, <-84.01564747727988, 0.1, 12.778752927387707>}
  triangle { <-82.98537596404132, 0.0, 12.944067571322467>, <-83.1146347847291, 0.1, 13.212545651926021>, <-84.01564747727988, 0.1, 12.778752927387707>}
  triangle { <-84.01564747727988, 0.1, 12.778752927387707>, <-83.1146347847291, 0.1, 13.212545651926021>, <-84.01564747727988, 0.0, 12.778752927387707>}
  triangle { <-83.1146347847291, 0.1, 13.212545651926021>, <-83.1146347847291, 0.0, 13.212545651926021>, <-84.01564747727988, 0.0, 12.778752927387707>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.8863886565921, 0.0, 12.510274846784153>, <-84.01564747727988, 0.1, 12.778752927387707>, <-84.01564747727988, 0.0, 12.778752927387707>}
  triangle { <-83.1146347847291, 0.0, 13.212545651926021>, <-83.1146347847291, 0.1, 13.212545651926021>, <-82.98537596404132, 0.0, 12.944067571322467>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.01564747727988, 0.0, 12.778752927387707>, <-83.1146347847291, 0.0, 13.212545651926021>, <-84.14490629796767, 0.1, 13.047231007991261>}
  triangle { <-83.1146347847291, 0.0, 13.212545651926021>, <-83.24389360541689, 0.1, 13.481023732529575>, <-84.14490629796767, 0.1, 13.047231007991261>}
  triangle { <-84.14490629796767, 0.1, 13.047231007991261>, <-83.24389360541689, 0.1, 13.481023732529575>, <-84.14490629796767, 0.0, 13.047231007991261>}
  triangle { <-83.24389360541689, 0.1, 13.481023732529575>, <-83.24389360541689, 0.0, 13.481023732529575>, <-84.14490629796767, 0.0, 13.047231007991261>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.01564747727988, 0.0, 12.778752927387707>, <-84.14490629796767, 0.1, 13.047231007991261>, <-84.14490629796767, 0.0, 13.047231007991261>}
  triangle { <-83.24389360541689, 0.0, 13.481023732529575>, <-83.24389360541689, 0.1, 13.481023732529575>, <-83.1146347847291, 0.0, 13.212545651926021>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.14490629796767, 0.0, 13.047231007991261>, <-83.24389360541689, 0.0, 13.481023732529575>, <-84.27416511865545, 0.1, 13.315709088594815>}
  triangle { <-83.24389360541689, 0.0, 13.481023732529575>, <-83.37315242610467, 0.1, 13.74950181313313>, <-84.27416511865545, 0.1, 13.315709088594815>}
  triangle { <-84.27416511865545, 0.1, 13.315709088594815>, <-83.37315242610467, 0.1, 13.74950181313313>, <-84.27416511865545, 0.0, 13.315709088594815>}
  triangle { <-83.37315242610467, 0.1, 13.74950181313313>, <-83.37315242610467, 0.0, 13.74950181313313>, <-84.27416511865545, 0.0, 13.315709088594815>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.14490629796767, 0.0, 13.047231007991261>, <-84.27416511865545, 0.1, 13.315709088594815>, <-84.27416511865545, 0.0, 13.315709088594815>}
  triangle { <-83.37315242610467, 0.0, 13.74950181313313>, <-83.37315242610467, 0.1, 13.74950181313313>, <-83.24389360541689, 0.0, 13.481023732529575>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.27416511865545, 0.0, 13.315709088594815>, <-83.37315242610467, 0.0, 13.74950181313313>, <-84.40342393934323, 0.1, 13.584187169198369>}
  triangle { <-83.37315242610467, 0.0, 13.74950181313313>, <-83.50241124679245, 0.1, 14.017979893736683>, <-84.40342393934323, 0.1, 13.584187169198369>}
  triangle { <-84.40342393934323, 0.1, 13.584187169198369>, <-83.50241124679245, 0.1, 14.017979893736683>, <-84.40342393934323, 0.0, 13.584187169198369>}
  triangle { <-83.50241124679245, 0.1, 14.017979893736683>, <-83.50241124679245, 0.0, 14.017979893736683>, <-84.40342393934323, 0.0, 13.584187169198369>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.27416511865545, 0.0, 13.315709088594815>, <-84.40342393934323, 0.1, 13.584187169198369>, <-84.40342393934323, 0.0, 13.584187169198369>}
  triangle { <-83.50241124679245, 0.0, 14.017979893736683>, <-83.50241124679245, 0.1, 14.017979893736683>, <-83.37315242610467, 0.0, 13.74950181313313>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.40342393934323, 0.0, 13.584187169198369>, <-83.50241124679245, 0.0, 14.017979893736683>, <-84.53268276003101, 0.1, 13.852665249801923>}
  triangle { <-83.50241124679245, 0.0, 14.017979893736683>, <-83.63167006748023, 0.1, 14.286457974340237>, <-84.53268276003101, 0.1, 13.852665249801923>}
  triangle { <-84.53268276003101, 0.1, 13.852665249801923>, <-83.63167006748023, 0.1, 14.286457974340237>, <-84.53268276003101, 0.0, 13.852665249801923>}
  triangle { <-83.63167006748023, 0.1, 14.286457974340237>, <-83.63167006748023, 0.0, 14.286457974340237>, <-84.53268276003101, 0.0, 13.852665249801923>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.40342393934323, 0.0, 13.584187169198369>, <-84.53268276003101, 0.1, 13.852665249801923>, <-84.53268276003101, 0.0, 13.852665249801923>}
  triangle { <-83.63167006748023, 0.0, 14.286457974340237>, <-83.63167006748023, 0.1, 14.286457974340237>, <-83.50241124679245, 0.0, 14.017979893736683>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.53268276003101, 0.0, 13.852665249801923>, <-83.63167006748023, 0.0, 14.286457974340237>, <-84.66194158071879, 0.1, 14.121143330405477>}
  triangle { <-83.63167006748023, 0.0, 14.286457974340237>, <-83.76092888816801, 0.1, 14.554936054943791>, <-84.66194158071879, 0.1, 14.121143330405477>}
  triangle { <-84.66194158071879, 0.1, 14.121143330405477>, <-83.76092888816801, 0.1, 14.554936054943791>, <-84.66194158071879, 0.0, 14.121143330405477>}
  triangle { <-83.76092888816801, 0.1, 14.554936054943791>, <-83.76092888816801, 0.0, 14.554936054943791>, <-84.66194158071879, 0.0, 14.121143330405477>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.53268276003101, 0.0, 13.852665249801923>, <-84.66194158071879, 0.1, 14.121143330405477>, <-84.66194158071879, 0.0, 14.121143330405477>}
  triangle { <-83.76092888816801, 0.0, 14.554936054943791>, <-83.76092888816801, 0.1, 14.554936054943791>, <-83.63167006748023, 0.0, 14.286457974340237>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.66194158071879, 0.0, 14.121143330405477>, <-83.76092888816801, 0.0, 14.554936054943791>, <-84.79120040140657, 0.1, 14.389621411009031>}
  triangle { <-83.76092888816801, 0.0, 14.554936054943791>, <-83.89018770885579, 0.1, 14.823414135547345>, <-84.79120040140657, 0.1, 14.389621411009031>}
  triangle { <-84.79120040140657, 0.1, 14.389621411009031>, <-83.89018770885579, 0.1, 14.823414135547345>, <-84.79120040140657, 0.0, 14.389621411009031>}
  triangle { <-83.89018770885579, 0.1, 14.823414135547345>, <-83.89018770885579, 0.0, 14.823414135547345>, <-84.79120040140657, 0.0, 14.389621411009031>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.66194158071879, 0.0, 14.121143330405477>, <-84.79120040140657, 0.1, 14.389621411009031>, <-84.79120040140657, 0.0, 14.389621411009031>}
  triangle { <-83.89018770885579, 0.0, 14.823414135547345>, <-83.89018770885579, 0.1, 14.823414135547345>, <-83.76092888816801, 0.0, 14.554936054943791>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.79120040140657, 0.0, 14.389621411009031>, <-83.89018770885579, 0.0, 14.823414135547345>, <-84.92045922209435, 0.1, 14.658099491612585>}
  triangle { <-83.89018770885579, 0.0, 14.823414135547345>, <-84.01944652954357, 0.1, 15.0918922161509>, <-84.92045922209435, 0.1, 14.658099491612585>}
  triangle { <-84.92045922209435, 0.1, 14.658099491612585>, <-84.01944652954357, 0.1, 15.0918922161509>, <-84.92045922209435, 0.0, 14.658099491612585>}
  triangle { <-84.01944652954357, 0.1, 15.0918922161509>, <-84.01944652954357, 0.0, 15.0918922161509>, <-84.92045922209435, 0.0, 14.658099491612585>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.79120040140657, 0.0, 14.389621411009031>, <-84.92045922209435, 0.1, 14.658099491612585>, <-84.92045922209435, 0.0, 14.658099491612585>}
  triangle { <-84.01944652954357, 0.0, 15.0918922161509>, <-84.01944652954357, 0.1, 15.0918922161509>, <-83.89018770885579, 0.0, 14.823414135547345>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.92045922209435, 0.0, 14.658099491612585>, <-84.01944652954357, 0.0, 15.0918922161509>, <-85.04971804278213, 0.1, 14.92657757221614>}
  triangle { <-84.01944652954357, 0.0, 15.0918922161509>, <-84.14870535023135, 0.1, 15.360370296754454>, <-85.04971804278213, 0.1, 14.92657757221614>}
  triangle { <-85.04971804278213, 0.1, 14.92657757221614>, <-84.14870535023135, 0.1, 15.360370296754454>, <-85.04971804278213, 0.0, 14.92657757221614>}
  triangle { <-84.14870535023135, 0.1, 15.360370296754454>, <-84.14870535023135, 0.0, 15.360370296754454>, <-85.04971804278213, 0.0, 14.92657757221614>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.92045922209435, 0.0, 14.658099491612585>, <-85.04971804278213, 0.1, 14.92657757221614>, <-85.04971804278213, 0.0, 14.92657757221614>}
  triangle { <-84.14870535023135, 0.0, 15.360370296754454>, <-84.14870535023135, 0.1, 15.360370296754454>, <-84.01944652954357, 0.0, 15.0918922161509>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.04971804278213, 0.0, 14.92657757221614>, <-84.14870535023135, 0.0, 15.360370296754454>, <-85.17897686346991, 0.1, 15.195055652819693>}
  triangle { <-84.14870535023135, 0.0, 15.360370296754454>, <-84.27796417091913, 0.1, 15.628848377358008>, <-85.17897686346991, 0.1, 15.195055652819693>}
  triangle { <-85.17897686346991, 0.1, 15.195055652819693>, <-84.27796417091913, 0.1, 15.628848377358008>, <-85.17897686346991, 0.0, 15.195055652819693>}
  triangle { <-84.27796417091913, 0.1, 15.628848377358008>, <-84.27796417091913, 0.0, 15.628848377358008>, <-85.17897686346991, 0.0, 15.195055652819693>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.04971804278213, 0.0, 14.92657757221614>, <-85.17897686346991, 0.1, 15.195055652819693>, <-85.17897686346991, 0.0, 15.195055652819693>}
  triangle { <-84.27796417091913, 0.0, 15.628848377358008>, <-84.27796417091913, 0.1, 15.628848377358008>, <-84.14870535023135, 0.0, 15.360370296754454>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.17897686346991, 0.0, 15.195055652819693>, <-84.27796417091913, 0.0, 15.628848377358008>, <-85.3082356841577, 0.1, 15.463533733423247>}
  triangle { <-84.27796417091913, 0.0, 15.628848377358008>, <-84.40722299160691, 0.1, 15.897326457961562>, <-85.3082356841577, 0.1, 15.463533733423247>}
  triangle { <-85.3082356841577, 0.1, 15.463533733423247>, <-84.40722299160691, 0.1, 15.897326457961562>, <-85.3082356841577, 0.0, 15.463533733423247>}
  triangle { <-84.40722299160691, 0.1, 15.897326457961562>, <-84.40722299160691, 0.0, 15.897326457961562>, <-85.3082356841577, 0.0, 15.463533733423247>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.17897686346991, 0.0, 15.195055652819693>, <-85.3082356841577, 0.1, 15.463533733423247>, <-85.3082356841577, 0.0, 15.463533733423247>}
  triangle { <-84.40722299160691, 0.0, 15.897326457961562>, <-84.40722299160691, 0.1, 15.897326457961562>, <-84.27796417091913, 0.0, 15.628848377358008>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.3082356841577, 0.0, 15.463533733423247>, <-84.40722299160691, 0.0, 15.897326457961562>, <-85.43749450484547, 0.1, 15.732011814026801>}
  triangle { <-84.40722299160691, 0.0, 15.897326457961562>, <-84.5364818122947, 0.1, 16.165804538565116>, <-85.43749450484547, 0.1, 15.732011814026801>}
  triangle { <-85.43749450484547, 0.1, 15.732011814026801>, <-84.5364818122947, 0.1, 16.165804538565116>, <-85.43749450484547, 0.0, 15.732011814026801>}
  triangle { <-84.5364818122947, 0.1, 16.165804538565116>, <-84.5364818122947, 0.0, 16.165804538565116>, <-85.43749450484547, 0.0, 15.732011814026801>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.3082356841577, 0.0, 15.463533733423247>, <-85.43749450484547, 0.1, 15.732011814026801>, <-85.43749450484547, 0.0, 15.732011814026801>}
  triangle { <-84.5364818122947, 0.0, 16.165804538565116>, <-84.5364818122947, 0.1, 16.165804538565116>, <-84.40722299160691, 0.0, 15.897326457961562>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.43749450484547, 0.0, 15.732011814026801>, <-84.5364818122947, 0.0, 16.165804538565116>, <-85.56675332553326, 0.1, 16.000489894630356>}
  triangle { <-84.5364818122947, 0.0, 16.165804538565116>, <-84.66574063298248, 0.1, 16.43428261916867>, <-85.56675332553326, 0.1, 16.000489894630356>}
  triangle { <-85.56675332553326, 0.1, 16.000489894630356>, <-84.66574063298248, 0.1, 16.43428261916867>, <-85.56675332553326, 0.0, 16.000489894630356>}
  triangle { <-84.66574063298248, 0.1, 16.43428261916867>, <-84.66574063298248, 0.0, 16.43428261916867>, <-85.56675332553326, 0.0, 16.000489894630356>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.43749450484547, 0.0, 15.732011814026801>, <-85.56675332553326, 0.1, 16.000489894630356>, <-85.56675332553326, 0.0, 16.000489894630356>}
  triangle { <-84.66574063298248, 0.0, 16.43428261916867>, <-84.66574063298248, 0.1, 16.43428261916867>, <-84.5364818122947, 0.0, 16.165804538565116>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.56675332553326, 0.0, 16.000489894630356>, <-84.66574063298248, 0.0, 16.43428261916867>, <-85.69601214622104, 0.1, 16.26896797523391>}
  triangle { <-84.66574063298248, 0.0, 16.43428261916867>, <-84.79499945367026, 0.1, 16.702760699772224>, <-85.69601214622104, 0.1, 16.26896797523391>}
  triangle { <-85.69601214622104, 0.1, 16.26896797523391>, <-84.79499945367026, 0.1, 16.702760699772224>, <-85.69601214622104, 0.0, 16.26896797523391>}
  triangle { <-84.79499945367026, 0.1, 16.702760699772224>, <-84.79499945367026, 0.0, 16.702760699772224>, <-85.69601214622104, 0.0, 16.26896797523391>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.56675332553326, 0.0, 16.000489894630356>, <-85.69601214622104, 0.1, 16.26896797523391>, <-85.69601214622104, 0.0, 16.26896797523391>}
  triangle { <-84.79499945367026, 0.0, 16.702760699772224>, <-84.79499945367026, 0.1, 16.702760699772224>, <-84.66574063298248, 0.0, 16.43428261916867>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.69601214622104, 0.0, 16.26896797523391>, <-84.79499945367026, 0.0, 16.702760699772224>, <-85.82527096690882, 0.1, 16.537446055837464>}
  triangle { <-84.79499945367026, 0.0, 16.702760699772224>, <-84.92425827435804, 0.1, 16.971238780375778>, <-85.82527096690882, 0.1, 16.537446055837464>}
  triangle { <-85.82527096690882, 0.1, 16.537446055837464>, <-84.92425827435804, 0.1, 16.971238780375778>, <-85.82527096690882, 0.0, 16.537446055837464>}
  triangle { <-84.92425827435804, 0.1, 16.971238780375778>, <-84.92425827435804, 0.0, 16.971238780375778>, <-85.82527096690882, 0.0, 16.537446055837464>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.69601214622104, 0.0, 16.26896797523391>, <-85.82527096690882, 0.1, 16.537446055837464>, <-85.82527096690882, 0.0, 16.537446055837464>}
  triangle { <-84.92425827435804, 0.0, 16.971238780375778>, <-84.92425827435804, 0.1, 16.971238780375778>, <-84.79499945367026, 0.0, 16.702760699772224>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.82527096690882, 0.0, 16.537446055837464>, <-84.92425827435804, 0.0, 16.971238780375778>, <-85.9545297875966, 0.1, 16.805924136441018>}
  triangle { <-84.92425827435804, 0.0, 16.971238780375778>, <-85.05351709504582, 0.1, 17.239716860979332>, <-85.9545297875966, 0.1, 16.805924136441018>}
  triangle { <-85.9545297875966, 0.1, 16.805924136441018>, <-85.05351709504582, 0.1, 17.239716860979332>, <-85.9545297875966, 0.0, 16.805924136441018>}
  triangle { <-85.05351709504582, 0.1, 17.239716860979332>, <-85.05351709504582, 0.0, 17.239716860979332>, <-85.9545297875966, 0.0, 16.805924136441018>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.82527096690882, 0.0, 16.537446055837464>, <-85.9545297875966, 0.1, 16.805924136441018>, <-85.9545297875966, 0.0, 16.805924136441018>}
  triangle { <-85.05351709504582, 0.0, 17.239716860979332>, <-85.05351709504582, 0.1, 17.239716860979332>, <-84.92425827435804, 0.0, 16.971238780375778>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.9545297875966, 0.0, 16.805924136441018>, <-85.05351709504582, 0.0, 17.239716860979332>, <-86.08378860828438, 0.1, 17.07440221704457>}
  triangle { <-85.05351709504582, 0.0, 17.239716860979332>, <-85.1827759157336, 0.1, 17.508194941582886>, <-86.08378860828438, 0.1, 17.07440221704457>}
  triangle { <-86.08378860828438, 0.1, 17.07440221704457>, <-85.1827759157336, 0.1, 17.508194941582886>, <-86.08378860828438, 0.0, 17.07440221704457>}
  triangle { <-85.1827759157336, 0.1, 17.508194941582886>, <-85.1827759157336, 0.0, 17.508194941582886>, <-86.08378860828438, 0.0, 17.07440221704457>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.9545297875966, 0.0, 16.805924136441018>, <-86.08378860828438, 0.1, 17.07440221704457>, <-86.08378860828438, 0.0, 17.07440221704457>}
  triangle { <-85.1827759157336, 0.0, 17.508194941582886>, <-85.1827759157336, 0.1, 17.508194941582886>, <-85.05351709504582, 0.0, 17.239716860979332>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.08378860828438, 0.0, 17.07440221704457>, <-85.1827759157336, 0.0, 17.508194941582886>, <-86.21304742897216, 0.1, 17.342880297648126>}
  triangle { <-85.1827759157336, 0.0, 17.508194941582886>, <-85.31203473642138, 0.1, 17.77667302218644>, <-86.21304742897216, 0.1, 17.342880297648126>}
  triangle { <-86.21304742897216, 0.1, 17.342880297648126>, <-85.31203473642138, 0.1, 17.77667302218644>, <-86.21304742897216, 0.0, 17.342880297648126>}
  triangle { <-85.31203473642138, 0.1, 17.77667302218644>, <-85.31203473642138, 0.0, 17.77667302218644>, <-86.21304742897216, 0.0, 17.342880297648126>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.08378860828438, 0.0, 17.07440221704457>, <-86.21304742897216, 0.1, 17.342880297648126>, <-86.21304742897216, 0.0, 17.342880297648126>}
  triangle { <-85.31203473642138, 0.0, 17.77667302218644>, <-85.31203473642138, 0.1, 17.77667302218644>, <-85.1827759157336, 0.0, 17.508194941582886>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.21304742897216, 0.0, 17.342880297648126>, <-85.31203473642138, 0.0, 17.77667302218644>, <-86.34230624965994, 0.1, 17.61135837825168>}
  triangle { <-85.31203473642138, 0.0, 17.77667302218644>, <-85.44129355710916, 0.1, 18.045151102789994>, <-86.34230624965994, 0.1, 17.61135837825168>}
  triangle { <-86.34230624965994, 0.1, 17.61135837825168>, <-85.44129355710916, 0.1, 18.045151102789994>, <-86.34230624965994, 0.0, 17.61135837825168>}
  triangle { <-85.44129355710916, 0.1, 18.045151102789994>, <-85.44129355710916, 0.0, 18.045151102789994>, <-86.34230624965994, 0.0, 17.61135837825168>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.21304742897216, 0.0, 17.342880297648126>, <-86.34230624965994, 0.1, 17.61135837825168>, <-86.34230624965994, 0.0, 17.61135837825168>}
  triangle { <-85.44129355710916, 0.0, 18.045151102789994>, <-85.44129355710916, 0.1, 18.045151102789994>, <-85.31203473642138, 0.0, 17.77667302218644>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.34230624965994, 0.0, 17.61135837825168>, <-85.44129355710916, 0.0, 18.045151102789994>, <-86.47156507034772, 0.1, 17.879836458855234>}
  triangle { <-85.44129355710916, 0.0, 18.045151102789994>, <-85.57055237779694, 0.1, 18.313629183393548>, <-86.47156507034772, 0.1, 17.879836458855234>}
  triangle { <-86.47156507034772, 0.1, 17.879836458855234>, <-85.57055237779694, 0.1, 18.313629183393548>, <-86.47156507034772, 0.0, 17.879836458855234>}
  triangle { <-85.57055237779694, 0.1, 18.313629183393548>, <-85.57055237779694, 0.0, 18.313629183393548>, <-86.47156507034772, 0.0, 17.879836458855234>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.34230624965994, 0.0, 17.61135837825168>, <-86.47156507034772, 0.1, 17.879836458855234>, <-86.47156507034772, 0.0, 17.879836458855234>}
  triangle { <-85.57055237779694, 0.0, 18.313629183393548>, <-85.57055237779694, 0.1, 18.313629183393548>, <-85.44129355710916, 0.0, 18.045151102789994>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.47156507034772, 0.0, 17.879836458855234>, <-85.57055237779694, 0.0, 18.313629183393548>, <-86.6008238910355, 0.1, 18.148314539458788>}
  triangle { <-85.57055237779694, 0.0, 18.313629183393548>, <-85.69981119848472, 0.1, 18.582107263997102>, <-86.6008238910355, 0.1, 18.148314539458788>}
  triangle { <-86.6008238910355, 0.1, 18.148314539458788>, <-85.69981119848472, 0.1, 18.582107263997102>, <-86.6008238910355, 0.0, 18.148314539458788>}
  triangle { <-85.69981119848472, 0.1, 18.582107263997102>, <-85.69981119848472, 0.0, 18.582107263997102>, <-86.6008238910355, 0.0, 18.148314539458788>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.47156507034772, 0.0, 17.879836458855234>, <-86.6008238910355, 0.1, 18.148314539458788>, <-86.6008238910355, 0.0, 18.148314539458788>}
  triangle { <-85.69981119848472, 0.0, 18.582107263997102>, <-85.69981119848472, 0.1, 18.582107263997102>, <-85.57055237779694, 0.0, 18.313629183393548>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.6008238910355, 0.0, 18.148314539458788>, <-85.69981119848472, 0.0, 18.582107263997102>, <-86.73008271172328, 0.1, 18.416792620062342>}
  triangle { <-85.69981119848472, 0.0, 18.582107263997102>, <-85.8290700191725, 0.1, 18.850585344600656>, <-86.73008271172328, 0.1, 18.416792620062342>}
  triangle { <-86.73008271172328, 0.1, 18.416792620062342>, <-85.8290700191725, 0.1, 18.850585344600656>, <-86.73008271172328, 0.0, 18.416792620062342>}
  triangle { <-85.8290700191725, 0.1, 18.850585344600656>, <-85.8290700191725, 0.0, 18.850585344600656>, <-86.73008271172328, 0.0, 18.416792620062342>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.6008238910355, 0.0, 18.148314539458788>, <-86.73008271172328, 0.1, 18.416792620062342>, <-86.73008271172328, 0.0, 18.416792620062342>}
  triangle { <-85.8290700191725, 0.0, 18.850585344600656>, <-85.8290700191725, 0.1, 18.850585344600656>, <-85.69981119848472, 0.0, 18.582107263997102>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.73008271172328, 0.0, 18.416792620062342>, <-85.8290700191725, 0.0, 18.850585344600656>, <-86.85934153241107, 0.1, 18.685270700665896>}
  triangle { <-85.8290700191725, 0.0, 18.850585344600656>, <-85.95832883986029, 0.1, 19.11906342520421>, <-86.85934153241107, 0.1, 18.685270700665896>}
  triangle { <-86.85934153241107, 0.1, 18.685270700665896>, <-85.95832883986029, 0.1, 19.11906342520421>, <-86.85934153241107, 0.0, 18.685270700665896>}
  triangle { <-85.95832883986029, 0.1, 19.11906342520421>, <-85.95832883986029, 0.0, 19.11906342520421>, <-86.85934153241107, 0.0, 18.685270700665896>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.73008271172328, 0.0, 18.416792620062342>, <-86.85934153241107, 0.1, 18.685270700665896>, <-86.85934153241107, 0.0, 18.685270700665896>}
  triangle { <-85.95832883986029, 0.0, 19.11906342520421>, <-85.95832883986029, 0.1, 19.11906342520421>, <-85.8290700191725, 0.0, 18.850585344600656>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-56.60685737378515, 0.0, -47.87861021929016>, <-54.71814262621485, 0.0, -20.97238978070984>}
  triangle { <-56.60685737378515, 0.0, -47.87861021929016>, <-53.72387926390375, 0.0, -21.07934942901627>, <-54.71814262621485, 0.0, -20.97238978070984>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-54.55680166730294, 0.0, -19.536698790704666>, <-53.563597977927664, 0.0, -19.653087928562687>, <-51.40723813071977, 0.0, 7.340019965234444>}
  triangle { <-53.563597977927664, 0.0, -19.653087928562687>, <-50.41403444134449, 0.0, 7.2236308273764225>, <-51.40723813071977, 0.0, 7.340019965234444>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-50.16350214030994, 0.0, 7.427944929427978>, <-43.12931330409814, 0.0, 7.68422847732381>}
  triangle { <-50.16350214030994, 0.0, 7.427944929427978>, <-42.496686695901865, 0.0, 6.9097715226761895>, <-43.12931330409814, 0.0, 7.68422847732381>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-43.12931330409814, 0.0, 7.68422847732381>, <-42.496686695901865, 0.0, 6.9097715226761895>, <-42.20519301168743, 0.0, 16.91308579371895>}
  triangle { <-42.496686695901865, 0.0, 6.9097715226761895>, <-41.21180273930034, 0.0, 16.798300051021066>, <-42.20519301168743, 0.0, 16.91308579371895>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-42.04206591591583, 0.0, 18.32377143556241>, <-41.04869542461776, 0.0, 18.20881463055178>, <-41.406454143406656, 0.0, 23.816251664757274>}
  triangle { <-41.04869542461776, 0.0, 18.20881463055178>, <-40.41308365210859, 0.0, 23.701294859746646>, <-41.406454143406656, 0.0, 23.816251664757274>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-40.26027718977009, 0.0, 25.142749006123246>, <-40.962722810229906, 0.0, 28.280250993876756>}
  triangle { <-40.26027718977009, 0.0, 25.142749006123246>, <-39.96732887239949, 0.0, 28.184381767685714>, <-40.962722810229906, 0.0, 28.280250993876756>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-39.814767741363056, 0.0, 29.60517759665011>, <-37.41799431072776, 0.0, 58.33678055971085>}
  triangle { <-39.814767741363056, 0.0, 29.60517759665011>, <-36.424938595787786, 0.0, 58.219135555460504>, <-37.41799431072776, 0.0, 58.33678055971085>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-72.20125685331506, 0.0, -37.433429841021336>, <-73.19874314668495, 0.0, -37.36257015897867>, <-72.26652928658011, 0.0, -38.352264863137066>}
  triangle { <-73.19874314668495, 0.0, -37.36257015897867>, <-73.26401557995, 0.0, -38.2814051810944>, <-72.26652928658011, 0.0, -38.352264863137066>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-80.99773923024823, 0.0, 8.672821262228219>, <-81.99626076975177, 0.0, 8.72717873777178>, <-88.43578475880167, 0.0, -3.3752012187319145>}
  triangle { <-81.99626076975177, 0.0, 8.72717873777178>, <-89.28438291261489, 0.0, -2.8461632490692286>, <-88.43578475880167, 0.0, -3.3752012187319145>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-81.0727009230934, 0.0, 8.435481015168657>, <-81.9212990769066, 0.0, 8.964518984831342>, <-81.2327679630001, 0.1, 8.178727053562122>}
  triangle { <-81.9212990769066, 0.0, 8.964518984831342>, <-82.08136611681331, 0.1, 8.707765023224807>, <-81.2327679630001, 0.1, 8.178727053562122>}
  triangle { <-81.2327679630001, 0.1, 8.178727053562122>, <-82.08136611681331, 0.1, 8.707765023224807>, <-81.2327679630001, 0.0, 8.178727053562122>}
  triangle { <-82.08136611681331, 0.1, 8.707765023224807>, <-82.08136611681331, 0.0, 8.707765023224807>, <-81.2327679630001, 0.0, 8.178727053562122>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.0727009230934, 0.0, 8.435481015168657>, <-81.2327679630001, 0.1, 8.178727053562122>, <-81.2327679630001, 0.0, 8.178727053562122>}
  triangle { <-82.08136611681331, 0.0, 8.707765023224807>, <-82.08136611681331, 0.1, 8.707765023224807>, <-81.9212990769066, 0.0, 8.964518984831342>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.2327679630001, 0.0, 8.178727053562122>, <-82.08136611681331, 0.0, 8.707765023224807>, <-81.3928350029068, 0.1, 7.9219730919555875>}
  triangle { <-82.08136611681331, 0.0, 8.707765023224807>, <-82.24143315672002, 0.1, 8.451011061618273>, <-81.3928350029068, 0.1, 7.9219730919555875>}
  triangle { <-81.3928350029068, 0.1, 7.9219730919555875>, <-82.24143315672002, 0.1, 8.451011061618273>, <-81.3928350029068, 0.0, 7.9219730919555875>}
  triangle { <-82.24143315672002, 0.1, 8.451011061618273>, <-82.24143315672002, 0.0, 8.451011061618273>, <-81.3928350029068, 0.0, 7.9219730919555875>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.2327679630001, 0.0, 8.178727053562122>, <-81.3928350029068, 0.1, 7.9219730919555875>, <-81.3928350029068, 0.0, 7.9219730919555875>}
  triangle { <-82.24143315672002, 0.0, 8.451011061618273>, <-82.24143315672002, 0.1, 8.451011061618273>, <-82.08136611681331, 0.0, 8.707765023224807>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.3928350029068, 0.0, 7.9219730919555875>, <-82.24143315672002, 0.0, 8.451011061618273>, <-81.55290204281351, 0.1, 7.665219130349053>}
  triangle { <-82.24143315672002, 0.0, 8.451011061618273>, <-82.40150019662673, 0.1, 8.194257100011738>, <-81.55290204281351, 0.1, 7.665219130349053>}
  triangle { <-81.55290204281351, 0.1, 7.665219130349053>, <-82.40150019662673, 0.1, 8.194257100011738>, <-81.55290204281351, 0.0, 7.665219130349053>}
  triangle { <-82.40150019662673, 0.1, 8.194257100011738>, <-82.40150019662673, 0.0, 8.194257100011738>, <-81.55290204281351, 0.0, 7.665219130349053>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.3928350029068, 0.0, 7.9219730919555875>, <-81.55290204281351, 0.1, 7.665219130349053>, <-81.55290204281351, 0.0, 7.665219130349053>}
  triangle { <-82.40150019662673, 0.0, 8.194257100011738>, <-82.40150019662673, 0.1, 8.194257100011738>, <-82.24143315672002, 0.0, 8.451011061618273>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.55290204281351, 0.0, 7.665219130349053>, <-82.40150019662673, 0.0, 8.194257100011738>, <-81.71296908272022, 0.1, 7.408465168742518>}
  triangle { <-82.40150019662673, 0.0, 8.194257100011738>, <-82.56156723653343, 0.1, 7.937503138405203>, <-81.71296908272022, 0.1, 7.408465168742518>}
  triangle { <-81.71296908272022, 0.1, 7.408465168742518>, <-82.56156723653343, 0.1, 7.937503138405203>, <-81.71296908272022, 0.0, 7.408465168742518>}
  triangle { <-82.56156723653343, 0.1, 7.937503138405203>, <-82.56156723653343, 0.0, 7.937503138405203>, <-81.71296908272022, 0.0, 7.408465168742518>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.55290204281351, 0.0, 7.665219130349053>, <-81.71296908272022, 0.1, 7.408465168742518>, <-81.71296908272022, 0.0, 7.408465168742518>}
  triangle { <-82.56156723653343, 0.0, 7.937503138405203>, <-82.56156723653343, 0.1, 7.937503138405203>, <-82.40150019662673, 0.0, 8.194257100011738>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.71296908272022, 0.0, 7.408465168742518>, <-82.56156723653343, 0.0, 7.937503138405203>, <-81.87303612262693, 0.1, 7.151711207135984>}
  triangle { <-82.56156723653343, 0.0, 7.937503138405203>, <-82.72163427644014, 0.1, 7.680749176798669>, <-81.87303612262693, 0.1, 7.151711207135984>}
  triangle { <-81.87303612262693, 0.1, 7.151711207135984>, <-82.72163427644014, 0.1, 7.680749176798669>, <-81.87303612262693, 0.0, 7.151711207135984>}
  triangle { <-82.72163427644014, 0.1, 7.680749176798669>, <-82.72163427644014, 0.0, 7.680749176798669>, <-81.87303612262693, 0.0, 7.151711207135984>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.71296908272022, 0.0, 7.408465168742518>, <-81.87303612262693, 0.1, 7.151711207135984>, <-81.87303612262693, 0.0, 7.151711207135984>}
  triangle { <-82.72163427644014, 0.0, 7.680749176798669>, <-82.72163427644014, 0.1, 7.680749176798669>, <-82.56156723653343, 0.0, 7.937503138405203>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.87303612262693, 0.0, 7.151711207135984>, <-82.72163427644014, 0.0, 7.680749176798669>, <-82.03310316253364, 0.1, 6.894957245529449>}
  triangle { <-82.72163427644014, 0.0, 7.680749176798669>, <-82.88170131634685, 0.1, 7.423995215192134>, <-82.03310316253364, 0.1, 6.894957245529449>}
  triangle { <-82.03310316253364, 0.1, 6.894957245529449>, <-82.88170131634685, 0.1, 7.423995215192134>, <-82.03310316253364, 0.0, 6.894957245529449>}
  triangle { <-82.88170131634685, 0.1, 7.423995215192134>, <-82.88170131634685, 0.0, 7.423995215192134>, <-82.03310316253364, 0.0, 6.894957245529449>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-81.87303612262693, 0.0, 7.151711207135984>, <-82.03310316253364, 0.1, 6.894957245529449>, <-82.03310316253364, 0.0, 6.894957245529449>}
  triangle { <-82.88170131634685, 0.0, 7.423995215192134>, <-82.88170131634685, 0.1, 7.423995215192134>, <-82.72163427644014, 0.0, 7.680749176798669>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.03310316253364, 0.0, 6.894957245529449>, <-82.88170131634685, 0.0, 7.423995215192134>, <-82.19317020244034, 0.1, 6.638203283922914>}
  triangle { <-82.88170131634685, 0.0, 7.423995215192134>, <-83.04176835625356, 0.1, 7.167241253585599>, <-82.19317020244034, 0.1, 6.638203283922914>}
  triangle { <-82.19317020244034, 0.1, 6.638203283922914>, <-83.04176835625356, 0.1, 7.167241253585599>, <-82.19317020244034, 0.0, 6.638203283922914>}
  triangle { <-83.04176835625356, 0.1, 7.167241253585599>, <-83.04176835625356, 0.0, 7.167241253585599>, <-82.19317020244034, 0.0, 6.638203283922914>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.03310316253364, 0.0, 6.894957245529449>, <-82.19317020244034, 0.1, 6.638203283922914>, <-82.19317020244034, 0.0, 6.638203283922914>}
  triangle { <-83.04176835625356, 0.0, 7.167241253585599>, <-83.04176835625356, 0.1, 7.167241253585599>, <-82.88170131634685, 0.0, 7.423995215192134>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.19317020244034, 0.0, 6.638203283922914>, <-83.04176835625356, 0.0, 7.167241253585599>, <-82.35323724234705, 0.1, 6.38144932231638>}
  triangle { <-83.04176835625356, 0.0, 7.167241253585599>, <-83.20183539616026, 0.1, 6.910487291979065>, <-82.35323724234705, 0.1, 6.38144932231638>}
  triangle { <-82.35323724234705, 0.1, 6.38144932231638>, <-83.20183539616026, 0.1, 6.910487291979065>, <-82.35323724234705, 0.0, 6.38144932231638>}
  triangle { <-83.20183539616026, 0.1, 6.910487291979065>, <-83.20183539616026, 0.0, 6.910487291979065>, <-82.35323724234705, 0.0, 6.38144932231638>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.19317020244034, 0.0, 6.638203283922914>, <-82.35323724234705, 0.1, 6.38144932231638>, <-82.35323724234705, 0.0, 6.38144932231638>}
  triangle { <-83.20183539616026, 0.0, 6.910487291979065>, <-83.20183539616026, 0.1, 6.910487291979065>, <-83.04176835625356, 0.0, 7.167241253585599>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.35323724234705, 0.0, 6.38144932231638>, <-83.20183539616026, 0.0, 6.910487291979065>, <-82.51330428225376, 0.1, 6.124695360709845>}
  triangle { <-83.20183539616026, 0.0, 6.910487291979065>, <-83.36190243606697, 0.1, 6.65373333037253>, <-82.51330428225376, 0.1, 6.124695360709845>}
  triangle { <-82.51330428225376, 0.1, 6.124695360709845>, <-83.36190243606697, 0.1, 6.65373333037253>, <-82.51330428225376, 0.0, 6.124695360709845>}
  triangle { <-83.36190243606697, 0.1, 6.65373333037253>, <-83.36190243606697, 0.0, 6.65373333037253>, <-82.51330428225376, 0.0, 6.124695360709845>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.35323724234705, 0.0, 6.38144932231638>, <-82.51330428225376, 0.1, 6.124695360709845>, <-82.51330428225376, 0.0, 6.124695360709845>}
  triangle { <-83.36190243606697, 0.0, 6.65373333037253>, <-83.36190243606697, 0.1, 6.65373333037253>, <-83.20183539616026, 0.0, 6.910487291979065>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.51330428225376, 0.0, 6.124695360709845>, <-83.36190243606697, 0.0, 6.65373333037253>, <-82.67337132216046, 0.1, 5.8679413991033105>}
  triangle { <-83.36190243606697, 0.0, 6.65373333037253>, <-83.52196947597368, 0.1, 6.3969793687659955>, <-82.67337132216046, 0.1, 5.8679413991033105>}
  triangle { <-82.67337132216046, 0.1, 5.8679413991033105>, <-83.52196947597368, 0.1, 6.3969793687659955>, <-82.67337132216046, 0.0, 5.8679413991033105>}
  triangle { <-83.52196947597368, 0.1, 6.3969793687659955>, <-83.52196947597368, 0.0, 6.3969793687659955>, <-82.67337132216046, 0.0, 5.8679413991033105>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.51330428225376, 0.0, 6.124695360709845>, <-82.67337132216046, 0.1, 5.8679413991033105>, <-82.67337132216046, 0.0, 5.8679413991033105>}
  triangle { <-83.52196947597368, 0.0, 6.3969793687659955>, <-83.52196947597368, 0.1, 6.3969793687659955>, <-83.36190243606697, 0.0, 6.65373333037253>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.67337132216046, 0.0, 5.8679413991033105>, <-83.52196947597368, 0.0, 6.3969793687659955>, <-82.83343836206717, 0.1, 5.611187437496776>}
  triangle { <-83.52196947597368, 0.0, 6.3969793687659955>, <-83.68203651588038, 0.1, 6.140225407159461>, <-82.83343836206717, 0.1, 5.611187437496776>}
  triangle { <-82.83343836206717, 0.1, 5.611187437496776>, <-83.68203651588038, 0.1, 6.140225407159461>, <-82.83343836206717, 0.0, 5.611187437496776>}
  triangle { <-83.68203651588038, 0.1, 6.140225407159461>, <-83.68203651588038, 0.0, 6.140225407159461>, <-82.83343836206717, 0.0, 5.611187437496776>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.67337132216046, 0.0, 5.8679413991033105>, <-82.83343836206717, 0.1, 5.611187437496776>, <-82.83343836206717, 0.0, 5.611187437496776>}
  triangle { <-83.68203651588038, 0.0, 6.140225407159461>, <-83.68203651588038, 0.1, 6.140225407159461>, <-83.52196947597368, 0.0, 6.3969793687659955>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.83343836206717, 0.0, 5.611187437496776>, <-83.68203651588038, 0.0, 6.140225407159461>, <-82.99350540197388, 0.1, 5.354433475890241>}
  triangle { <-83.68203651588038, 0.0, 6.140225407159461>, <-83.84210355578709, 0.1, 5.883471445552926>, <-82.99350540197388, 0.1, 5.354433475890241>}
  triangle { <-82.99350540197388, 0.1, 5.354433475890241>, <-83.84210355578709, 0.1, 5.883471445552926>, <-82.99350540197388, 0.0, 5.354433475890241>}
  triangle { <-83.84210355578709, 0.1, 5.883471445552926>, <-83.84210355578709, 0.0, 5.883471445552926>, <-82.99350540197388, 0.0, 5.354433475890241>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.83343836206717, 0.0, 5.611187437496776>, <-82.99350540197388, 0.1, 5.354433475890241>, <-82.99350540197388, 0.0, 5.354433475890241>}
  triangle { <-83.84210355578709, 0.0, 5.883471445552926>, <-83.84210355578709, 0.1, 5.883471445552926>, <-83.68203651588038, 0.0, 6.140225407159461>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.99350540197388, 0.0, 5.354433475890241>, <-83.84210355578709, 0.0, 5.883471445552926>, <-83.15357244188058, 0.1, 5.097679514283707>}
  triangle { <-83.84210355578709, 0.0, 5.883471445552926>, <-84.0021705956938, 0.1, 5.626717483946392>, <-83.15357244188058, 0.1, 5.097679514283707>}
  triangle { <-83.15357244188058, 0.1, 5.097679514283707>, <-84.0021705956938, 0.1, 5.626717483946392>, <-83.15357244188058, 0.0, 5.097679514283707>}
  triangle { <-84.0021705956938, 0.1, 5.626717483946392>, <-84.0021705956938, 0.0, 5.626717483946392>, <-83.15357244188058, 0.0, 5.097679514283707>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-82.99350540197388, 0.0, 5.354433475890241>, <-83.15357244188058, 0.1, 5.097679514283707>, <-83.15357244188058, 0.0, 5.097679514283707>}
  triangle { <-84.0021705956938, 0.0, 5.626717483946392>, <-84.0021705956938, 0.1, 5.626717483946392>, <-83.84210355578709, 0.0, 5.883471445552926>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.15357244188058, 0.0, 5.097679514283707>, <-84.0021705956938, 0.0, 5.626717483946392>, <-83.31363948178729, 0.1, 4.840925552677172>}
  triangle { <-84.0021705956938, 0.0, 5.626717483946392>, <-84.1622376356005, 0.1, 5.369963522339857>, <-83.31363948178729, 0.1, 4.840925552677172>}
  triangle { <-83.31363948178729, 0.1, 4.840925552677172>, <-84.1622376356005, 0.1, 5.369963522339857>, <-83.31363948178729, 0.0, 4.840925552677172>}
  triangle { <-84.1622376356005, 0.1, 5.369963522339857>, <-84.1622376356005, 0.0, 5.369963522339857>, <-83.31363948178729, 0.0, 4.840925552677172>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.15357244188058, 0.0, 5.097679514283707>, <-83.31363948178729, 0.1, 4.840925552677172>, <-83.31363948178729, 0.0, 4.840925552677172>}
  triangle { <-84.1622376356005, 0.0, 5.369963522339857>, <-84.1622376356005, 0.1, 5.369963522339857>, <-84.0021705956938, 0.0, 5.626717483946392>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.31363948178729, 0.0, 4.840925552677172>, <-84.1622376356005, 0.0, 5.369963522339857>, <-83.473706521694, 0.1, 4.584171591070637>}
  triangle { <-84.1622376356005, 0.0, 5.369963522339857>, <-84.32230467550721, 0.1, 5.113209560733322>, <-83.473706521694, 0.1, 4.584171591070637>}
  triangle { <-83.473706521694, 0.1, 4.584171591070637>, <-84.32230467550721, 0.1, 5.113209560733322>, <-83.473706521694, 0.0, 4.584171591070637>}
  triangle { <-84.32230467550721, 0.1, 5.113209560733322>, <-84.32230467550721, 0.0, 5.113209560733322>, <-83.473706521694, 0.0, 4.584171591070637>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.31363948178729, 0.0, 4.840925552677172>, <-83.473706521694, 0.1, 4.584171591070637>, <-83.473706521694, 0.0, 4.584171591070637>}
  triangle { <-84.32230467550721, 0.0, 5.113209560733322>, <-84.32230467550721, 0.1, 5.113209560733322>, <-84.1622376356005, 0.0, 5.369963522339857>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.473706521694, 0.0, 4.584171591070637>, <-84.32230467550721, 0.0, 5.113209560733322>, <-83.6337735616007, 0.1, 4.327417629464103>}
  triangle { <-84.32230467550721, 0.0, 5.113209560733322>, <-84.48237171541392, 0.1, 4.856455599126788>, <-83.6337735616007, 0.1, 4.327417629464103>}
  triangle { <-83.6337735616007, 0.1, 4.327417629464103>, <-84.48237171541392, 0.1, 4.856455599126788>, <-83.6337735616007, 0.0, 4.327417629464103>}
  triangle { <-84.48237171541392, 0.1, 4.856455599126788>, <-84.48237171541392, 0.0, 4.856455599126788>, <-83.6337735616007, 0.0, 4.327417629464103>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.473706521694, 0.0, 4.584171591070637>, <-83.6337735616007, 0.1, 4.327417629464103>, <-83.6337735616007, 0.0, 4.327417629464103>}
  triangle { <-84.48237171541392, 0.0, 4.856455599126788>, <-84.48237171541392, 0.1, 4.856455599126788>, <-84.32230467550721, 0.0, 5.113209560733322>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.6337735616007, 0.0, 4.327417629464103>, <-84.48237171541392, 0.0, 4.856455599126788>, <-83.79384060150741, 0.1, 4.070663667857568>}
  triangle { <-84.48237171541392, 0.0, 4.856455599126788>, <-84.64243875532063, 0.1, 4.599701637520253>, <-83.79384060150741, 0.1, 4.070663667857568>}
  triangle { <-83.79384060150741, 0.1, 4.070663667857568>, <-84.64243875532063, 0.1, 4.599701637520253>, <-83.79384060150741, 0.0, 4.070663667857568>}
  triangle { <-84.64243875532063, 0.1, 4.599701637520253>, <-84.64243875532063, 0.0, 4.599701637520253>, <-83.79384060150741, 0.0, 4.070663667857568>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.6337735616007, 0.0, 4.327417629464103>, <-83.79384060150741, 0.1, 4.070663667857568>, <-83.79384060150741, 0.0, 4.070663667857568>}
  triangle { <-84.64243875532063, 0.0, 4.599701637520253>, <-84.64243875532063, 0.1, 4.599701637520253>, <-84.48237171541392, 0.0, 4.856455599126788>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.79384060150741, 0.0, 4.070663667857568>, <-84.64243875532063, 0.0, 4.599701637520253>, <-83.95390764141412, 0.1, 3.813909706251033>}
  triangle { <-84.64243875532063, 0.0, 4.599701637520253>, <-84.80250579522733, 0.1, 4.342947675913718>, <-83.95390764141412, 0.1, 3.813909706251033>}
  triangle { <-83.95390764141412, 0.1, 3.813909706251033>, <-84.80250579522733, 0.1, 4.342947675913718>, <-83.95390764141412, 0.0, 3.813909706251033>}
  triangle { <-84.80250579522733, 0.1, 4.342947675913718>, <-84.80250579522733, 0.0, 4.342947675913718>, <-83.95390764141412, 0.0, 3.813909706251033>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.79384060150741, 0.0, 4.070663667857568>, <-83.95390764141412, 0.1, 3.813909706251033>, <-83.95390764141412, 0.0, 3.813909706251033>}
  triangle { <-84.80250579522733, 0.0, 4.342947675913718>, <-84.80250579522733, 0.1, 4.342947675913718>, <-84.64243875532063, 0.0, 4.599701637520253>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.95390764141412, 0.0, 3.813909706251033>, <-84.80250579522733, 0.0, 4.342947675913718>, <-84.11397468132083, 0.1, 3.557155744644499>}
  triangle { <-84.80250579522733, 0.0, 4.342947675913718>, <-84.96257283513404, 0.1, 4.086193714307185>, <-84.11397468132083, 0.1, 3.557155744644499>}
  triangle { <-84.11397468132083, 0.1, 3.557155744644499>, <-84.96257283513404, 0.1, 4.086193714307185>, <-84.11397468132083, 0.0, 3.557155744644499>}
  triangle { <-84.96257283513404, 0.1, 4.086193714307185>, <-84.96257283513404, 0.0, 4.086193714307185>, <-84.11397468132083, 0.0, 3.557155744644499>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-83.95390764141412, 0.0, 3.813909706251033>, <-84.11397468132083, 0.1, 3.557155744644499>, <-84.11397468132083, 0.0, 3.557155744644499>}
  triangle { <-84.96257283513404, 0.0, 4.086193714307185>, <-84.96257283513404, 0.1, 4.086193714307185>, <-84.80250579522733, 0.0, 4.342947675913718>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.11397468132083, 0.0, 3.557155744644499>, <-84.96257283513404, 0.0, 4.086193714307185>, <-84.27404172122753, 0.1, 3.3004017830379646>}
  triangle { <-84.96257283513404, 0.0, 4.086193714307185>, <-85.12263987504075, 0.1, 3.8294397527006505>, <-84.27404172122753, 0.1, 3.3004017830379646>}
  triangle { <-84.27404172122753, 0.1, 3.3004017830379646>, <-85.12263987504075, 0.1, 3.8294397527006505>, <-84.27404172122753, 0.0, 3.3004017830379646>}
  triangle { <-85.12263987504075, 0.1, 3.8294397527006505>, <-85.12263987504075, 0.0, 3.8294397527006505>, <-84.27404172122753, 0.0, 3.3004017830379646>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.11397468132083, 0.0, 3.557155744644499>, <-84.27404172122753, 0.1, 3.3004017830379646>, <-84.27404172122753, 0.0, 3.3004017830379646>}
  triangle { <-85.12263987504075, 0.0, 3.8294397527006505>, <-85.12263987504075, 0.1, 3.8294397527006505>, <-84.96257283513404, 0.0, 4.086193714307185>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.27404172122753, 0.0, 3.3004017830379646>, <-85.12263987504075, 0.0, 3.8294397527006505>, <-84.43410876113424, 0.1, 3.0436478214314304>}
  triangle { <-85.12263987504075, 0.0, 3.8294397527006505>, <-85.28270691494745, 0.1, 3.5726857910941163>, <-84.43410876113424, 0.1, 3.0436478214314304>}
  triangle { <-84.43410876113424, 0.1, 3.0436478214314304>, <-85.28270691494745, 0.1, 3.5726857910941163>, <-84.43410876113424, 0.0, 3.0436478214314304>}
  triangle { <-85.28270691494745, 0.1, 3.5726857910941163>, <-85.28270691494745, 0.0, 3.5726857910941163>, <-84.43410876113424, 0.0, 3.0436478214314304>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.27404172122753, 0.0, 3.3004017830379646>, <-84.43410876113424, 0.1, 3.0436478214314304>, <-84.43410876113424, 0.0, 3.0436478214314304>}
  triangle { <-85.28270691494745, 0.0, 3.5726857910941163>, <-85.28270691494745, 0.1, 3.5726857910941163>, <-85.12263987504075, 0.0, 3.8294397527006505>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.43410876113424, 0.0, 3.0436478214314304>, <-85.28270691494745, 0.0, 3.5726857910941163>, <-84.59417580104095, 0.1, 2.7868938598248962>}
  triangle { <-85.28270691494745, 0.0, 3.5726857910941163>, <-85.44277395485416, 0.1, 3.315931829487582>, <-84.59417580104095, 0.1, 2.7868938598248962>}
  triangle { <-84.59417580104095, 0.1, 2.7868938598248962>, <-85.44277395485416, 0.1, 3.315931829487582>, <-84.59417580104095, 0.0, 2.7868938598248962>}
  triangle { <-85.44277395485416, 0.1, 3.315931829487582>, <-85.44277395485416, 0.0, 3.315931829487582>, <-84.59417580104095, 0.0, 2.7868938598248962>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.43410876113424, 0.0, 3.0436478214314304>, <-84.59417580104095, 0.1, 2.7868938598248962>, <-84.59417580104095, 0.0, 2.7868938598248962>}
  triangle { <-85.44277395485416, 0.0, 3.315931829487582>, <-85.44277395485416, 0.1, 3.315931829487582>, <-85.28270691494745, 0.0, 3.5726857910941163>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.59417580104095, 0.0, 2.7868938598248962>, <-85.44277395485416, 0.0, 3.315931829487582>, <-84.75424284094765, 0.1, 2.530139898218362>}
  triangle { <-85.44277395485416, 0.0, 3.315931829487582>, <-85.60284099476087, 0.1, 3.059177867881048>, <-84.75424284094765, 0.1, 2.530139898218362>}
  triangle { <-84.75424284094765, 0.1, 2.530139898218362>, <-85.60284099476087, 0.1, 3.059177867881048>, <-84.75424284094765, 0.0, 2.530139898218362>}
  triangle { <-85.60284099476087, 0.1, 3.059177867881048>, <-85.60284099476087, 0.0, 3.059177867881048>, <-84.75424284094765, 0.0, 2.530139898218362>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.59417580104095, 0.0, 2.7868938598248962>, <-84.75424284094765, 0.1, 2.530139898218362>, <-84.75424284094765, 0.0, 2.530139898218362>}
  triangle { <-85.60284099476087, 0.0, 3.059177867881048>, <-85.60284099476087, 0.1, 3.059177867881048>, <-85.44277395485416, 0.0, 3.315931829487582>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.75424284094765, 0.0, 2.530139898218362>, <-85.60284099476087, 0.0, 3.059177867881048>, <-84.91430988085436, 0.1, 2.273385936611828>}
  triangle { <-85.60284099476087, 0.0, 3.059177867881048>, <-85.76290803466757, 0.1, 2.8024239062745138>, <-84.91430988085436, 0.1, 2.273385936611828>}
  triangle { <-84.91430988085436, 0.1, 2.273385936611828>, <-85.76290803466757, 0.1, 2.8024239062745138>, <-84.91430988085436, 0.0, 2.273385936611828>}
  triangle { <-85.76290803466757, 0.1, 2.8024239062745138>, <-85.76290803466757, 0.0, 2.8024239062745138>, <-84.91430988085436, 0.0, 2.273385936611828>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.75424284094765, 0.0, 2.530139898218362>, <-84.91430988085436, 0.1, 2.273385936611828>, <-84.91430988085436, 0.0, 2.273385936611828>}
  triangle { <-85.76290803466757, 0.0, 2.8024239062745138>, <-85.76290803466757, 0.1, 2.8024239062745138>, <-85.60284099476087, 0.0, 3.059177867881048>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.91430988085436, 0.0, 2.273385936611828>, <-85.76290803466757, 0.0, 2.8024239062745138>, <-85.07437692076107, 0.1, 2.0166319750052937>}
  triangle { <-85.76290803466757, 0.0, 2.8024239062745138>, <-85.92297507457428, 0.1, 2.5456699446679796>, <-85.07437692076107, 0.1, 2.0166319750052937>}
  triangle { <-85.07437692076107, 0.1, 2.0166319750052937>, <-85.92297507457428, 0.1, 2.5456699446679796>, <-85.07437692076107, 0.0, 2.0166319750052937>}
  triangle { <-85.92297507457428, 0.1, 2.5456699446679796>, <-85.92297507457428, 0.0, 2.5456699446679796>, <-85.07437692076107, 0.0, 2.0166319750052937>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-84.91430988085436, 0.0, 2.273385936611828>, <-85.07437692076107, 0.1, 2.0166319750052937>, <-85.07437692076107, 0.0, 2.0166319750052937>}
  triangle { <-85.92297507457428, 0.0, 2.5456699446679796>, <-85.92297507457428, 0.1, 2.5456699446679796>, <-85.76290803466757, 0.0, 2.8024239062745138>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.07437692076107, 0.0, 2.0166319750052937>, <-85.92297507457428, 0.0, 2.5456699446679796>, <-85.23444396066778, 0.1, 1.7598780133987597>}
  triangle { <-85.92297507457428, 0.0, 2.5456699446679796>, <-86.08304211448099, 0.1, 2.2889159830614454>, <-85.23444396066778, 0.1, 1.7598780133987597>}
  triangle { <-85.23444396066778, 0.1, 1.7598780133987597>, <-86.08304211448099, 0.1, 2.2889159830614454>, <-85.23444396066778, 0.0, 1.7598780133987597>}
  triangle { <-86.08304211448099, 0.1, 2.2889159830614454>, <-86.08304211448099, 0.0, 2.2889159830614454>, <-85.23444396066778, 0.0, 1.7598780133987597>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.07437692076107, 0.0, 2.0166319750052937>, <-85.23444396066778, 0.1, 1.7598780133987597>, <-85.23444396066778, 0.0, 1.7598780133987597>}
  triangle { <-86.08304211448099, 0.0, 2.2889159830614454>, <-86.08304211448099, 0.1, 2.2889159830614454>, <-85.92297507457428, 0.0, 2.5456699446679796>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.23444396066778, 0.0, 1.7598780133987597>, <-86.08304211448099, 0.0, 2.2889159830614454>, <-85.39451100057448, 0.1, 1.5031240517922255>}
  triangle { <-86.08304211448099, 0.0, 2.2889159830614454>, <-86.2431091543877, 0.1, 2.032162021454911>, <-85.39451100057448, 0.1, 1.5031240517922255>}
  triangle { <-85.39451100057448, 0.1, 1.5031240517922255>, <-86.2431091543877, 0.1, 2.032162021454911>, <-85.39451100057448, 0.0, 1.5031240517922255>}
  triangle { <-86.2431091543877, 0.1, 2.032162021454911>, <-86.2431091543877, 0.0, 2.032162021454911>, <-85.39451100057448, 0.0, 1.5031240517922255>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.23444396066778, 0.0, 1.7598780133987597>, <-85.39451100057448, 0.1, 1.5031240517922255>, <-85.39451100057448, 0.0, 1.5031240517922255>}
  triangle { <-86.2431091543877, 0.0, 2.032162021454911>, <-86.2431091543877, 0.1, 2.032162021454911>, <-86.08304211448099, 0.0, 2.2889159830614454>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.39451100057448, 0.0, 1.5031240517922255>, <-86.2431091543877, 0.0, 2.032162021454911>, <-85.55457804048119, 0.1, 1.2463700901856913>}
  triangle { <-86.2431091543877, 0.0, 2.032162021454911>, <-86.4031761942944, 0.1, 1.7754080598483768>, <-85.55457804048119, 0.1, 1.2463700901856913>}
  triangle { <-85.55457804048119, 0.1, 1.2463700901856913>, <-86.4031761942944, 0.1, 1.7754080598483768>, <-85.55457804048119, 0.0, 1.2463700901856913>}
  triangle { <-86.4031761942944, 0.1, 1.7754080598483768>, <-86.4031761942944, 0.0, 1.7754080598483768>, <-85.55457804048119, 0.0, 1.2463700901856913>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.39451100057448, 0.0, 1.5031240517922255>, <-85.55457804048119, 0.1, 1.2463700901856913>, <-85.55457804048119, 0.0, 1.2463700901856913>}
  triangle { <-86.4031761942944, 0.0, 1.7754080598483768>, <-86.4031761942944, 0.1, 1.7754080598483768>, <-86.2431091543877, 0.0, 2.032162021454911>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.55457804048119, 0.0, 1.2463700901856913>, <-86.4031761942944, 0.0, 1.7754080598483768>, <-85.7146450803879, 0.1, 0.9896161285791572>}
  triangle { <-86.4031761942944, 0.0, 1.7754080598483768>, <-86.56324323420111, 0.1, 1.5186540982418426>, <-85.7146450803879, 0.1, 0.9896161285791572>}
  triangle { <-85.7146450803879, 0.1, 0.9896161285791572>, <-86.56324323420111, 0.1, 1.5186540982418426>, <-85.7146450803879, 0.0, 0.9896161285791572>}
  triangle { <-86.56324323420111, 0.1, 1.5186540982418426>, <-86.56324323420111, 0.0, 1.5186540982418426>, <-85.7146450803879, 0.0, 0.9896161285791572>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.55457804048119, 0.0, 1.2463700901856913>, <-85.7146450803879, 0.1, 0.9896161285791572>, <-85.7146450803879, 0.0, 0.9896161285791572>}
  triangle { <-86.56324323420111, 0.0, 1.5186540982418426>, <-86.56324323420111, 0.1, 1.5186540982418426>, <-86.4031761942944, 0.0, 1.7754080598483768>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.7146450803879, 0.0, 0.9896161285791572>, <-86.56324323420111, 0.0, 1.5186540982418426>, <-85.8747121202946, 0.1, 0.732862166972623>}
  triangle { <-86.56324323420111, 0.0, 1.5186540982418426>, <-86.72331027410782, 0.1, 1.2619001366353084>, <-85.8747121202946, 0.1, 0.732862166972623>}
  triangle { <-85.8747121202946, 0.1, 0.732862166972623>, <-86.72331027410782, 0.1, 1.2619001366353084>, <-85.8747121202946, 0.0, 0.732862166972623>}
  triangle { <-86.72331027410782, 0.1, 1.2619001366353084>, <-86.72331027410782, 0.0, 1.2619001366353084>, <-85.8747121202946, 0.0, 0.732862166972623>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.7146450803879, 0.0, 0.9896161285791572>, <-85.8747121202946, 0.1, 0.732862166972623>, <-85.8747121202946, 0.0, 0.732862166972623>}
  triangle { <-86.72331027410782, 0.0, 1.2619001366353084>, <-86.72331027410782, 0.1, 1.2619001366353084>, <-86.56324323420111, 0.0, 1.5186540982418426>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.8747121202946, 0.0, 0.732862166972623>, <-86.72331027410782, 0.0, 1.2619001366353084>, <-86.03477916020131, 0.1, 0.4761082053660887>}
  triangle { <-86.72331027410782, 0.0, 1.2619001366353084>, <-86.88337731401452, 0.1, 1.0051461750287742>, <-86.03477916020131, 0.1, 0.4761082053660887>}
  triangle { <-86.03477916020131, 0.1, 0.4761082053660887>, <-86.88337731401452, 0.1, 1.0051461750287742>, <-86.03477916020131, 0.0, 0.4761082053660887>}
  triangle { <-86.88337731401452, 0.1, 1.0051461750287742>, <-86.88337731401452, 0.0, 1.0051461750287742>, <-86.03477916020131, 0.0, 0.4761082053660887>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-85.8747121202946, 0.0, 0.732862166972623>, <-86.03477916020131, 0.1, 0.4761082053660887>, <-86.03477916020131, 0.0, 0.4761082053660887>}
  triangle { <-86.88337731401452, 0.0, 1.0051461750287742>, <-86.88337731401452, 0.1, 1.0051461750287742>, <-86.72331027410782, 0.0, 1.2619001366353084>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.03477916020131, 0.0, 0.4761082053660887>, <-86.88337731401452, 0.0, 1.0051461750287742>, <-86.19484620010802, 0.1, 0.21935424375955453>}
  triangle { <-86.88337731401452, 0.0, 1.0051461750287742>, <-87.04344435392123, 0.1, 0.74839221342224>, <-86.19484620010802, 0.1, 0.21935424375955453>}
  triangle { <-86.19484620010802, 0.1, 0.21935424375955453>, <-87.04344435392123, 0.1, 0.74839221342224>, <-86.19484620010802, 0.0, 0.21935424375955453>}
  triangle { <-87.04344435392123, 0.1, 0.74839221342224>, <-87.04344435392123, 0.0, 0.74839221342224>, <-86.19484620010802, 0.0, 0.21935424375955453>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.03477916020131, 0.0, 0.4761082053660887>, <-86.19484620010802, 0.1, 0.21935424375955453>, <-86.19484620010802, 0.0, 0.21935424375955453>}
  triangle { <-87.04344435392123, 0.0, 0.74839221342224>, <-87.04344435392123, 0.1, 0.74839221342224>, <-86.88337731401452, 0.0, 1.0051461750287742>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.19484620010802, 0.0, 0.21935424375955453>, <-87.04344435392123, 0.0, 0.74839221342224>, <-86.35491324001472, 0.1, -0.03739971784697965>}
  triangle { <-87.04344435392123, 0.0, 0.74839221342224>, <-87.20351139382794, 0.1, 0.4916382518157059>, <-86.35491324001472, 0.1, -0.03739971784697965>}
  triangle { <-86.35491324001472, 0.1, -0.03739971784697965>, <-87.20351139382794, 0.1, 0.4916382518157059>, <-86.35491324001472, 0.0, -0.03739971784697965>}
  triangle { <-87.20351139382794, 0.1, 0.4916382518157059>, <-87.20351139382794, 0.0, 0.4916382518157059>, <-86.35491324001472, 0.0, -0.03739971784697965>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.19484620010802, 0.0, 0.21935424375955453>, <-86.35491324001472, 0.1, -0.03739971784697965>, <-86.35491324001472, 0.0, -0.03739971784697965>}
  triangle { <-87.20351139382794, 0.0, 0.4916382518157059>, <-87.20351139382794, 0.1, 0.4916382518157059>, <-87.04344435392123, 0.0, 0.74839221342224>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.35491324001472, 0.0, -0.03739971784697965>, <-87.20351139382794, 0.0, 0.4916382518157059>, <-86.51498027992143, 0.1, -0.29415367945351384>}
  triangle { <-87.20351139382794, 0.0, 0.4916382518157059>, <-87.36357843373465, 0.1, 0.23488429020917173>, <-86.51498027992143, 0.1, -0.29415367945351384>}
  triangle { <-86.51498027992143, 0.1, -0.29415367945351384>, <-87.36357843373465, 0.1, 0.23488429020917173>, <-86.51498027992143, 0.0, -0.29415367945351384>}
  triangle { <-87.36357843373465, 0.1, 0.23488429020917173>, <-87.36357843373465, 0.0, 0.23488429020917173>, <-86.51498027992143, 0.0, -0.29415367945351384>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.35491324001472, 0.0, -0.03739971784697965>, <-86.51498027992143, 0.1, -0.29415367945351384>, <-86.51498027992143, 0.0, -0.29415367945351384>}
  triangle { <-87.36357843373465, 0.0, 0.23488429020917173>, <-87.36357843373465, 0.1, 0.23488429020917173>, <-87.20351139382794, 0.0, 0.4916382518157059>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.51498027992143, 0.0, -0.29415367945351384>, <-87.36357843373465, 0.0, 0.23488429020917173>, <-86.67504731982814, 0.1, -0.550907641060048>}
  triangle { <-87.36357843373465, 0.0, 0.23488429020917173>, <-87.52364547364135, 0.1, -0.021869671397362456>, <-86.67504731982814, 0.1, -0.550907641060048>}
  triangle { <-86.67504731982814, 0.1, -0.550907641060048>, <-87.52364547364135, 0.1, -0.021869671397362456>, <-86.67504731982814, 0.0, -0.550907641060048>}
  triangle { <-87.52364547364135, 0.1, -0.021869671397362456>, <-87.52364547364135, 0.0, -0.021869671397362456>, <-86.67504731982814, 0.0, -0.550907641060048>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.51498027992143, 0.0, -0.29415367945351384>, <-86.67504731982814, 0.1, -0.550907641060048>, <-86.67504731982814, 0.0, -0.550907641060048>}
  triangle { <-87.52364547364135, 0.0, -0.021869671397362456>, <-87.52364547364135, 0.1, -0.021869671397362456>, <-87.36357843373465, 0.0, 0.23488429020917173>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.67504731982814, 0.0, -0.550907641060048>, <-87.52364547364135, 0.0, -0.021869671397362456>, <-86.83511435973485, 0.1, -0.8076616026665822>}
  triangle { <-87.52364547364135, 0.0, -0.021869671397362456>, <-87.68371251354806, 0.1, -0.27862363300389664>, <-86.83511435973485, 0.1, -0.8076616026665822>}
  triangle { <-86.83511435973485, 0.1, -0.8076616026665822>, <-87.68371251354806, 0.1, -0.27862363300389664>, <-86.83511435973485, 0.0, -0.8076616026665822>}
  triangle { <-87.68371251354806, 0.1, -0.27862363300389664>, <-87.68371251354806, 0.0, -0.27862363300389664>, <-86.83511435973485, 0.0, -0.8076616026665822>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.67504731982814, 0.0, -0.550907641060048>, <-86.83511435973485, 0.1, -0.8076616026665822>, <-86.83511435973485, 0.0, -0.8076616026665822>}
  triangle { <-87.68371251354806, 0.0, -0.27862363300389664>, <-87.68371251354806, 0.1, -0.27862363300389664>, <-87.52364547364135, 0.0, -0.021869671397362456>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.83511435973485, 0.0, -0.8076616026665822>, <-87.68371251354806, 0.0, -0.27862363300389664>, <-86.99518139964155, 0.1, -1.0644155642731163>}
  triangle { <-87.68371251354806, 0.0, -0.27862363300389664>, <-87.84377955345477, 0.1, -0.5353775946104309>, <-86.99518139964155, 0.1, -1.0644155642731163>}
  triangle { <-86.99518139964155, 0.1, -1.0644155642731163>, <-87.84377955345477, 0.1, -0.5353775946104309>, <-86.99518139964155, 0.0, -1.0644155642731163>}
  triangle { <-87.84377955345477, 0.1, -0.5353775946104309>, <-87.84377955345477, 0.0, -0.5353775946104309>, <-86.99518139964155, 0.0, -1.0644155642731163>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.83511435973485, 0.0, -0.8076616026665822>, <-86.99518139964155, 0.1, -1.0644155642731163>, <-86.99518139964155, 0.0, -1.0644155642731163>}
  triangle { <-87.84377955345477, 0.0, -0.5353775946104309>, <-87.84377955345477, 0.1, -0.5353775946104309>, <-87.68371251354806, 0.0, -0.27862363300389664>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.99518139964155, 0.0, -1.0644155642731163>, <-87.84377955345477, 0.0, -0.5353775946104309>, <-87.15524843954826, 0.1, -1.3211695258796505>}
  triangle { <-87.84377955345477, 0.0, -0.5353775946104309>, <-88.00384659336147, 0.1, -0.7921315562169651>, <-87.15524843954826, 0.1, -1.3211695258796505>}
  triangle { <-87.15524843954826, 0.1, -1.3211695258796505>, <-88.00384659336147, 0.1, -0.7921315562169651>, <-87.15524843954826, 0.0, -1.3211695258796505>}
  triangle { <-88.00384659336147, 0.1, -0.7921315562169651>, <-88.00384659336147, 0.0, -0.7921315562169651>, <-87.15524843954826, 0.0, -1.3211695258796505>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-86.99518139964155, 0.0, -1.0644155642731163>, <-87.15524843954826, 0.1, -1.3211695258796505>, <-87.15524843954826, 0.0, -1.3211695258796505>}
  triangle { <-88.00384659336147, 0.0, -0.7921315562169651>, <-88.00384659336147, 0.1, -0.7921315562169651>, <-87.84377955345477, 0.0, -0.5353775946104309>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.15524843954826, 0.0, -1.3211695258796505>, <-88.00384659336147, 0.0, -0.7921315562169651>, <-87.31531547945497, 0.1, -1.5779234874861847>}
  triangle { <-88.00384659336147, 0.0, -0.7921315562169651>, <-88.16391363326818, 0.1, -1.0488855178234993>, <-87.31531547945497, 0.1, -1.5779234874861847>}
  triangle { <-87.31531547945497, 0.1, -1.5779234874861847>, <-88.16391363326818, 0.1, -1.0488855178234993>, <-87.31531547945497, 0.0, -1.5779234874861847>}
  triangle { <-88.16391363326818, 0.1, -1.0488855178234993>, <-88.16391363326818, 0.0, -1.0488855178234993>, <-87.31531547945497, 0.0, -1.5779234874861847>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.15524843954826, 0.0, -1.3211695258796505>, <-87.31531547945497, 0.1, -1.5779234874861847>, <-87.31531547945497, 0.0, -1.5779234874861847>}
  triangle { <-88.16391363326818, 0.0, -1.0488855178234993>, <-88.16391363326818, 0.1, -1.0488855178234993>, <-88.00384659336147, 0.0, -0.7921315562169651>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.31531547945497, 0.0, -1.5779234874861847>, <-88.16391363326818, 0.0, -1.0488855178234993>, <-87.47538251936167, 0.1, -1.834677449092719>}
  triangle { <-88.16391363326818, 0.0, -1.0488855178234993>, <-88.32398067317489, 0.1, -1.3056394794300334>, <-87.47538251936167, 0.1, -1.834677449092719>}
  triangle { <-87.47538251936167, 0.1, -1.834677449092719>, <-88.32398067317489, 0.1, -1.3056394794300334>, <-87.47538251936167, 0.0, -1.834677449092719>}
  triangle { <-88.32398067317489, 0.1, -1.3056394794300334>, <-88.32398067317489, 0.0, -1.3056394794300334>, <-87.47538251936167, 0.0, -1.834677449092719>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.31531547945497, 0.0, -1.5779234874861847>, <-87.47538251936167, 0.1, -1.834677449092719>, <-87.47538251936167, 0.0, -1.834677449092719>}
  triangle { <-88.32398067317489, 0.0, -1.3056394794300334>, <-88.32398067317489, 0.1, -1.3056394794300334>, <-88.16391363326818, 0.0, -1.0488855178234993>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.47538251936167, 0.0, -1.834677449092719>, <-88.32398067317489, 0.0, -1.3056394794300334>, <-87.63544955926838, 0.1, -2.0914314106992533>}
  triangle { <-88.32398067317489, 0.0, -1.3056394794300334>, <-88.4840477130816, 0.1, -1.5623934410365676>, <-87.63544955926838, 0.1, -2.0914314106992533>}
  triangle { <-87.63544955926838, 0.1, -2.0914314106992533>, <-88.4840477130816, 0.1, -1.5623934410365676>, <-87.63544955926838, 0.0, -2.0914314106992533>}
  triangle { <-88.4840477130816, 0.1, -1.5623934410365676>, <-88.4840477130816, 0.0, -1.5623934410365676>, <-87.63544955926838, 0.0, -2.0914314106992533>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.47538251936167, 0.0, -1.834677449092719>, <-87.63544955926838, 0.1, -2.0914314106992533>, <-87.63544955926838, 0.0, -2.0914314106992533>}
  triangle { <-88.4840477130816, 0.0, -1.5623934410365676>, <-88.4840477130816, 0.1, -1.5623934410365676>, <-88.32398067317489, 0.0, -1.3056394794300334>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.63544955926838, 0.0, -2.0914314106992533>, <-88.4840477130816, 0.0, -1.5623934410365676>, <-87.79551659917509, 0.1, -2.3481853723057875>}
  triangle { <-88.4840477130816, 0.0, -1.5623934410365676>, <-88.6441147529883, 0.1, -1.8191474026431018>, <-87.79551659917509, 0.1, -2.3481853723057875>}
  triangle { <-87.79551659917509, 0.1, -2.3481853723057875>, <-88.6441147529883, 0.1, -1.8191474026431018>, <-87.79551659917509, 0.0, -2.3481853723057875>}
  triangle { <-88.6441147529883, 0.1, -1.8191474026431018>, <-88.6441147529883, 0.0, -1.8191474026431018>, <-87.79551659917509, 0.0, -2.3481853723057875>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.63544955926838, 0.0, -2.0914314106992533>, <-87.79551659917509, 0.1, -2.3481853723057875>, <-87.79551659917509, 0.0, -2.3481853723057875>}
  triangle { <-88.6441147529883, 0.0, -1.8191474026431018>, <-88.6441147529883, 0.1, -1.8191474026431018>, <-88.4840477130816, 0.0, -1.5623934410365676>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.79551659917509, 0.0, -2.3481853723057875>, <-88.6441147529883, 0.0, -1.8191474026431018>, <-87.9555836390818, 0.1, -2.6049393339123217>}
  triangle { <-88.6441147529883, 0.0, -1.8191474026431018>, <-88.80418179289501, 0.1, -2.075901364249636>, <-87.9555836390818, 0.1, -2.6049393339123217>}
  triangle { <-87.9555836390818, 0.1, -2.6049393339123217>, <-88.80418179289501, 0.1, -2.075901364249636>, <-87.9555836390818, 0.0, -2.6049393339123217>}
  triangle { <-88.80418179289501, 0.1, -2.075901364249636>, <-88.80418179289501, 0.0, -2.075901364249636>, <-87.9555836390818, 0.0, -2.6049393339123217>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.79551659917509, 0.0, -2.3481853723057875>, <-87.9555836390818, 0.1, -2.6049393339123217>, <-87.9555836390818, 0.0, -2.6049393339123217>}
  triangle { <-88.80418179289501, 0.0, -2.075901364249636>, <-88.80418179289501, 0.1, -2.075901364249636>, <-88.6441147529883, 0.0, -1.8191474026431018>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.9555836390818, 0.0, -2.6049393339123217>, <-88.80418179289501, 0.0, -2.075901364249636>, <-88.1156506789885, 0.1, -2.861693295518856>}
  triangle { <-88.80418179289501, 0.0, -2.075901364249636>, <-88.96424883280172, 0.1, -2.33265532585617>, <-88.1156506789885, 0.1, -2.861693295518856>}
  triangle { <-88.1156506789885, 0.1, -2.861693295518856>, <-88.96424883280172, 0.1, -2.33265532585617>, <-88.1156506789885, 0.0, -2.861693295518856>}
  triangle { <-88.96424883280172, 0.1, -2.33265532585617>, <-88.96424883280172, 0.0, -2.33265532585617>, <-88.1156506789885, 0.0, -2.861693295518856>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-87.9555836390818, 0.0, -2.6049393339123217>, <-88.1156506789885, 0.1, -2.861693295518856>, <-88.1156506789885, 0.0, -2.861693295518856>}
  triangle { <-88.96424883280172, 0.0, -2.33265532585617>, <-88.96424883280172, 0.1, -2.33265532585617>, <-88.80418179289501, 0.0, -2.075901364249636>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-88.1156506789885, 0.0, -2.861693295518856>, <-88.96424883280172, 0.0, -2.33265532585617>, <-88.27571771889521, 0.1, -3.11844725712539>}
  triangle { <-88.96424883280172, 0.0, -2.33265532585617>, <-89.12431587270842, 0.1, -2.589409287462704>, <-88.27571771889521, 0.1, -3.11844725712539>}
  triangle { <-88.27571771889521, 0.1, -3.11844725712539>, <-89.12431587270842, 0.1, -2.589409287462704>, <-88.27571771889521, 0.0, -3.11844725712539>}
  triangle { <-89.12431587270842, 0.1, -2.589409287462704>, <-89.12431587270842, 0.0, -2.589409287462704>, <-88.27571771889521, 0.0, -3.11844725712539>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-88.1156506789885, 0.0, -2.861693295518856>, <-88.27571771889521, 0.1, -3.11844725712539>, <-88.27571771889521, 0.0, -3.11844725712539>}
  triangle { <-89.12431587270842, 0.0, -2.589409287462704>, <-89.12431587270842, 0.1, -2.589409287462704>, <-88.96424883280172, 0.0, -2.33265532585617>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-88.27571771889521, 0.0, -3.11844725712539>, <-89.12431587270842, 0.0, -2.589409287462704>, <-88.43578475880192, 0.1, -3.3752012187319242>}
  triangle { <-89.12431587270842, 0.0, -2.589409287462704>, <-89.28438291261513, 0.1, -2.8461632490692383>, <-88.43578475880192, 0.1, -3.3752012187319242>}
  triangle { <-88.43578475880192, 0.1, -3.3752012187319242>, <-89.28438291261513, 0.1, -2.8461632490692383>, <-88.43578475880192, 0.0, -3.3752012187319242>}
  triangle { <-89.28438291261513, 0.1, -2.8461632490692383>, <-89.28438291261513, 0.0, -2.8461632490692383>, <-88.43578475880192, 0.0, -3.3752012187319242>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-88.27571771889521, 0.0, -3.11844725712539>, <-88.43578475880192, 0.1, -3.3752012187319242>, <-88.43578475880192, 0.0, -3.3752012187319242>}
  triangle { <-89.28438291261513, 0.0, -2.8461632490692383>, <-89.28438291261513, 0.1, -2.8461632490692383>, <-89.12431587270842, 0.0, -2.589409287462704>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-51.31231754679647, 0.0, 7.337705729769524>, <-52.305801554816064, 0.0, 7.451677330659035>, <-54.158198445183935, 0.0, -17.46967733065904>}
  triangle { <-52.305801554816064, 0.0, 7.451677330659035>, <-55.15168245320353, 0.0, -17.355705729769525>, <-54.158198445183935, 0.0, -17.46967733065904>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-54.32290851204304, 0.0, -18.900611297113432>, <-55.31630503532203, 0.0, -18.78587966443435>, <-54.59165092903039, 0.0, -19.91706349992888>}
  triangle { <-55.31630503532203, 0.0, -18.78587966443435>, <-55.3683490709696, 0.0, -20.54693650007112>, <-54.59165092903039, 0.0, -19.91706349992888>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-54.32290851204304, 0.0, -18.900611297113432>, <-55.31630503532203, 0.0, -18.78587966443435>, <-54.35498715730653, 0.1, -19.178362200958652>}
  triangle { <-55.31630503532203, 0.0, -18.78587966443435>, <-55.34838368058552, 0.1, -19.06363056827957>, <-54.35498715730653, 0.1, -19.178362200958652>}
  triangle { <-54.35498715730653, 0.1, -19.178362200958652>, <-55.34838368058552, 0.1, -19.06363056827957>, <-54.35498715730653, 0.0, -19.178362200958652>}
  triangle { <-55.34838368058552, 0.1, -19.06363056827957>, <-55.34838368058552, 0.0, -19.06363056827957>, <-54.35498715730653, 0.0, -19.178362200958652>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.32290851204304, 0.0, -18.900611297113432>, <-54.35498715730653, 0.1, -19.178362200958652>, <-54.35498715730653, 0.0, -19.178362200958652>}
  triangle { <-55.34838368058552, 0.0, -19.06363056827957>, <-55.34838368058552, 0.1, -19.06363056827957>, <-55.31630503532203, 0.0, -18.78587966443435>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.35498715730653, 0.0, -19.178362200958652>, <-55.34838368058552, 0.0, -19.06363056827957>, <-54.38706580257002, 0.1, -19.456113104803872>}
  triangle { <-55.34838368058552, 0.0, -19.06363056827957>, <-55.38046232584901, 0.1, -19.34138147212479>, <-54.38706580257002, 0.1, -19.456113104803872>}
  triangle { <-54.38706580257002, 0.1, -19.456113104803872>, <-55.38046232584901, 0.1, -19.34138147212479>, <-54.38706580257002, 0.0, -19.456113104803872>}
  triangle { <-55.38046232584901, 0.1, -19.34138147212479>, <-55.38046232584901, 0.0, -19.34138147212479>, <-54.38706580257002, 0.0, -19.456113104803872>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.35498715730653, 0.0, -19.178362200958652>, <-54.38706580257002, 0.1, -19.456113104803872>, <-54.38706580257002, 0.0, -19.456113104803872>}
  triangle { <-55.38046232584901, 0.0, -19.34138147212479>, <-55.38046232584901, 0.1, -19.34138147212479>, <-55.34838368058552, 0.0, -19.06363056827957>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.38706580257002, 0.0, -19.456113104803872>, <-55.38046232584901, 0.0, -19.34138147212479>, <-54.41914444783351, 0.1, -19.733864008649093>}
  triangle { <-55.38046232584901, 0.0, -19.34138147212479>, <-55.4125409711125, 0.1, -19.61913237597001>, <-54.41914444783351, 0.1, -19.733864008649093>}
  triangle { <-54.41914444783351, 0.1, -19.733864008649093>, <-55.4125409711125, 0.1, -19.61913237597001>, <-54.41914444783351, 0.0, -19.733864008649093>}
  triangle { <-55.4125409711125, 0.1, -19.61913237597001>, <-55.4125409711125, 0.0, -19.61913237597001>, <-54.41914444783351, 0.0, -19.733864008649093>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.38706580257002, 0.0, -19.456113104803872>, <-54.41914444783351, 0.1, -19.733864008649093>, <-54.41914444783351, 0.0, -19.733864008649093>}
  triangle { <-55.4125409711125, 0.0, -19.61913237597001>, <-55.4125409711125, 0.1, -19.61913237597001>, <-55.38046232584901, 0.0, -19.34138147212479>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.41914444783351, 0.0, -19.733864008649093>, <-55.4125409711125, 0.0, -19.61913237597001>, <-54.451223093097, 0.1, -20.011614912494313>}
  triangle { <-55.4125409711125, 0.0, -19.61913237597001>, <-55.44461961637599, 0.1, -19.89688327981523>, <-54.451223093097, 0.1, -20.011614912494313>}
  triangle { <-54.451223093097, 0.1, -20.011614912494313>, <-55.44461961637599, 0.1, -19.89688327981523>, <-54.451223093097, 0.0, -20.011614912494313>}
  triangle { <-55.44461961637599, 0.1, -19.89688327981523>, <-55.44461961637599, 0.0, -19.89688327981523>, <-54.451223093097, 0.0, -20.011614912494313>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.41914444783351, 0.0, -19.733864008649093>, <-54.451223093097, 0.1, -20.011614912494313>, <-54.451223093097, 0.0, -20.011614912494313>}
  triangle { <-55.44461961637599, 0.0, -19.89688327981523>, <-55.44461961637599, 0.1, -19.89688327981523>, <-55.4125409711125, 0.0, -19.61913237597001>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.451223093097, 0.0, -20.011614912494313>, <-55.44461961637599, 0.0, -19.89688327981523>, <-54.48330173836049, 0.1, -20.289365816339533>}
  triangle { <-55.44461961637599, 0.0, -19.89688327981523>, <-55.47669826163948, 0.1, -20.17463418366045>, <-54.48330173836049, 0.1, -20.289365816339533>}
  triangle { <-54.48330173836049, 0.1, -20.289365816339533>, <-55.47669826163948, 0.1, -20.17463418366045>, <-54.48330173836049, 0.0, -20.289365816339533>}
  triangle { <-55.47669826163948, 0.1, -20.17463418366045>, <-55.47669826163948, 0.0, -20.17463418366045>, <-54.48330173836049, 0.0, -20.289365816339533>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-54.451223093097, 0.0, -20.011614912494313>, <-54.48330173836049, 0.1, -20.289365816339533>, <-54.48330173836049, 0.0, -20.289365816339533>}
  triangle { <-55.47669826163948, 0.0, -20.17463418366045>, <-55.47669826163948, 0.1, -20.17463418366045>, <-55.44461961637599, 0.0, -19.89688327981523>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.61728508637496, 0.0, 29.351496037401205>, <-39.746853435364784, 0.0, 28.359925544223813>, <-32.74721582550509, 0.0, 28.453785246588694>}
  triangle { <-39.746853435364784, 0.0, 28.359925544223813>, <-32.87678417449491, 0.0, 27.462214753411303>, <-32.74721582550509, 0.0, 28.453785246588694>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-39.61728508637496, 0.0, 29.351496037401205>, <-39.746853435364784, 0.0, 28.359925544223813>, <-39.31858642285888, 0.1, 29.312465133452836>}
  triangle { <-39.746853435364784, 0.0, 28.359925544223813>, <-39.4481547718487, 0.1, 28.320894640275444>, <-39.31858642285888, 0.1, 29.312465133452836>}
  triangle { <-39.31858642285888, 0.1, 29.312465133452836>, <-39.4481547718487, 0.1, 28.320894640275444>, <-39.31858642285888, 0.0, 29.312465133452836>}
  triangle { <-39.4481547718487, 0.1, 28.320894640275444>, <-39.4481547718487, 0.0, 28.320894640275444>, <-39.31858642285888, 0.0, 29.312465133452836>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.61728508637496, 0.0, 29.351496037401205>, <-39.31858642285888, 0.1, 29.312465133452836>, <-39.31858642285888, 0.0, 29.312465133452836>}
  triangle { <-39.4481547718487, 0.0, 28.320894640275444>, <-39.4481547718487, 0.1, 28.320894640275444>, <-39.746853435364784, 0.0, 28.359925544223813>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.31858642285888, 0.0, 29.312465133452836>, <-39.4481547718487, 0.0, 28.320894640275444>, <-39.019887759342794, 0.1, 29.273434229504467>}
  triangle { <-39.4481547718487, 0.0, 28.320894640275444>, <-39.149456108332615, 0.1, 28.281863736327075>, <-39.019887759342794, 0.1, 29.273434229504467>}
  triangle { <-39.019887759342794, 0.1, 29.273434229504467>, <-39.149456108332615, 0.1, 28.281863736327075>, <-39.019887759342794, 0.0, 29.273434229504467>}
  triangle { <-39.149456108332615, 0.1, 28.281863736327075>, <-39.149456108332615, 0.0, 28.281863736327075>, <-39.019887759342794, 0.0, 29.273434229504467>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.31858642285888, 0.0, 29.312465133452836>, <-39.019887759342794, 0.1, 29.273434229504467>, <-39.019887759342794, 0.0, 29.273434229504467>}
  triangle { <-39.149456108332615, 0.0, 28.281863736327075>, <-39.149456108332615, 0.1, 28.281863736327075>, <-39.4481547718487, 0.0, 28.320894640275444>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.019887759342794, 0.0, 29.273434229504467>, <-39.149456108332615, 0.0, 28.281863736327075>, <-38.72118909582671, 0.1, 29.234403325556098>}
  triangle { <-39.149456108332615, 0.0, 28.281863736327075>, <-38.85075744481653, 0.1, 28.242832832378706>, <-38.72118909582671, 0.1, 29.234403325556098>}
  triangle { <-38.72118909582671, 0.1, 29.234403325556098>, <-38.85075744481653, 0.1, 28.242832832378706>, <-38.72118909582671, 0.0, 29.234403325556098>}
  triangle { <-38.85075744481653, 0.1, 28.242832832378706>, <-38.85075744481653, 0.0, 28.242832832378706>, <-38.72118909582671, 0.0, 29.234403325556098>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-39.019887759342794, 0.0, 29.273434229504467>, <-38.72118909582671, 0.1, 29.234403325556098>, <-38.72118909582671, 0.0, 29.234403325556098>}
  triangle { <-38.85075744481653, 0.0, 28.242832832378706>, <-38.85075744481653, 0.1, 28.242832832378706>, <-39.149456108332615, 0.0, 28.281863736327075>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.72118909582671, 0.0, 29.234403325556098>, <-38.85075744481653, 0.0, 28.242832832378706>, <-38.422490432310624, 0.1, 29.19537242160773>}
  triangle { <-38.85075744481653, 0.0, 28.242832832378706>, <-38.552058781300445, 0.1, 28.203801928430337>, <-38.422490432310624, 0.1, 29.19537242160773>}
  triangle { <-38.422490432310624, 0.1, 29.19537242160773>, <-38.552058781300445, 0.1, 28.203801928430337>, <-38.422490432310624, 0.0, 29.19537242160773>}
  triangle { <-38.552058781300445, 0.1, 28.203801928430337>, <-38.552058781300445, 0.0, 28.203801928430337>, <-38.422490432310624, 0.0, 29.19537242160773>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.72118909582671, 0.0, 29.234403325556098>, <-38.422490432310624, 0.1, 29.19537242160773>, <-38.422490432310624, 0.0, 29.19537242160773>}
  triangle { <-38.552058781300445, 0.0, 28.203801928430337>, <-38.552058781300445, 0.1, 28.203801928430337>, <-38.85075744481653, 0.0, 28.242832832378706>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.422490432310624, 0.0, 29.19537242160773>, <-38.552058781300445, 0.0, 28.203801928430337>, <-38.12379176879454, 0.1, 29.15634151765936>}
  triangle { <-38.552058781300445, 0.0, 28.203801928430337>, <-38.25336011778436, 0.1, 28.16477102448197>, <-38.12379176879454, 0.1, 29.15634151765936>}
  triangle { <-38.12379176879454, 0.1, 29.15634151765936>, <-38.25336011778436, 0.1, 28.16477102448197>, <-38.12379176879454, 0.0, 29.15634151765936>}
  triangle { <-38.25336011778436, 0.1, 28.16477102448197>, <-38.25336011778436, 0.0, 28.16477102448197>, <-38.12379176879454, 0.0, 29.15634151765936>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.422490432310624, 0.0, 29.19537242160773>, <-38.12379176879454, 0.1, 29.15634151765936>, <-38.12379176879454, 0.0, 29.15634151765936>}
  triangle { <-38.25336011778436, 0.0, 28.16477102448197>, <-38.25336011778436, 0.1, 28.16477102448197>, <-38.552058781300445, 0.0, 28.203801928430337>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.12379176879454, 0.0, 29.15634151765936>, <-38.25336011778436, 0.0, 28.16477102448197>, <-37.825093105278455, 0.1, 29.11731061371099>}
  triangle { <-38.25336011778436, 0.0, 28.16477102448197>, <-37.954661454268276, 0.1, 28.1257401205336>, <-37.825093105278455, 0.1, 29.11731061371099>}
  triangle { <-37.825093105278455, 0.1, 29.11731061371099>, <-37.954661454268276, 0.1, 28.1257401205336>, <-37.825093105278455, 0.0, 29.11731061371099>}
  triangle { <-37.954661454268276, 0.1, 28.1257401205336>, <-37.954661454268276, 0.0, 28.1257401205336>, <-37.825093105278455, 0.0, 29.11731061371099>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-38.12379176879454, 0.0, 29.15634151765936>, <-37.825093105278455, 0.1, 29.11731061371099>, <-37.825093105278455, 0.0, 29.11731061371099>}
  triangle { <-37.954661454268276, 0.0, 28.1257401205336>, <-37.954661454268276, 0.1, 28.1257401205336>, <-38.25336011778436, 0.0, 28.16477102448197>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.825093105278455, 0.0, 29.11731061371099>, <-37.954661454268276, 0.0, 28.1257401205336>, <-37.52639444176237, 0.1, 29.078279709762622>}
  triangle { <-37.954661454268276, 0.0, 28.1257401205336>, <-37.65596279075219, 0.1, 28.08670921658523>, <-37.52639444176237, 0.1, 29.078279709762622>}
  triangle { <-37.52639444176237, 0.1, 29.078279709762622>, <-37.65596279075219, 0.1, 28.08670921658523>, <-37.52639444176237, 0.0, 29.078279709762622>}
  triangle { <-37.65596279075219, 0.1, 28.08670921658523>, <-37.65596279075219, 0.0, 28.08670921658523>, <-37.52639444176237, 0.0, 29.078279709762622>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.825093105278455, 0.0, 29.11731061371099>, <-37.52639444176237, 0.1, 29.078279709762622>, <-37.52639444176237, 0.0, 29.078279709762622>}
  triangle { <-37.65596279075219, 0.0, 28.08670921658523>, <-37.65596279075219, 0.1, 28.08670921658523>, <-37.954661454268276, 0.0, 28.1257401205336>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.52639444176237, 0.0, 29.078279709762622>, <-37.65596279075219, 0.0, 28.08670921658523>, <-37.227695778246286, 0.1, 29.039248805814253>}
  triangle { <-37.65596279075219, 0.0, 28.08670921658523>, <-37.35726412723611, 0.1, 28.04767831263686>, <-37.227695778246286, 0.1, 29.039248805814253>}
  triangle { <-37.227695778246286, 0.1, 29.039248805814253>, <-37.35726412723611, 0.1, 28.04767831263686>, <-37.227695778246286, 0.0, 29.039248805814253>}
  triangle { <-37.35726412723611, 0.1, 28.04767831263686>, <-37.35726412723611, 0.0, 28.04767831263686>, <-37.227695778246286, 0.0, 29.039248805814253>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.52639444176237, 0.0, 29.078279709762622>, <-37.227695778246286, 0.1, 29.039248805814253>, <-37.227695778246286, 0.0, 29.039248805814253>}
  triangle { <-37.35726412723611, 0.0, 28.04767831263686>, <-37.35726412723611, 0.1, 28.04767831263686>, <-37.65596279075219, 0.0, 28.08670921658523>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.227695778246286, 0.0, 29.039248805814253>, <-37.35726412723611, 0.0, 28.04767831263686>, <-36.9289971147302, 0.1, 29.000217901865884>}
  triangle { <-37.35726412723611, 0.0, 28.04767831263686>, <-37.05856546372002, 0.1, 28.008647408688493>, <-36.9289971147302, 0.1, 29.000217901865884>}
  triangle { <-36.9289971147302, 0.1, 29.000217901865884>, <-37.05856546372002, 0.1, 28.008647408688493>, <-36.9289971147302, 0.0, 29.000217901865884>}
  triangle { <-37.05856546372002, 0.1, 28.008647408688493>, <-37.05856546372002, 0.0, 28.008647408688493>, <-36.9289971147302, 0.0, 29.000217901865884>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-37.227695778246286, 0.0, 29.039248805814253>, <-36.9289971147302, 0.1, 29.000217901865884>, <-36.9289971147302, 0.0, 29.000217901865884>}
  triangle { <-37.05856546372002, 0.0, 28.008647408688493>, <-37.05856546372002, 0.1, 28.008647408688493>, <-37.35726412723611, 0.0, 28.04767831263686>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.9289971147302, 0.0, 29.000217901865884>, <-37.05856546372002, 0.0, 28.008647408688493>, <-36.63029845121412, 0.1, 28.961186997917515>}
  triangle { <-37.05856546372002, 0.0, 28.008647408688493>, <-36.75986680020394, 0.1, 27.969616504740124>, <-36.63029845121412, 0.1, 28.961186997917515>}
  triangle { <-36.63029845121412, 0.1, 28.961186997917515>, <-36.75986680020394, 0.1, 27.969616504740124>, <-36.63029845121412, 0.0, 28.961186997917515>}
  triangle { <-36.75986680020394, 0.1, 27.969616504740124>, <-36.75986680020394, 0.0, 27.969616504740124>, <-36.63029845121412, 0.0, 28.961186997917515>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.9289971147302, 0.0, 29.000217901865884>, <-36.63029845121412, 0.1, 28.961186997917515>, <-36.63029845121412, 0.0, 28.961186997917515>}
  triangle { <-36.75986680020394, 0.0, 27.969616504740124>, <-36.75986680020394, 0.1, 27.969616504740124>, <-37.05856546372002, 0.0, 28.008647408688493>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.63029845121412, 0.0, 28.961186997917515>, <-36.75986680020394, 0.0, 27.969616504740124>, <-36.33159978769803, 0.1, 28.922156093969146>}
  triangle { <-36.75986680020394, 0.0, 27.969616504740124>, <-36.46116813668785, 0.1, 27.930585600791755>, <-36.33159978769803, 0.1, 28.922156093969146>}
  triangle { <-36.33159978769803, 0.1, 28.922156093969146>, <-36.46116813668785, 0.1, 27.930585600791755>, <-36.33159978769803, 0.0, 28.922156093969146>}
  triangle { <-36.46116813668785, 0.1, 27.930585600791755>, <-36.46116813668785, 0.0, 27.930585600791755>, <-36.33159978769803, 0.0, 28.922156093969146>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.63029845121412, 0.0, 28.961186997917515>, <-36.33159978769803, 0.1, 28.922156093969146>, <-36.33159978769803, 0.0, 28.922156093969146>}
  triangle { <-36.46116813668785, 0.0, 27.930585600791755>, <-36.46116813668785, 0.1, 27.930585600791755>, <-36.75986680020394, 0.0, 27.969616504740124>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.33159978769803, 0.0, 28.922156093969146>, <-36.46116813668785, 0.0, 27.930585600791755>, <-36.03290112418195, 0.1, 28.883125190020777>}
  triangle { <-36.46116813668785, 0.0, 27.930585600791755>, <-36.16246947317177, 0.1, 27.891554696843386>, <-36.03290112418195, 0.1, 28.883125190020777>}
  triangle { <-36.03290112418195, 0.1, 28.883125190020777>, <-36.16246947317177, 0.1, 27.891554696843386>, <-36.03290112418195, 0.0, 28.883125190020777>}
  triangle { <-36.16246947317177, 0.1, 27.891554696843386>, <-36.16246947317177, 0.0, 27.891554696843386>, <-36.03290112418195, 0.0, 28.883125190020777>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.33159978769803, 0.0, 28.922156093969146>, <-36.03290112418195, 0.1, 28.883125190020777>, <-36.03290112418195, 0.0, 28.883125190020777>}
  triangle { <-36.16246947317177, 0.0, 27.891554696843386>, <-36.16246947317177, 0.1, 27.891554696843386>, <-36.46116813668785, 0.0, 27.930585600791755>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.03290112418195, 0.0, 28.883125190020777>, <-36.16246947317177, 0.0, 27.891554696843386>, <-35.73420246066586, 0.1, 28.84409428607241>}
  triangle { <-36.16246947317177, 0.0, 27.891554696843386>, <-35.86377080965568, 0.1, 27.852523792895017>, <-35.73420246066586, 0.1, 28.84409428607241>}
  triangle { <-35.73420246066586, 0.1, 28.84409428607241>, <-35.86377080965568, 0.1, 27.852523792895017>, <-35.73420246066586, 0.0, 28.84409428607241>}
  triangle { <-35.86377080965568, 0.1, 27.852523792895017>, <-35.86377080965568, 0.0, 27.852523792895017>, <-35.73420246066586, 0.0, 28.84409428607241>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-36.03290112418195, 0.0, 28.883125190020777>, <-35.73420246066586, 0.1, 28.84409428607241>, <-35.73420246066586, 0.0, 28.84409428607241>}
  triangle { <-35.86377080965568, 0.0, 27.852523792895017>, <-35.86377080965568, 0.1, 27.852523792895017>, <-36.16246947317177, 0.0, 27.891554696843386>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.73420246066586, 0.0, 28.84409428607241>, <-35.86377080965568, 0.0, 27.852523792895017>, <-35.43550379714978, 0.1, 28.80506338212404>}
  triangle { <-35.86377080965568, 0.0, 27.852523792895017>, <-35.5650721461396, 0.1, 27.813492888946648>, <-35.43550379714978, 0.1, 28.80506338212404>}
  triangle { <-35.43550379714978, 0.1, 28.80506338212404>, <-35.5650721461396, 0.1, 27.813492888946648>, <-35.43550379714978, 0.0, 28.80506338212404>}
  triangle { <-35.5650721461396, 0.1, 27.813492888946648>, <-35.5650721461396, 0.0, 27.813492888946648>, <-35.43550379714978, 0.0, 28.80506338212404>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.73420246066586, 0.0, 28.84409428607241>, <-35.43550379714978, 0.1, 28.80506338212404>, <-35.43550379714978, 0.0, 28.80506338212404>}
  triangle { <-35.5650721461396, 0.0, 27.813492888946648>, <-35.5650721461396, 0.1, 27.813492888946648>, <-35.86377080965568, 0.0, 27.852523792895017>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.43550379714978, 0.0, 28.80506338212404>, <-35.5650721461396, 0.0, 27.813492888946648>, <-35.13680513363369, 0.1, 28.76603247817567>}
  triangle { <-35.5650721461396, 0.0, 27.813492888946648>, <-35.266373482623514, 0.1, 27.77446198499828>, <-35.13680513363369, 0.1, 28.76603247817567>}
  triangle { <-35.13680513363369, 0.1, 28.76603247817567>, <-35.266373482623514, 0.1, 27.77446198499828>, <-35.13680513363369, 0.0, 28.76603247817567>}
  triangle { <-35.266373482623514, 0.1, 27.77446198499828>, <-35.266373482623514, 0.0, 27.77446198499828>, <-35.13680513363369, 0.0, 28.76603247817567>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.43550379714978, 0.0, 28.80506338212404>, <-35.13680513363369, 0.1, 28.76603247817567>, <-35.13680513363369, 0.0, 28.76603247817567>}
  triangle { <-35.266373482623514, 0.0, 27.77446198499828>, <-35.266373482623514, 0.1, 27.77446198499828>, <-35.5650721461396, 0.0, 27.813492888946648>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.13680513363369, 0.0, 28.76603247817567>, <-35.266373482623514, 0.0, 27.77446198499828>, <-34.83810647011761, 0.1, 28.7270015742273>}
  triangle { <-35.266373482623514, 0.0, 27.77446198499828>, <-34.96767481910743, 0.1, 27.73543108104991>, <-34.83810647011761, 0.1, 28.7270015742273>}
  triangle { <-34.83810647011761, 0.1, 28.7270015742273>, <-34.96767481910743, 0.1, 27.73543108104991>, <-34.83810647011761, 0.0, 28.7270015742273>}
  triangle { <-34.96767481910743, 0.1, 27.73543108104991>, <-34.96767481910743, 0.0, 27.73543108104991>, <-34.83810647011761, 0.0, 28.7270015742273>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-35.13680513363369, 0.0, 28.76603247817567>, <-34.83810647011761, 0.1, 28.7270015742273>, <-34.83810647011761, 0.0, 28.7270015742273>}
  triangle { <-34.96767481910743, 0.0, 27.73543108104991>, <-34.96767481910743, 0.1, 27.73543108104991>, <-35.266373482623514, 0.0, 27.77446198499828>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.83810647011761, 0.0, 28.7270015742273>, <-34.96767481910743, 0.0, 27.73543108104991>, <-34.539407806601524, 0.1, 28.687970670278933>}
  triangle { <-34.96767481910743, 0.0, 27.73543108104991>, <-34.668976155591345, 0.1, 27.69640017710154>, <-34.539407806601524, 0.1, 28.687970670278933>}
  triangle { <-34.539407806601524, 0.1, 28.687970670278933>, <-34.668976155591345, 0.1, 27.69640017710154>, <-34.539407806601524, 0.0, 28.687970670278933>}
  triangle { <-34.668976155591345, 0.1, 27.69640017710154>, <-34.668976155591345, 0.0, 27.69640017710154>, <-34.539407806601524, 0.0, 28.687970670278933>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.83810647011761, 0.0, 28.7270015742273>, <-34.539407806601524, 0.1, 28.687970670278933>, <-34.539407806601524, 0.0, 28.687970670278933>}
  triangle { <-34.668976155591345, 0.0, 27.69640017710154>, <-34.668976155591345, 0.1, 27.69640017710154>, <-34.96767481910743, 0.0, 27.73543108104991>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.539407806601524, 0.0, 28.687970670278933>, <-34.668976155591345, 0.0, 27.69640017710154>, <-34.24070914308544, 0.1, 28.648939766330564>}
  triangle { <-34.668976155591345, 0.0, 27.69640017710154>, <-34.37027749207526, 0.1, 27.657369273153172>, <-34.24070914308544, 0.1, 28.648939766330564>}
  triangle { <-34.24070914308544, 0.1, 28.648939766330564>, <-34.37027749207526, 0.1, 27.657369273153172>, <-34.24070914308544, 0.0, 28.648939766330564>}
  triangle { <-34.37027749207526, 0.1, 27.657369273153172>, <-34.37027749207526, 0.0, 27.657369273153172>, <-34.24070914308544, 0.0, 28.648939766330564>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.539407806601524, 0.0, 28.687970670278933>, <-34.24070914308544, 0.1, 28.648939766330564>, <-34.24070914308544, 0.0, 28.648939766330564>}
  triangle { <-34.37027749207526, 0.0, 27.657369273153172>, <-34.37027749207526, 0.1, 27.657369273153172>, <-34.668976155591345, 0.0, 27.69640017710154>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.24070914308544, 0.0, 28.648939766330564>, <-34.37027749207526, 0.0, 27.657369273153172>, <-33.942010479569355, 0.1, 28.609908862382195>}
  triangle { <-34.37027749207526, 0.0, 27.657369273153172>, <-34.071578828559176, 0.1, 27.618338369204803>, <-33.942010479569355, 0.1, 28.609908862382195>}
  triangle { <-33.942010479569355, 0.1, 28.609908862382195>, <-34.071578828559176, 0.1, 27.618338369204803>, <-33.942010479569355, 0.0, 28.609908862382195>}
  triangle { <-34.071578828559176, 0.1, 27.618338369204803>, <-34.071578828559176, 0.0, 27.618338369204803>, <-33.942010479569355, 0.0, 28.609908862382195>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-34.24070914308544, 0.0, 28.648939766330564>, <-33.942010479569355, 0.1, 28.609908862382195>, <-33.942010479569355, 0.0, 28.609908862382195>}
  triangle { <-34.071578828559176, 0.0, 27.618338369204803>, <-34.071578828559176, 0.1, 27.618338369204803>, <-34.37027749207526, 0.0, 27.657369273153172>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.942010479569355, 0.0, 28.609908862382195>, <-34.071578828559176, 0.0, 27.618338369204803>, <-33.64331181605327, 0.1, 28.570877958433826>}
  triangle { <-34.071578828559176, 0.0, 27.618338369204803>, <-33.77288016504309, 0.1, 27.579307465256434>, <-33.64331181605327, 0.1, 28.570877958433826>}
  triangle { <-33.64331181605327, 0.1, 28.570877958433826>, <-33.77288016504309, 0.1, 27.579307465256434>, <-33.64331181605327, 0.0, 28.570877958433826>}
  triangle { <-33.77288016504309, 0.1, 27.579307465256434>, <-33.77288016504309, 0.0, 27.579307465256434>, <-33.64331181605327, 0.0, 28.570877958433826>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.942010479569355, 0.0, 28.609908862382195>, <-33.64331181605327, 0.1, 28.570877958433826>, <-33.64331181605327, 0.0, 28.570877958433826>}
  triangle { <-33.77288016504309, 0.0, 27.579307465256434>, <-33.77288016504309, 0.1, 27.579307465256434>, <-34.071578828559176, 0.0, 27.618338369204803>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.64331181605327, 0.0, 28.570877958433826>, <-33.77288016504309, 0.0, 27.579307465256434>, <-33.344613152537185, 0.1, 28.531847054485457>}
  triangle { <-33.77288016504309, 0.0, 27.579307465256434>, <-33.474181501527006, 0.1, 27.540276561308065>, <-33.344613152537185, 0.1, 28.531847054485457>}
  triangle { <-33.344613152537185, 0.1, 28.531847054485457>, <-33.474181501527006, 0.1, 27.540276561308065>, <-33.344613152537185, 0.0, 28.531847054485457>}
  triangle { <-33.474181501527006, 0.1, 27.540276561308065>, <-33.474181501527006, 0.0, 27.540276561308065>, <-33.344613152537185, 0.0, 28.531847054485457>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.64331181605327, 0.0, 28.570877958433826>, <-33.344613152537185, 0.1, 28.531847054485457>, <-33.344613152537185, 0.0, 28.531847054485457>}
  triangle { <-33.474181501527006, 0.0, 27.540276561308065>, <-33.474181501527006, 0.1, 27.540276561308065>, <-33.77288016504309, 0.0, 27.579307465256434>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.344613152537185, 0.0, 28.531847054485457>, <-33.474181501527006, 0.0, 27.540276561308065>, <-33.0459144890211, 0.1, 28.492816150537088>}
  triangle { <-33.474181501527006, 0.0, 27.540276561308065>, <-33.17548283801092, 0.1, 27.501245657359696>, <-33.0459144890211, 0.1, 28.492816150537088>}
  triangle { <-33.0459144890211, 0.1, 28.492816150537088>, <-33.17548283801092, 0.1, 27.501245657359696>, <-33.0459144890211, 0.0, 28.492816150537088>}
  triangle { <-33.17548283801092, 0.1, 27.501245657359696>, <-33.17548283801092, 0.0, 27.501245657359696>, <-33.0459144890211, 0.0, 28.492816150537088>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.344613152537185, 0.0, 28.531847054485457>, <-33.0459144890211, 0.1, 28.492816150537088>, <-33.0459144890211, 0.0, 28.492816150537088>}
  triangle { <-33.17548283801092, 0.0, 27.501245657359696>, <-33.17548283801092, 0.1, 27.501245657359696>, <-33.474181501527006, 0.0, 27.540276561308065>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.0459144890211, 0.0, 28.492816150537088>, <-33.17548283801092, 0.0, 27.501245657359696>, <-32.747215825505016, 0.1, 28.45378524658872>}
  triangle { <-33.17548283801092, 0.0, 27.501245657359696>, <-32.87678417449484, 0.1, 27.462214753411327>, <-32.747215825505016, 0.1, 28.45378524658872>}
  triangle { <-32.747215825505016, 0.1, 28.45378524658872>, <-32.87678417449484, 0.1, 27.462214753411327>, <-32.747215825505016, 0.0, 28.45378524658872>}
  triangle { <-32.87678417449484, 0.1, 27.462214753411327>, <-32.87678417449484, 0.0, 27.462214753411327>, <-32.747215825505016, 0.0, 28.45378524658872>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-33.0459144890211, 0.0, 28.492816150537088>, <-32.747215825505016, 0.1, 28.45378524658872>, <-32.747215825505016, 0.0, 28.45378524658872>}
  triangle { <-32.87678417449484, 0.0, 27.462214753411327>, <-32.87678417449484, 0.1, 27.462214753411327>, <-33.17548283801092, 0.0, 27.501245657359696>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-50.62573213650974, 0.0, 26.029294053188423>, <-50.70826786349026, 0.0, 25.032705946811575>, <-50.53427555706272, 0.0, 26.021719775286137>}
  triangle { <-50.70826786349026, 0.0, 25.032705946811575>, <-50.616811284043244, 0.0, 25.02513166890929>, <-50.53427555706272, 0.0, 26.021719775286137>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-49.43797185179954, 0.0, 24.694600018491677>, <-50.43222233520026, 0.0, 24.801679317412727>, <-51.152777664799736, 0.0, 8.772320682587267>}
  triangle { <-50.43222233520026, 0.0, 24.801679317412727>, <-52.147028148200455, 0.0, 8.879399981508321>, <-51.152777664799736, 0.0, 8.772320682587267>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-55.7218665744455, 0.0, 61.48502679546505>, <-56.71570758260076, 0.0, 61.59584218477965>, <-56.7352641090847, 0.0, 52.39643329128388>}
  triangle { <-56.71570758260076, 0.0, 61.59584218477965>, <-57.72910511723996, 0.0, 52.50724868059847>, <-56.7352641090847, 0.0, 52.39643329128388>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-56.96653670859694, 0.0, 50.405253427684286>, <-57.95931929969084, 0.0, 50.52518143450877>, <-57.76466701275781, 0.0, 44.96897280100885>}
  triangle { <-57.95931929969084, 0.0, 50.52518143450877>, <-58.395332987242185, 0.0, 45.745027198991146>, <-57.76466701275781, 0.0, 44.96897280100885>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-71.43105376300217, 0.0, 46.9974325874085>, <-72.20694623699784, 0.0, 46.36656741259151>, <-66.62841609288583, 0.0, 46.627966414307785>}
  triangle { <-72.20694623699784, 0.0, 46.36656741259151>, <-66.73509488950143, 0.0, 45.633672879001104>, <-66.62841609288583, 0.0, 46.627966414307785>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-71.7656606016922, 0.0, 47.17914676765334>, <-71.8723393983078, 0.0, 46.18485323234666>, <-71.46346974823301, 0.1, 47.14672439392714>}
  triangle { <-71.8723393983078, 0.0, 46.18485323234666>, <-71.5701485448486, 0.1, 46.152430858620455>, <-71.46346974823301, 0.1, 47.14672439392714>}
  triangle { <-71.46346974823301, 0.1, 47.14672439392714>, <-71.5701485448486, 0.1, 46.152430858620455>, <-71.46346974823301, 0.0, 47.14672439392714>}
  triangle { <-71.5701485448486, 0.1, 46.152430858620455>, <-71.5701485448486, 0.0, 46.152430858620455>, <-71.46346974823301, 0.0, 47.14672439392714>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.7656606016922, 0.0, 47.17914676765334>, <-71.46346974823301, 0.1, 47.14672439392714>, <-71.46346974823301, 0.0, 47.14672439392714>}
  triangle { <-71.5701485448486, 0.0, 46.152430858620455>, <-71.5701485448486, 0.1, 46.152430858620455>, <-71.8723393983078, 0.0, 46.18485323234666>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.46346974823301, 0.0, 47.14672439392714>, <-71.5701485448486, 0.0, 46.152430858620455>, <-71.16127889477382, 0.1, 47.11430202020093>}
  triangle { <-71.5701485448486, 0.0, 46.152430858620455>, <-71.26795769138941, 0.1, 46.12000848489425>, <-71.16127889477382, 0.1, 47.11430202020093>}
  triangle { <-71.16127889477382, 0.1, 47.11430202020093>, <-71.26795769138941, 0.1, 46.12000848489425>, <-71.16127889477382, 0.0, 47.11430202020093>}
  triangle { <-71.26795769138941, 0.1, 46.12000848489425>, <-71.26795769138941, 0.0, 46.12000848489425>, <-71.16127889477382, 0.0, 47.11430202020093>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.46346974823301, 0.0, 47.14672439392714>, <-71.16127889477382, 0.1, 47.11430202020093>, <-71.16127889477382, 0.0, 47.11430202020093>}
  triangle { <-71.26795769138941, 0.0, 46.12000848489425>, <-71.26795769138941, 0.1, 46.12000848489425>, <-71.5701485448486, 0.0, 46.152430858620455>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.16127889477382, 0.0, 47.11430202020093>, <-71.26795769138941, 0.0, 46.12000848489425>, <-70.85908804131462, 0.1, 47.081879646474725>}
  triangle { <-71.26795769138941, 0.0, 46.12000848489425>, <-70.96576683793022, 0.1, 46.087586111168044>, <-70.85908804131462, 0.1, 47.081879646474725>}
  triangle { <-70.85908804131462, 0.1, 47.081879646474725>, <-70.96576683793022, 0.1, 46.087586111168044>, <-70.85908804131462, 0.0, 47.081879646474725>}
  triangle { <-70.96576683793022, 0.1, 46.087586111168044>, <-70.96576683793022, 0.0, 46.087586111168044>, <-70.85908804131462, 0.0, 47.081879646474725>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.16127889477382, 0.0, 47.11430202020093>, <-70.85908804131462, 0.1, 47.081879646474725>, <-70.85908804131462, 0.0, 47.081879646474725>}
  triangle { <-70.96576683793022, 0.0, 46.087586111168044>, <-70.96576683793022, 0.1, 46.087586111168044>, <-71.26795769138941, 0.0, 46.12000848489425>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.85908804131462, 0.0, 47.081879646474725>, <-70.96576683793022, 0.0, 46.087586111168044>, <-70.55689718785543, 0.1, 47.04945727274852>}
  triangle { <-70.96576683793022, 0.0, 46.087586111168044>, <-70.66357598447102, 0.1, 46.05516373744184>, <-70.55689718785543, 0.1, 47.04945727274852>}
  triangle { <-70.55689718785543, 0.1, 47.04945727274852>, <-70.66357598447102, 0.1, 46.05516373744184>, <-70.55689718785543, 0.0, 47.04945727274852>}
  triangle { <-70.66357598447102, 0.1, 46.05516373744184>, <-70.66357598447102, 0.0, 46.05516373744184>, <-70.55689718785543, 0.0, 47.04945727274852>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.85908804131462, 0.0, 47.081879646474725>, <-70.55689718785543, 0.1, 47.04945727274852>, <-70.55689718785543, 0.0, 47.04945727274852>}
  triangle { <-70.66357598447102, 0.0, 46.05516373744184>, <-70.66357598447102, 0.1, 46.05516373744184>, <-70.96576683793022, 0.0, 46.087586111168044>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.55689718785543, 0.0, 47.04945727274852>, <-70.66357598447102, 0.0, 46.05516373744184>, <-70.25470633439623, 0.1, 47.01703489902231>}
  triangle { <-70.66357598447102, 0.0, 46.05516373744184>, <-70.36138513101183, 0.1, 46.02274136371563>, <-70.25470633439623, 0.1, 47.01703489902231>}
  triangle { <-70.25470633439623, 0.1, 47.01703489902231>, <-70.36138513101183, 0.1, 46.02274136371563>, <-70.25470633439623, 0.0, 47.01703489902231>}
  triangle { <-70.36138513101183, 0.1, 46.02274136371563>, <-70.36138513101183, 0.0, 46.02274136371563>, <-70.25470633439623, 0.0, 47.01703489902231>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.55689718785543, 0.0, 47.04945727274852>, <-70.25470633439623, 0.1, 47.01703489902231>, <-70.25470633439623, 0.0, 47.01703489902231>}
  triangle { <-70.36138513101183, 0.0, 46.02274136371563>, <-70.36138513101183, 0.1, 46.02274136371563>, <-70.66357598447102, 0.0, 46.05516373744184>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.25470633439623, 0.0, 47.01703489902231>, <-70.36138513101183, 0.0, 46.02274136371563>, <-69.95251548093704, 0.1, 46.98461252529611>}
  triangle { <-70.36138513101183, 0.0, 46.02274136371563>, <-70.05919427755263, 0.1, 45.990318989989426>, <-69.95251548093704, 0.1, 46.98461252529611>}
  triangle { <-69.95251548093704, 0.1, 46.98461252529611>, <-70.05919427755263, 0.1, 45.990318989989426>, <-69.95251548093704, 0.0, 46.98461252529611>}
  triangle { <-70.05919427755263, 0.1, 45.990318989989426>, <-70.05919427755263, 0.0, 45.990318989989426>, <-69.95251548093704, 0.0, 46.98461252529611>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.25470633439623, 0.0, 47.01703489902231>, <-69.95251548093704, 0.1, 46.98461252529611>, <-69.95251548093704, 0.0, 46.98461252529611>}
  triangle { <-70.05919427755263, 0.0, 45.990318989989426>, <-70.05919427755263, 0.1, 45.990318989989426>, <-70.36138513101183, 0.0, 46.02274136371563>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.95251548093704, 0.0, 46.98461252529611>, <-70.05919427755263, 0.0, 45.990318989989426>, <-69.65032462747784, 0.1, 46.9521901515699>}
  triangle { <-70.05919427755263, 0.0, 45.990318989989426>, <-69.75700342409344, 0.1, 45.95789661626322>, <-69.65032462747784, 0.1, 46.9521901515699>}
  triangle { <-69.65032462747784, 0.1, 46.9521901515699>, <-69.75700342409344, 0.1, 45.95789661626322>, <-69.65032462747784, 0.0, 46.9521901515699>}
  triangle { <-69.75700342409344, 0.1, 45.95789661626322>, <-69.75700342409344, 0.0, 45.95789661626322>, <-69.65032462747784, 0.0, 46.9521901515699>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.95251548093704, 0.0, 46.98461252529611>, <-69.65032462747784, 0.1, 46.9521901515699>, <-69.65032462747784, 0.0, 46.9521901515699>}
  triangle { <-69.75700342409344, 0.0, 45.95789661626322>, <-69.75700342409344, 0.1, 45.95789661626322>, <-70.05919427755263, 0.0, 45.990318989989426>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.65032462747784, 0.0, 46.9521901515699>, <-69.75700342409344, 0.0, 45.95789661626322>, <-69.34813377401865, 0.1, 46.919767777843695>}
  triangle { <-69.75700342409344, 0.0, 45.95789661626322>, <-69.45481257063425, 0.1, 45.925474242537014>, <-69.34813377401865, 0.1, 46.919767777843695>}
  triangle { <-69.34813377401865, 0.1, 46.919767777843695>, <-69.45481257063425, 0.1, 45.925474242537014>, <-69.34813377401865, 0.0, 46.919767777843695>}
  triangle { <-69.45481257063425, 0.1, 45.925474242537014>, <-69.45481257063425, 0.0, 45.925474242537014>, <-69.34813377401865, 0.0, 46.919767777843695>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.65032462747784, 0.0, 46.9521901515699>, <-69.34813377401865, 0.1, 46.919767777843695>, <-69.34813377401865, 0.0, 46.919767777843695>}
  triangle { <-69.45481257063425, 0.0, 45.925474242537014>, <-69.45481257063425, 0.1, 45.925474242537014>, <-69.75700342409344, 0.0, 45.95789661626322>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.34813377401865, 0.0, 46.919767777843695>, <-69.45481257063425, 0.0, 45.925474242537014>, <-69.04594292055945, 0.1, 46.88734540411749>}
  triangle { <-69.45481257063425, 0.0, 45.925474242537014>, <-69.15262171717505, 0.1, 45.89305186881081>, <-69.04594292055945, 0.1, 46.88734540411749>}
  triangle { <-69.04594292055945, 0.1, 46.88734540411749>, <-69.15262171717505, 0.1, 45.89305186881081>, <-69.04594292055945, 0.0, 46.88734540411749>}
  triangle { <-69.15262171717505, 0.1, 45.89305186881081>, <-69.15262171717505, 0.0, 45.89305186881081>, <-69.04594292055945, 0.0, 46.88734540411749>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.34813377401865, 0.0, 46.919767777843695>, <-69.04594292055945, 0.1, 46.88734540411749>, <-69.04594292055945, 0.0, 46.88734540411749>}
  triangle { <-69.15262171717505, 0.0, 45.89305186881081>, <-69.15262171717505, 0.1, 45.89305186881081>, <-69.45481257063425, 0.0, 45.925474242537014>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.04594292055945, 0.0, 46.88734540411749>, <-69.15262171717505, 0.0, 45.89305186881081>, <-68.74375206710026, 0.1, 46.854923030391284>}
  triangle { <-69.15262171717505, 0.0, 45.89305186881081>, <-68.85043086371586, 0.1, 45.8606294950846>, <-68.74375206710026, 0.1, 46.854923030391284>}
  triangle { <-68.74375206710026, 0.1, 46.854923030391284>, <-68.85043086371586, 0.1, 45.8606294950846>, <-68.74375206710026, 0.0, 46.854923030391284>}
  triangle { <-68.85043086371586, 0.1, 45.8606294950846>, <-68.85043086371586, 0.0, 45.8606294950846>, <-68.74375206710026, 0.0, 46.854923030391284>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.04594292055945, 0.0, 46.88734540411749>, <-68.74375206710026, 0.1, 46.854923030391284>, <-68.74375206710026, 0.0, 46.854923030391284>}
  triangle { <-68.85043086371586, 0.0, 45.8606294950846>, <-68.85043086371586, 0.1, 45.8606294950846>, <-69.15262171717505, 0.0, 45.89305186881081>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.74375206710026, 0.0, 46.854923030391284>, <-68.85043086371586, 0.0, 45.8606294950846>, <-68.44156121364107, 0.1, 46.82250065666508>}
  triangle { <-68.85043086371586, 0.0, 45.8606294950846>, <-68.54824001025666, 0.1, 45.828207121358396>, <-68.44156121364107, 0.1, 46.82250065666508>}
  triangle { <-68.44156121364107, 0.1, 46.82250065666508>, <-68.54824001025666, 0.1, 45.828207121358396>, <-68.44156121364107, 0.0, 46.82250065666508>}
  triangle { <-68.54824001025666, 0.1, 45.828207121358396>, <-68.54824001025666, 0.0, 45.828207121358396>, <-68.44156121364107, 0.0, 46.82250065666508>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.74375206710026, 0.0, 46.854923030391284>, <-68.44156121364107, 0.1, 46.82250065666508>, <-68.44156121364107, 0.0, 46.82250065666508>}
  triangle { <-68.54824001025666, 0.0, 45.828207121358396>, <-68.54824001025666, 0.1, 45.828207121358396>, <-68.85043086371586, 0.0, 45.8606294950846>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.44156121364107, 0.0, 46.82250065666508>, <-68.54824001025666, 0.0, 45.828207121358396>, <-68.13937036018187, 0.1, 46.79007828293887>}
  triangle { <-68.54824001025666, 0.0, 45.828207121358396>, <-68.24604915679747, 0.1, 45.79578474763219>, <-68.13937036018187, 0.1, 46.79007828293887>}
  triangle { <-68.13937036018187, 0.1, 46.79007828293887>, <-68.24604915679747, 0.1, 45.79578474763219>, <-68.13937036018187, 0.0, 46.79007828293887>}
  triangle { <-68.24604915679747, 0.1, 45.79578474763219>, <-68.24604915679747, 0.0, 45.79578474763219>, <-68.13937036018187, 0.0, 46.79007828293887>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.44156121364107, 0.0, 46.82250065666508>, <-68.13937036018187, 0.1, 46.79007828293887>, <-68.13937036018187, 0.0, 46.79007828293887>}
  triangle { <-68.24604915679747, 0.0, 45.79578474763219>, <-68.24604915679747, 0.1, 45.79578474763219>, <-68.54824001025666, 0.0, 45.828207121358396>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.13937036018187, 0.0, 46.79007828293887>, <-68.24604915679747, 0.0, 45.79578474763219>, <-67.83717950672268, 0.1, 46.757655909212666>}
  triangle { <-68.24604915679747, 0.0, 45.79578474763219>, <-67.94385830333827, 0.1, 45.763362373905984>, <-67.83717950672268, 0.1, 46.757655909212666>}
  triangle { <-67.83717950672268, 0.1, 46.757655909212666>, <-67.94385830333827, 0.1, 45.763362373905984>, <-67.83717950672268, 0.0, 46.757655909212666>}
  triangle { <-67.94385830333827, 0.1, 45.763362373905984>, <-67.94385830333827, 0.0, 45.763362373905984>, <-67.83717950672268, 0.0, 46.757655909212666>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.13937036018187, 0.0, 46.79007828293887>, <-67.83717950672268, 0.1, 46.757655909212666>, <-67.83717950672268, 0.0, 46.757655909212666>}
  triangle { <-67.94385830333827, 0.0, 45.763362373905984>, <-67.94385830333827, 0.1, 45.763362373905984>, <-68.24604915679747, 0.0, 45.79578474763219>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.83717950672268, 0.0, 46.757655909212666>, <-67.94385830333827, 0.0, 45.763362373905984>, <-67.53498865326348, 0.1, 46.72523353548646>}
  triangle { <-67.94385830333827, 0.0, 45.763362373905984>, <-67.64166744987908, 0.1, 45.73094000017978>, <-67.53498865326348, 0.1, 46.72523353548646>}
  triangle { <-67.53498865326348, 0.1, 46.72523353548646>, <-67.64166744987908, 0.1, 45.73094000017978>, <-67.53498865326348, 0.0, 46.72523353548646>}
  triangle { <-67.64166744987908, 0.1, 45.73094000017978>, <-67.64166744987908, 0.0, 45.73094000017978>, <-67.53498865326348, 0.0, 46.72523353548646>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.83717950672268, 0.0, 46.757655909212666>, <-67.53498865326348, 0.1, 46.72523353548646>, <-67.53498865326348, 0.0, 46.72523353548646>}
  triangle { <-67.64166744987908, 0.0, 45.73094000017978>, <-67.64166744987908, 0.1, 45.73094000017978>, <-67.94385830333827, 0.0, 45.763362373905984>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.53498865326348, 0.0, 46.72523353548646>, <-67.64166744987908, 0.0, 45.73094000017978>, <-67.23279779980429, 0.1, 46.692811161760254>}
  triangle { <-67.64166744987908, 0.0, 45.73094000017978>, <-67.33947659641989, 0.1, 45.69851762645357>, <-67.23279779980429, 0.1, 46.692811161760254>}
  triangle { <-67.23279779980429, 0.1, 46.692811161760254>, <-67.33947659641989, 0.1, 45.69851762645357>, <-67.23279779980429, 0.0, 46.692811161760254>}
  triangle { <-67.33947659641989, 0.1, 45.69851762645357>, <-67.33947659641989, 0.0, 45.69851762645357>, <-67.23279779980429, 0.0, 46.692811161760254>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.53498865326348, 0.0, 46.72523353548646>, <-67.23279779980429, 0.1, 46.692811161760254>, <-67.23279779980429, 0.0, 46.692811161760254>}
  triangle { <-67.33947659641989, 0.0, 45.69851762645357>, <-67.33947659641989, 0.1, 45.69851762645357>, <-67.64166744987908, 0.0, 45.73094000017978>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.23279779980429, 0.0, 46.692811161760254>, <-67.33947659641989, 0.0, 45.69851762645357>, <-66.9306069463451, 0.1, 46.66038878803405>}
  triangle { <-67.33947659641989, 0.0, 45.69851762645357>, <-67.03728574296069, 0.1, 45.66609525272737>, <-66.9306069463451, 0.1, 46.66038878803405>}
  triangle { <-66.9306069463451, 0.1, 46.66038878803405>, <-67.03728574296069, 0.1, 45.66609525272737>, <-66.9306069463451, 0.0, 46.66038878803405>}
  triangle { <-67.03728574296069, 0.1, 45.66609525272737>, <-67.03728574296069, 0.0, 45.66609525272737>, <-66.9306069463451, 0.0, 46.66038878803405>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.23279779980429, 0.0, 46.692811161760254>, <-66.9306069463451, 0.1, 46.66038878803405>, <-66.9306069463451, 0.0, 46.66038878803405>}
  triangle { <-67.03728574296069, 0.0, 45.66609525272737>, <-67.03728574296069, 0.1, 45.66609525272737>, <-67.33947659641989, 0.0, 45.69851762645357>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-66.9306069463451, 0.0, 46.66038878803405>, <-67.03728574296069, 0.0, 45.66609525272737>, <-66.6284160928859, 0.1, 46.62796641430784>}
  triangle { <-67.03728574296069, 0.0, 45.66609525272737>, <-66.7350948895015, 0.1, 45.63367287900116>, <-66.6284160928859, 0.1, 46.62796641430784>}
  triangle { <-66.6284160928859, 0.1, 46.62796641430784>, <-66.7350948895015, 0.1, 45.63367287900116>, <-66.6284160928859, 0.0, 46.62796641430784>}
  triangle { <-66.7350948895015, 0.1, 45.63367287900116>, <-66.7350948895015, 0.0, 45.63367287900116>, <-66.6284160928859, 0.0, 46.62796641430784>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-66.9306069463451, 0.0, 46.66038878803405>, <-66.6284160928859, 0.1, 46.62796641430784>, <-66.6284160928859, 0.0, 46.62796641430784>}
  triangle { <-66.7350948895015, 0.0, 45.63367287900116>, <-66.7350948895015, 0.1, 45.63367287900116>, <-67.03728574296069, 0.0, 45.66609525272737>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-63.4141274386966, 0.0, 46.317406730988864>, <-63.49977919193639, 0.0, 45.3210815947171>, <-58.395332987242185, 0.0, 45.745027198991146>}
  triangle { <-63.49977919193639, 0.0, 45.3210815947171>, <-57.76466701275781, 0.0, 44.96897280100885>, <-58.395332987242185, 0.0, 45.745027198991146>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-63.4141274386966, 0.0, 46.317406730988864>, <-63.49977919193639, 0.0, 45.3210815947171>, <-63.11540781006791, 0.1, 46.29172649971925>}
  triangle { <-63.49977919193639, 0.0, 45.3210815947171>, <-63.201059563307695, 0.1, 45.29540136344749>, <-63.11540781006791, 0.1, 46.29172649971925>}
  triangle { <-63.11540781006791, 0.1, 46.29172649971925>, <-63.201059563307695, 0.1, 45.29540136344749>, <-63.11540781006791, 0.0, 46.29172649971925>}
  triangle { <-63.201059563307695, 0.1, 45.29540136344749>, <-63.201059563307695, 0.0, 45.29540136344749>, <-63.11540781006791, 0.0, 46.29172649971925>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-63.4141274386966, 0.0, 46.317406730988864>, <-63.11540781006791, 0.1, 46.29172649971925>, <-63.11540781006791, 0.0, 46.29172649971925>}
  triangle { <-63.201059563307695, 0.0, 45.29540136344749>, <-63.201059563307695, 0.1, 45.29540136344749>, <-63.49977919193639, 0.0, 45.3210815947171>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-63.11540781006791, 0.0, 46.29172649971925>, <-63.201059563307695, 0.0, 45.29540136344749>, <-62.81668818143921, 0.1, 46.26604626844964>}
  triangle { <-63.201059563307695, 0.0, 45.29540136344749>, <-62.902339934679, 0.1, 45.26972113217788>, <-62.81668818143921, 0.1, 46.26604626844964>}
  triangle { <-62.81668818143921, 0.1, 46.26604626844964>, <-62.902339934679, 0.1, 45.26972113217788>, <-62.81668818143921, 0.0, 46.26604626844964>}
  triangle { <-62.902339934679, 0.1, 45.26972113217788>, <-62.902339934679, 0.0, 45.26972113217788>, <-62.81668818143921, 0.0, 46.26604626844964>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-63.11540781006791, 0.0, 46.29172649971925>, <-62.81668818143921, 0.1, 46.26604626844964>, <-62.81668818143921, 0.0, 46.26604626844964>}
  triangle { <-62.902339934679, 0.0, 45.26972113217788>, <-62.902339934679, 0.1, 45.26972113217788>, <-63.201059563307695, 0.0, 45.29540136344749>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.81668818143921, 0.0, 46.26604626844964>, <-62.902339934679, 0.0, 45.26972113217788>, <-62.517968552810515, 0.1, 46.24036603718003>}
  triangle { <-62.902339934679, 0.0, 45.26972113217788>, <-62.6036203060503, 0.1, 45.24404090090827>, <-62.517968552810515, 0.1, 46.24036603718003>}
  triangle { <-62.517968552810515, 0.1, 46.24036603718003>, <-62.6036203060503, 0.1, 45.24404090090827>, <-62.517968552810515, 0.0, 46.24036603718003>}
  triangle { <-62.6036203060503, 0.1, 45.24404090090827>, <-62.6036203060503, 0.0, 45.24404090090827>, <-62.517968552810515, 0.0, 46.24036603718003>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.81668818143921, 0.0, 46.26604626844964>, <-62.517968552810515, 0.1, 46.24036603718003>, <-62.517968552810515, 0.0, 46.24036603718003>}
  triangle { <-62.6036203060503, 0.0, 45.24404090090827>, <-62.6036203060503, 0.1, 45.24404090090827>, <-62.902339934679, 0.0, 45.26972113217788>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.517968552810515, 0.0, 46.24036603718003>, <-62.6036203060503, 0.0, 45.24404090090827>, <-62.21924892418182, 0.1, 46.21468580591042>}
  triangle { <-62.6036203060503, 0.0, 45.24404090090827>, <-62.30490067742161, 0.1, 45.218360669638656>, <-62.21924892418182, 0.1, 46.21468580591042>}
  triangle { <-62.21924892418182, 0.1, 46.21468580591042>, <-62.30490067742161, 0.1, 45.218360669638656>, <-62.21924892418182, 0.0, 46.21468580591042>}
  triangle { <-62.30490067742161, 0.1, 45.218360669638656>, <-62.30490067742161, 0.0, 45.218360669638656>, <-62.21924892418182, 0.0, 46.21468580591042>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.517968552810515, 0.0, 46.24036603718003>, <-62.21924892418182, 0.1, 46.21468580591042>, <-62.21924892418182, 0.0, 46.21468580591042>}
  triangle { <-62.30490067742161, 0.0, 45.218360669638656>, <-62.30490067742161, 0.1, 45.218360669638656>, <-62.6036203060503, 0.0, 45.24404090090827>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.21924892418182, 0.0, 46.21468580591042>, <-62.30490067742161, 0.0, 45.218360669638656>, <-61.92052929555312, 0.1, 46.18900557464081>}
  triangle { <-62.30490067742161, 0.0, 45.218360669638656>, <-62.00618104879291, 0.1, 45.192680438369045>, <-61.92052929555312, 0.1, 46.18900557464081>}
  triangle { <-61.92052929555312, 0.1, 46.18900557464081>, <-62.00618104879291, 0.1, 45.192680438369045>, <-61.92052929555312, 0.0, 46.18900557464081>}
  triangle { <-62.00618104879291, 0.1, 45.192680438369045>, <-62.00618104879291, 0.0, 45.192680438369045>, <-61.92052929555312, 0.0, 46.18900557464081>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-62.21924892418182, 0.0, 46.21468580591042>, <-61.92052929555312, 0.1, 46.18900557464081>, <-61.92052929555312, 0.0, 46.18900557464081>}
  triangle { <-62.00618104879291, 0.0, 45.192680438369045>, <-62.00618104879291, 0.1, 45.192680438369045>, <-62.30490067742161, 0.0, 45.218360669638656>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.92052929555312, 0.0, 46.18900557464081>, <-62.00618104879291, 0.0, 45.192680438369045>, <-61.62180966692443, 0.1, 46.1633253433712>}
  triangle { <-62.00618104879291, 0.0, 45.192680438369045>, <-61.707461420164215, 0.1, 45.167000207099434>, <-61.62180966692443, 0.1, 46.1633253433712>}
  triangle { <-61.62180966692443, 0.1, 46.1633253433712>, <-61.707461420164215, 0.1, 45.167000207099434>, <-61.62180966692443, 0.0, 46.1633253433712>}
  triangle { <-61.707461420164215, 0.1, 45.167000207099434>, <-61.707461420164215, 0.0, 45.167000207099434>, <-61.62180966692443, 0.0, 46.1633253433712>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.92052929555312, 0.0, 46.18900557464081>, <-61.62180966692443, 0.1, 46.1633253433712>, <-61.62180966692443, 0.0, 46.1633253433712>}
  triangle { <-61.707461420164215, 0.0, 45.167000207099434>, <-61.707461420164215, 0.1, 45.167000207099434>, <-62.00618104879291, 0.0, 45.192680438369045>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.62180966692443, 0.0, 46.1633253433712>, <-61.707461420164215, 0.0, 45.167000207099434>, <-61.32309003829573, 0.1, 46.13764511210159>}
  triangle { <-61.707461420164215, 0.0, 45.167000207099434>, <-61.40874179153552, 0.1, 45.14131997582982>, <-61.32309003829573, 0.1, 46.13764511210159>}
  triangle { <-61.32309003829573, 0.1, 46.13764511210159>, <-61.40874179153552, 0.1, 45.14131997582982>, <-61.32309003829573, 0.0, 46.13764511210159>}
  triangle { <-61.40874179153552, 0.1, 45.14131997582982>, <-61.40874179153552, 0.0, 45.14131997582982>, <-61.32309003829573, 0.0, 46.13764511210159>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.62180966692443, 0.0, 46.1633253433712>, <-61.32309003829573, 0.1, 46.13764511210159>, <-61.32309003829573, 0.0, 46.13764511210159>}
  triangle { <-61.40874179153552, 0.0, 45.14131997582982>, <-61.40874179153552, 0.1, 45.14131997582982>, <-61.707461420164215, 0.0, 45.167000207099434>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.32309003829573, 0.0, 46.13764511210159>, <-61.40874179153552, 0.0, 45.14131997582982>, <-61.024370409667036, 0.1, 46.11196488083198>}
  triangle { <-61.40874179153552, 0.0, 45.14131997582982>, <-61.11002216290682, 0.1, 45.11563974456021>, <-61.024370409667036, 0.1, 46.11196488083198>}
  triangle { <-61.024370409667036, 0.1, 46.11196488083198>, <-61.11002216290682, 0.1, 45.11563974456021>, <-61.024370409667036, 0.0, 46.11196488083198>}
  triangle { <-61.11002216290682, 0.1, 45.11563974456021>, <-61.11002216290682, 0.0, 45.11563974456021>, <-61.024370409667036, 0.0, 46.11196488083198>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.32309003829573, 0.0, 46.13764511210159>, <-61.024370409667036, 0.1, 46.11196488083198>, <-61.024370409667036, 0.0, 46.11196488083198>}
  triangle { <-61.11002216290682, 0.0, 45.11563974456021>, <-61.11002216290682, 0.1, 45.11563974456021>, <-61.40874179153552, 0.0, 45.14131997582982>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.024370409667036, 0.0, 46.11196488083198>, <-61.11002216290682, 0.0, 45.11563974456021>, <-60.72565078103834, 0.1, 46.086284649562366>}
  triangle { <-61.11002216290682, 0.0, 45.11563974456021>, <-60.81130253427813, 0.1, 45.0899595132906>, <-60.72565078103834, 0.1, 46.086284649562366>}
  triangle { <-60.72565078103834, 0.1, 46.086284649562366>, <-60.81130253427813, 0.1, 45.0899595132906>, <-60.72565078103834, 0.0, 46.086284649562366>}
  triangle { <-60.81130253427813, 0.1, 45.0899595132906>, <-60.81130253427813, 0.0, 45.0899595132906>, <-60.72565078103834, 0.0, 46.086284649562366>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-61.024370409667036, 0.0, 46.11196488083198>, <-60.72565078103834, 0.1, 46.086284649562366>, <-60.72565078103834, 0.0, 46.086284649562366>}
  triangle { <-60.81130253427813, 0.0, 45.0899595132906>, <-60.81130253427813, 0.1, 45.0899595132906>, <-61.11002216290682, 0.0, 45.11563974456021>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.72565078103834, 0.0, 46.086284649562366>, <-60.81130253427813, 0.0, 45.0899595132906>, <-60.426931152409644, 0.1, 46.060604418292755>}
  triangle { <-60.81130253427813, 0.0, 45.0899595132906>, <-60.51258290564943, 0.1, 45.06427928202099>, <-60.426931152409644, 0.1, 46.060604418292755>}
  triangle { <-60.426931152409644, 0.1, 46.060604418292755>, <-60.51258290564943, 0.1, 45.06427928202099>, <-60.426931152409644, 0.0, 46.060604418292755>}
  triangle { <-60.51258290564943, 0.1, 45.06427928202099>, <-60.51258290564943, 0.0, 45.06427928202099>, <-60.426931152409644, 0.0, 46.060604418292755>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.72565078103834, 0.0, 46.086284649562366>, <-60.426931152409644, 0.1, 46.060604418292755>, <-60.426931152409644, 0.0, 46.060604418292755>}
  triangle { <-60.51258290564943, 0.0, 45.06427928202099>, <-60.51258290564943, 0.1, 45.06427928202099>, <-60.81130253427813, 0.0, 45.0899595132906>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.426931152409644, 0.0, 46.060604418292755>, <-60.51258290564943, 0.0, 45.06427928202099>, <-60.12821152378095, 0.1, 46.034924187023144>}
  triangle { <-60.51258290564943, 0.0, 45.06427928202099>, <-60.213863277020735, 0.1, 45.03859905075138>, <-60.12821152378095, 0.1, 46.034924187023144>}
  triangle { <-60.12821152378095, 0.1, 46.034924187023144>, <-60.213863277020735, 0.1, 45.03859905075138>, <-60.12821152378095, 0.0, 46.034924187023144>}
  triangle { <-60.213863277020735, 0.1, 45.03859905075138>, <-60.213863277020735, 0.0, 45.03859905075138>, <-60.12821152378095, 0.0, 46.034924187023144>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.426931152409644, 0.0, 46.060604418292755>, <-60.12821152378095, 0.1, 46.034924187023144>, <-60.12821152378095, 0.0, 46.034924187023144>}
  triangle { <-60.213863277020735, 0.0, 45.03859905075138>, <-60.213863277020735, 0.1, 45.03859905075138>, <-60.51258290564943, 0.0, 45.06427928202099>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.12821152378095, 0.0, 46.034924187023144>, <-60.213863277020735, 0.0, 45.03859905075138>, <-59.82949189515225, 0.1, 46.00924395575353>}
  triangle { <-60.213863277020735, 0.0, 45.03859905075138>, <-59.91514364839204, 0.1, 45.01291881948177>, <-59.82949189515225, 0.1, 46.00924395575353>}
  triangle { <-59.82949189515225, 0.1, 46.00924395575353>, <-59.91514364839204, 0.1, 45.01291881948177>, <-59.82949189515225, 0.0, 46.00924395575353>}
  triangle { <-59.91514364839204, 0.1, 45.01291881948177>, <-59.91514364839204, 0.0, 45.01291881948177>, <-59.82949189515225, 0.0, 46.00924395575353>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-60.12821152378095, 0.0, 46.034924187023144>, <-59.82949189515225, 0.1, 46.00924395575353>, <-59.82949189515225, 0.0, 46.00924395575353>}
  triangle { <-59.91514364839204, 0.0, 45.01291881948177>, <-59.91514364839204, 0.1, 45.01291881948177>, <-60.213863277020735, 0.0, 45.03859905075138>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.82949189515225, 0.0, 46.00924395575353>, <-59.91514364839204, 0.0, 45.01291881948177>, <-59.530772266523556, 0.1, 45.98356372448392>}
  triangle { <-59.91514364839204, 0.0, 45.01291881948177>, <-59.61642401976334, 0.1, 44.98723858821216>, <-59.530772266523556, 0.1, 45.98356372448392>}
  triangle { <-59.530772266523556, 0.1, 45.98356372448392>, <-59.61642401976334, 0.1, 44.98723858821216>, <-59.530772266523556, 0.0, 45.98356372448392>}
  triangle { <-59.61642401976334, 0.1, 44.98723858821216>, <-59.61642401976334, 0.0, 44.98723858821216>, <-59.530772266523556, 0.0, 45.98356372448392>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.82949189515225, 0.0, 46.00924395575353>, <-59.530772266523556, 0.1, 45.98356372448392>, <-59.530772266523556, 0.0, 45.98356372448392>}
  triangle { <-59.61642401976334, 0.0, 44.98723858821216>, <-59.61642401976334, 0.1, 44.98723858821216>, <-59.91514364839204, 0.0, 45.01291881948177>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.530772266523556, 0.0, 45.98356372448392>, <-59.61642401976334, 0.0, 44.98723858821216>, <-59.23205263789486, 0.1, 45.95788349321431>}
  triangle { <-59.61642401976334, 0.0, 44.98723858821216>, <-59.31770439113465, 0.1, 44.96155835694255>, <-59.23205263789486, 0.1, 45.95788349321431>}
  triangle { <-59.23205263789486, 0.1, 45.95788349321431>, <-59.31770439113465, 0.1, 44.96155835694255>, <-59.23205263789486, 0.0, 45.95788349321431>}
  triangle { <-59.31770439113465, 0.1, 44.96155835694255>, <-59.31770439113465, 0.0, 44.96155835694255>, <-59.23205263789486, 0.0, 45.95788349321431>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.530772266523556, 0.0, 45.98356372448392>, <-59.23205263789486, 0.1, 45.95788349321431>, <-59.23205263789486, 0.0, 45.95788349321431>}
  triangle { <-59.31770439113465, 0.0, 44.96155835694255>, <-59.31770439113465, 0.1, 44.96155835694255>, <-59.61642401976334, 0.0, 44.98723858821216>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.23205263789486, 0.0, 45.95788349321431>, <-59.31770439113465, 0.0, 44.96155835694255>, <-58.933333009266164, 0.1, 45.9322032619447>}
  triangle { <-59.31770439113465, 0.0, 44.96155835694255>, <-59.01898476250595, 0.1, 44.935878125672936>, <-58.933333009266164, 0.1, 45.9322032619447>}
  triangle { <-58.933333009266164, 0.1, 45.9322032619447>, <-59.01898476250595, 0.1, 44.935878125672936>, <-58.933333009266164, 0.0, 45.9322032619447>}
  triangle { <-59.01898476250595, 0.1, 44.935878125672936>, <-59.01898476250595, 0.0, 44.935878125672936>, <-58.933333009266164, 0.0, 45.9322032619447>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-59.23205263789486, 0.0, 45.95788349321431>, <-58.933333009266164, 0.1, 45.9322032619447>, <-58.933333009266164, 0.0, 45.9322032619447>}
  triangle { <-59.01898476250595, 0.0, 44.935878125672936>, <-59.01898476250595, 0.1, 44.935878125672936>, <-59.31770439113465, 0.0, 44.96155835694255>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.933333009266164, 0.0, 45.9322032619447>, <-59.01898476250595, 0.0, 44.935878125672936>, <-58.63461338063747, 0.1, 45.90652303067509>}
  triangle { <-59.01898476250595, 0.0, 44.935878125672936>, <-58.720265133877255, 0.1, 44.910197894403325>, <-58.63461338063747, 0.1, 45.90652303067509>}
  triangle { <-58.63461338063747, 0.1, 45.90652303067509>, <-58.720265133877255, 0.1, 44.910197894403325>, <-58.63461338063747, 0.0, 45.90652303067509>}
  triangle { <-58.720265133877255, 0.1, 44.910197894403325>, <-58.720265133877255, 0.0, 44.910197894403325>, <-58.63461338063747, 0.0, 45.90652303067509>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.933333009266164, 0.0, 45.9322032619447>, <-58.63461338063747, 0.1, 45.90652303067509>, <-58.63461338063747, 0.0, 45.90652303067509>}
  triangle { <-58.720265133877255, 0.0, 44.910197894403325>, <-58.720265133877255, 0.1, 44.910197894403325>, <-59.01898476250595, 0.0, 44.935878125672936>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.63461338063747, 0.0, 45.90652303067509>, <-58.720265133877255, 0.0, 44.910197894403325>, <-58.33589375200877, 0.1, 45.88084279940548>}
  triangle { <-58.720265133877255, 0.0, 44.910197894403325>, <-58.42154550524856, 0.1, 44.884517663133714>, <-58.33589375200877, 0.1, 45.88084279940548>}
  triangle { <-58.33589375200877, 0.1, 45.88084279940548>, <-58.42154550524856, 0.1, 44.884517663133714>, <-58.33589375200877, 0.0, 45.88084279940548>}
  triangle { <-58.42154550524856, 0.1, 44.884517663133714>, <-58.42154550524856, 0.0, 44.884517663133714>, <-58.33589375200877, 0.0, 45.88084279940548>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.63461338063747, 0.0, 45.90652303067509>, <-58.33589375200877, 0.1, 45.88084279940548>, <-58.33589375200877, 0.0, 45.88084279940548>}
  triangle { <-58.42154550524856, 0.0, 44.884517663133714>, <-58.42154550524856, 0.1, 44.884517663133714>, <-58.720265133877255, 0.0, 44.910197894403325>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.33589375200877, 0.0, 45.88084279940548>, <-58.42154550524856, 0.0, 44.884517663133714>, <-58.037174123380076, 0.1, 45.85516256813587>}
  triangle { <-58.42154550524856, 0.0, 44.884517663133714>, <-58.12282587661986, 0.1, 44.8588374318641>, <-58.037174123380076, 0.1, 45.85516256813587>}
  triangle { <-58.037174123380076, 0.1, 45.85516256813587>, <-58.12282587661986, 0.1, 44.8588374318641>, <-58.037174123380076, 0.0, 45.85516256813587>}
  triangle { <-58.12282587661986, 0.1, 44.8588374318641>, <-58.12282587661986, 0.0, 44.8588374318641>, <-58.037174123380076, 0.0, 45.85516256813587>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-58.33589375200877, 0.0, 45.88084279940548>, <-58.037174123380076, 0.1, 45.85516256813587>, <-58.037174123380076, 0.0, 45.85516256813587>}
  triangle { <-58.12282587661986, 0.0, 44.8588374318641>, <-58.12282587661986, 0.1, 44.8588374318641>, <-58.42154550524856, 0.0, 44.884517663133714>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.71130496284417, 0.0, 62.91323751571195>, <-70.70645002696602, 0.0, 63.011656524820374>, <-71.43105376300217, 0.0, 46.9974325874085>}
  triangle { <-70.70645002696602, 0.0, 63.011656524820374>, <-72.20694623699784, 0.0, 46.36656741259151>, <-71.43105376300217, 0.0, 46.9974325874085>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-68.36882416473478, 0.0, -46.578367355800175>, <-67.37857481993458, 0.0, -46.71767361956021>, <-67.28963097540242, 0.0, -39.998028326466695>}
  triangle { <-67.37857481993458, 0.0, -46.71767361956021>, <-66.50036902459757, 0.0, -39.38397167353331>, <-67.28963097540242, 0.0, -39.998028326466695>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-79.24374915028855, 0.0, -37.84306491148583>, <-78.64625084971144, 0.0, -38.64493508851417>, <-73.47603808872445, 0.0, -38.454602867734>}
  triangle { <-78.64625084971144, 0.0, -38.64493508851417>, <-73.60564704982572, 0.0, -39.44616805328776>, <-73.47603808872445, 0.0, -38.454602867734>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-78.88019551944936, 0.0, -37.74821740722312>, <-79.00980448055063, 0.0, -38.739782592776876>, <-78.57996455107575, 0.1, -37.78746104391817>}
  triangle { <-79.00980448055063, 0.0, -38.739782592776876>, <-78.70957351217702, 0.1, -38.779026229471924>, <-78.57996455107575, 0.1, -37.78746104391817>}
  triangle { <-78.57996455107575, 0.1, -37.78746104391817>, <-78.70957351217702, 0.1, -38.779026229471924>, <-78.57996455107575, 0.0, -37.78746104391817>}
  triangle { <-78.70957351217702, 0.1, -38.779026229471924>, <-78.70957351217702, 0.0, -38.779026229471924>, <-78.57996455107575, 0.0, -37.78746104391817>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-78.88019551944936, 0.0, -37.74821740722312>, <-78.57996455107575, 0.1, -37.78746104391817>, <-78.57996455107575, 0.0, -37.78746104391817>}
  triangle { <-78.70957351217702, 0.0, -38.779026229471924>, <-78.70957351217702, 0.1, -38.779026229471924>, <-79.00980448055063, 0.0, -38.739782592776876>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-78.57996455107575, 0.0, -37.78746104391817>, <-78.70957351217702, 0.0, -38.779026229471924>, <-78.27973358270214, 0.1, -37.82670468061322>}
  triangle { <-78.70957351217702, 0.0, -38.779026229471924>, <-78.4093425438034, 0.1, -38.81826986616697>, <-78.27973358270214, 0.1, -37.82670468061322>}
  triangle { <-78.27973358270214, 0.1, -37.82670468061322>, <-78.4093425438034, 0.1, -38.81826986616697>, <-78.27973358270214, 0.0, -37.82670468061322>}
  triangle { <-78.4093425438034, 0.1, -38.81826986616697>, <-78.4093425438034, 0.0, -38.81826986616697>, <-78.27973358270214, 0.0, -37.82670468061322>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-78.57996455107575, 0.0, -37.78746104391817>, <-78.27973358270214, 0.1, -37.82670468061322>, <-78.27973358270214, 0.0, -37.82670468061322>}
  triangle { <-78.4093425438034, 0.0, -38.81826986616697>, <-78.4093425438034, 0.1, -38.81826986616697>, <-78.70957351217702, 0.0, -38.779026229471924>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-78.27973358270214, 0.0, -37.82670468061322>, <-78.4093425438034, 0.0, -38.81826986616697>, <-77.97950261432852, 0.1, -37.865948317308266>}
  triangle { <-78.4093425438034, 0.0, -38.81826986616697>, <-78.1091115754298, 0.1, -38.85751350286202>, <-77.97950261432852, 0.1, -37.865948317308266>}
  triangle { <-77.97950261432852, 0.1, -37.865948317308266>, <-78.1091115754298, 0.1, -38.85751350286202>, <-77.97950261432852, 0.0, -37.865948317308266>}
  triangle { <-78.1091115754298, 0.1, -38.85751350286202>, <-78.1091115754298, 0.0, -38.85751350286202>, <-77.97950261432852, 0.0, -37.865948317308266>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-78.27973358270214, 0.0, -37.82670468061322>, <-77.97950261432852, 0.1, -37.865948317308266>, <-77.97950261432852, 0.0, -37.865948317308266>}
  triangle { <-78.1091115754298, 0.0, -38.85751350286202>, <-78.1091115754298, 0.1, -38.85751350286202>, <-78.4093425438034, 0.0, -38.81826986616697>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.97950261432852, 0.0, -37.865948317308266>, <-78.1091115754298, 0.0, -38.85751350286202>, <-77.67927164595491, 0.1, -37.905191954003314>}
  triangle { <-78.1091115754298, 0.0, -38.85751350286202>, <-77.80888060705618, 0.1, -38.89675713955707>, <-77.67927164595491, 0.1, -37.905191954003314>}
  triangle { <-77.67927164595491, 0.1, -37.905191954003314>, <-77.80888060705618, 0.1, -38.89675713955707>, <-77.67927164595491, 0.0, -37.905191954003314>}
  triangle { <-77.80888060705618, 0.1, -38.89675713955707>, <-77.80888060705618, 0.0, -38.89675713955707>, <-77.67927164595491, 0.0, -37.905191954003314>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.97950261432852, 0.0, -37.865948317308266>, <-77.67927164595491, 0.1, -37.905191954003314>, <-77.67927164595491, 0.0, -37.905191954003314>}
  triangle { <-77.80888060705618, 0.0, -38.89675713955707>, <-77.80888060705618, 0.1, -38.89675713955707>, <-78.1091115754298, 0.0, -38.85751350286202>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.67927164595491, 0.0, -37.905191954003314>, <-77.80888060705618, 0.0, -38.89675713955707>, <-77.3790406775813, 0.1, -37.94443559069836>}
  triangle { <-77.80888060705618, 0.0, -38.89675713955707>, <-77.50864963868257, 0.1, -38.936000776252115>, <-77.3790406775813, 0.1, -37.94443559069836>}
  triangle { <-77.3790406775813, 0.1, -37.94443559069836>, <-77.50864963868257, 0.1, -38.936000776252115>, <-77.3790406775813, 0.0, -37.94443559069836>}
  triangle { <-77.50864963868257, 0.1, -38.936000776252115>, <-77.50864963868257, 0.0, -38.936000776252115>, <-77.3790406775813, 0.0, -37.94443559069836>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.67927164595491, 0.0, -37.905191954003314>, <-77.3790406775813, 0.1, -37.94443559069836>, <-77.3790406775813, 0.0, -37.94443559069836>}
  triangle { <-77.50864963868257, 0.0, -38.936000776252115>, <-77.50864963868257, 0.1, -38.936000776252115>, <-77.80888060705618, 0.0, -38.89675713955707>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.3790406775813, 0.0, -37.94443559069836>, <-77.50864963868257, 0.0, -38.936000776252115>, <-77.07880970920769, 0.1, -37.98367922739341>}
  triangle { <-77.50864963868257, 0.0, -38.936000776252115>, <-77.20841867030896, 0.1, -38.97524441294716>, <-77.07880970920769, 0.1, -37.98367922739341>}
  triangle { <-77.07880970920769, 0.1, -37.98367922739341>, <-77.20841867030896, 0.1, -38.97524441294716>, <-77.07880970920769, 0.0, -37.98367922739341>}
  triangle { <-77.20841867030896, 0.1, -38.97524441294716>, <-77.20841867030896, 0.0, -38.97524441294716>, <-77.07880970920769, 0.0, -37.98367922739341>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.3790406775813, 0.0, -37.94443559069836>, <-77.07880970920769, 0.1, -37.98367922739341>, <-77.07880970920769, 0.0, -37.98367922739341>}
  triangle { <-77.20841867030896, 0.0, -38.97524441294716>, <-77.20841867030896, 0.1, -38.97524441294716>, <-77.50864963868257, 0.0, -38.936000776252115>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.07880970920769, 0.0, -37.98367922739341>, <-77.20841867030896, 0.0, -38.97524441294716>, <-76.77857874083408, 0.1, -38.02292286408846>}
  triangle { <-77.20841867030896, 0.0, -38.97524441294716>, <-76.90818770193535, 0.1, -39.01448804964221>, <-76.77857874083408, 0.1, -38.02292286408846>}
  triangle { <-76.77857874083408, 0.1, -38.02292286408846>, <-76.90818770193535, 0.1, -39.01448804964221>, <-76.77857874083408, 0.0, -38.02292286408846>}
  triangle { <-76.90818770193535, 0.1, -39.01448804964221>, <-76.90818770193535, 0.0, -39.01448804964221>, <-76.77857874083408, 0.0, -38.02292286408846>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-77.07880970920769, 0.0, -37.98367922739341>, <-76.77857874083408, 0.1, -38.02292286408846>, <-76.77857874083408, 0.0, -38.02292286408846>}
  triangle { <-76.90818770193535, 0.0, -39.01448804964221>, <-76.90818770193535, 0.1, -39.01448804964221>, <-77.20841867030896, 0.0, -38.97524441294716>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.77857874083408, 0.0, -38.02292286408846>, <-76.90818770193535, 0.0, -39.01448804964221>, <-76.47834777246047, 0.1, -38.062166500783505>}
  triangle { <-76.90818770193535, 0.0, -39.01448804964221>, <-76.60795673356174, 0.1, -39.05373168633726>, <-76.47834777246047, 0.1, -38.062166500783505>}
  triangle { <-76.47834777246047, 0.1, -38.062166500783505>, <-76.60795673356174, 0.1, -39.05373168633726>, <-76.47834777246047, 0.0, -38.062166500783505>}
  triangle { <-76.60795673356174, 0.1, -39.05373168633726>, <-76.60795673356174, 0.0, -39.05373168633726>, <-76.47834777246047, 0.0, -38.062166500783505>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.77857874083408, 0.0, -38.02292286408846>, <-76.47834777246047, 0.1, -38.062166500783505>, <-76.47834777246047, 0.0, -38.062166500783505>}
  triangle { <-76.60795673356174, 0.0, -39.05373168633726>, <-76.60795673356174, 0.1, -39.05373168633726>, <-76.90818770193535, 0.0, -39.01448804964221>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.47834777246047, 0.0, -38.062166500783505>, <-76.60795673356174, 0.0, -39.05373168633726>, <-76.17811680408686, 0.1, -38.10141013747855>}
  triangle { <-76.60795673356174, 0.0, -39.05373168633726>, <-76.30772576518812, 0.1, -39.092975323032306>, <-76.17811680408686, 0.1, -38.10141013747855>}
  triangle { <-76.17811680408686, 0.1, -38.10141013747855>, <-76.30772576518812, 0.1, -39.092975323032306>, <-76.17811680408686, 0.0, -38.10141013747855>}
  triangle { <-76.30772576518812, 0.1, -39.092975323032306>, <-76.30772576518812, 0.0, -39.092975323032306>, <-76.17811680408686, 0.0, -38.10141013747855>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.47834777246047, 0.0, -38.062166500783505>, <-76.17811680408686, 0.1, -38.10141013747855>, <-76.17811680408686, 0.0, -38.10141013747855>}
  triangle { <-76.30772576518812, 0.0, -39.092975323032306>, <-76.30772576518812, 0.1, -39.092975323032306>, <-76.60795673356174, 0.0, -39.05373168633726>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.17811680408686, 0.0, -38.10141013747855>, <-76.30772576518812, 0.0, -39.092975323032306>, <-75.87788583571324, 0.1, -38.1406537741736>}
  triangle { <-76.30772576518812, 0.0, -39.092975323032306>, <-76.00749479681451, 0.1, -39.13221895972735>, <-75.87788583571324, 0.1, -38.1406537741736>}
  triangle { <-75.87788583571324, 0.1, -38.1406537741736>, <-76.00749479681451, 0.1, -39.13221895972735>, <-75.87788583571324, 0.0, -38.1406537741736>}
  triangle { <-76.00749479681451, 0.1, -39.13221895972735>, <-76.00749479681451, 0.0, -39.13221895972735>, <-75.87788583571324, 0.0, -38.1406537741736>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-76.17811680408686, 0.0, -38.10141013747855>, <-75.87788583571324, 0.1, -38.1406537741736>, <-75.87788583571324, 0.0, -38.1406537741736>}
  triangle { <-76.00749479681451, 0.0, -39.13221895972735>, <-76.00749479681451, 0.1, -39.13221895972735>, <-76.30772576518812, 0.0, -39.092975323032306>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.87788583571324, 0.0, -38.1406537741736>, <-76.00749479681451, 0.0, -39.13221895972735>, <-75.57765486733963, 0.1, -38.17989741086865>}
  triangle { <-76.00749479681451, 0.0, -39.13221895972735>, <-75.7072638284409, 0.1, -39.1714625964224>, <-75.57765486733963, 0.1, -38.17989741086865>}
  triangle { <-75.57765486733963, 0.1, -38.17989741086865>, <-75.7072638284409, 0.1, -39.1714625964224>, <-75.57765486733963, 0.0, -38.17989741086865>}
  triangle { <-75.7072638284409, 0.1, -39.1714625964224>, <-75.7072638284409, 0.0, -39.1714625964224>, <-75.57765486733963, 0.0, -38.17989741086865>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.87788583571324, 0.0, -38.1406537741736>, <-75.57765486733963, 0.1, -38.17989741086865>, <-75.57765486733963, 0.0, -38.17989741086865>}
  triangle { <-75.7072638284409, 0.0, -39.1714625964224>, <-75.7072638284409, 0.1, -39.1714625964224>, <-76.00749479681451, 0.0, -39.13221895972735>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.57765486733963, 0.0, -38.17989741086865>, <-75.7072638284409, 0.0, -39.1714625964224>, <-75.27742389896602, 0.1, -38.219141047563696>}
  triangle { <-75.7072638284409, 0.0, -39.1714625964224>, <-75.40703286006729, 0.1, -39.21070623311745>, <-75.27742389896602, 0.1, -38.219141047563696>}
  triangle { <-75.27742389896602, 0.1, -38.219141047563696>, <-75.40703286006729, 0.1, -39.21070623311745>, <-75.27742389896602, 0.0, -38.219141047563696>}
  triangle { <-75.40703286006729, 0.1, -39.21070623311745>, <-75.40703286006729, 0.0, -39.21070623311745>, <-75.27742389896602, 0.0, -38.219141047563696>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.57765486733963, 0.0, -38.17989741086865>, <-75.27742389896602, 0.1, -38.219141047563696>, <-75.27742389896602, 0.0, -38.219141047563696>}
  triangle { <-75.40703286006729, 0.0, -39.21070623311745>, <-75.40703286006729, 0.1, -39.21070623311745>, <-75.7072638284409, 0.0, -39.1714625964224>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.27742389896602, 0.0, -38.219141047563696>, <-75.40703286006729, 0.0, -39.21070623311745>, <-74.97719293059241, 0.1, -38.25838468425874>}
  triangle { <-75.40703286006729, 0.0, -39.21070623311745>, <-75.10680189169368, 0.1, -39.2499498698125>, <-74.97719293059241, 0.1, -38.25838468425874>}
  triangle { <-74.97719293059241, 0.1, -38.25838468425874>, <-75.10680189169368, 0.1, -39.2499498698125>, <-74.97719293059241, 0.0, -38.25838468425874>}
  triangle { <-75.10680189169368, 0.1, -39.2499498698125>, <-75.10680189169368, 0.0, -39.2499498698125>, <-74.97719293059241, 0.0, -38.25838468425874>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-75.27742389896602, 0.0, -38.219141047563696>, <-74.97719293059241, 0.1, -38.25838468425874>, <-74.97719293059241, 0.0, -38.25838468425874>}
  triangle { <-75.10680189169368, 0.0, -39.2499498698125>, <-75.10680189169368, 0.1, -39.2499498698125>, <-75.40703286006729, 0.0, -39.21070623311745>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.97719293059241, 0.0, -38.25838468425874>, <-75.10680189169368, 0.0, -39.2499498698125>, <-74.6769619622188, 0.1, -38.29762832095379>}
  triangle { <-75.10680189169368, 0.0, -39.2499498698125>, <-74.80657092332007, 0.1, -39.289193506507544>, <-74.6769619622188, 0.1, -38.29762832095379>}
  triangle { <-74.6769619622188, 0.1, -38.29762832095379>, <-74.80657092332007, 0.1, -39.289193506507544>, <-74.6769619622188, 0.0, -38.29762832095379>}
  triangle { <-74.80657092332007, 0.1, -39.289193506507544>, <-74.80657092332007, 0.0, -39.289193506507544>, <-74.6769619622188, 0.0, -38.29762832095379>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.97719293059241, 0.0, -38.25838468425874>, <-74.6769619622188, 0.1, -38.29762832095379>, <-74.6769619622188, 0.0, -38.29762832095379>}
  triangle { <-74.80657092332007, 0.0, -39.289193506507544>, <-74.80657092332007, 0.1, -39.289193506507544>, <-75.10680189169368, 0.0, -39.2499498698125>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.6769619622188, 0.0, -38.29762832095379>, <-74.80657092332007, 0.0, -39.289193506507544>, <-74.37673099384519, 0.1, -38.33687195764884>}
  triangle { <-74.80657092332007, 0.0, -39.289193506507544>, <-74.50633995494645, 0.1, -39.32843714320259>, <-74.37673099384519, 0.1, -38.33687195764884>}
  triangle { <-74.37673099384519, 0.1, -38.33687195764884>, <-74.50633995494645, 0.1, -39.32843714320259>, <-74.37673099384519, 0.0, -38.33687195764884>}
  triangle { <-74.50633995494645, 0.1, -39.32843714320259>, <-74.50633995494645, 0.0, -39.32843714320259>, <-74.37673099384519, 0.0, -38.33687195764884>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.6769619622188, 0.0, -38.29762832095379>, <-74.37673099384519, 0.1, -38.33687195764884>, <-74.37673099384519, 0.0, -38.33687195764884>}
  triangle { <-74.50633995494645, 0.0, -39.32843714320259>, <-74.50633995494645, 0.1, -39.32843714320259>, <-74.80657092332007, 0.0, -39.289193506507544>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.37673099384519, 0.0, -38.33687195764884>, <-74.50633995494645, 0.0, -39.32843714320259>, <-74.07650002547157, 0.1, -38.37611559434389>}
  triangle { <-74.50633995494645, 0.0, -39.32843714320259>, <-74.20610898657284, 0.1, -39.36768077989764>, <-74.07650002547157, 0.1, -38.37611559434389>}
  triangle { <-74.07650002547157, 0.1, -38.37611559434389>, <-74.20610898657284, 0.1, -39.36768077989764>, <-74.07650002547157, 0.0, -38.37611559434389>}
  triangle { <-74.20610898657284, 0.1, -39.36768077989764>, <-74.20610898657284, 0.0, -39.36768077989764>, <-74.07650002547157, 0.0, -38.37611559434389>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.37673099384519, 0.0, -38.33687195764884>, <-74.07650002547157, 0.1, -38.37611559434389>, <-74.07650002547157, 0.0, -38.37611559434389>}
  triangle { <-74.20610898657284, 0.0, -39.36768077989764>, <-74.20610898657284, 0.1, -39.36768077989764>, <-74.50633995494645, 0.0, -39.32843714320259>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.07650002547157, 0.0, -38.37611559434389>, <-74.20610898657284, 0.0, -39.36768077989764>, <-73.77626905709796, 0.1, -38.415359231038934>}
  triangle { <-74.20610898657284, 0.0, -39.36768077989764>, <-73.90587801819923, 0.1, -39.40692441659269>, <-73.77626905709796, 0.1, -38.415359231038934>}
  triangle { <-73.77626905709796, 0.1, -38.415359231038934>, <-73.90587801819923, 0.1, -39.40692441659269>, <-73.77626905709796, 0.0, -38.415359231038934>}
  triangle { <-73.90587801819923, 0.1, -39.40692441659269>, <-73.90587801819923, 0.0, -39.40692441659269>, <-73.77626905709796, 0.0, -38.415359231038934>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-74.07650002547157, 0.0, -38.37611559434389>, <-73.77626905709796, 0.1, -38.415359231038934>, <-73.77626905709796, 0.0, -38.415359231038934>}
  triangle { <-73.90587801819923, 0.0, -39.40692441659269>, <-73.90587801819923, 0.1, -39.40692441659269>, <-74.20610898657284, 0.0, -39.36768077989764>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-73.77626905709796, 0.0, -38.415359231038934>, <-73.90587801819923, 0.0, -39.40692441659269>, <-73.47603808872435, 0.1, -38.45460286773398>}
  triangle { <-73.90587801819923, 0.0, -39.40692441659269>, <-73.60564704982562, 0.1, -39.446168053287735>, <-73.47603808872435, 0.1, -38.45460286773398>}
  triangle { <-73.47603808872435, 0.1, -38.45460286773398>, <-73.60564704982562, 0.1, -39.446168053287735>, <-73.47603808872435, 0.0, -38.45460286773398>}
  triangle { <-73.60564704982562, 0.1, -39.446168053287735>, <-73.60564704982562, 0.0, -39.446168053287735>, <-73.47603808872435, 0.0, -38.45460286773398>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-73.77626905709796, 0.0, -38.415359231038934>, <-73.47603808872435, 0.1, -38.45460286773398>, <-73.47603808872435, 0.0, -38.45460286773398>}
  triangle { <-73.60564704982562, 0.0, -39.446168053287735>, <-73.60564704982562, 0.1, -39.446168053287735>, <-73.90587801819923, 0.0, -39.40692441659269>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-72.03708420803741, 0.0, -38.62711085964709>, <-72.1455256857812, 0.0, -39.62121369432002>, <-66.50036902459757, 0.0, -39.38397167353331>}
  triangle { <-72.1455256857812, 0.0, -39.62121369432002>, <-67.28963097540242, 0.0, -39.998028326466695>, <-66.50036902459757, 0.0, -39.38397167353331>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-72.03708420803741, 0.0, -38.62711085964709>, <-72.1455256857812, 0.0, -39.62121369432002>, <-71.7314192111604, 0.1, -38.660454255118644>}
  triangle { <-72.1455256857812, 0.0, -39.62121369432002>, <-71.83986068890418, 0.1, -39.654557089791574>, <-71.7314192111604, 0.1, -38.660454255118644>}
  triangle { <-71.7314192111604, 0.1, -38.660454255118644>, <-71.83986068890418, 0.1, -39.654557089791574>, <-71.7314192111604, 0.0, -38.660454255118644>}
  triangle { <-71.83986068890418, 0.1, -39.654557089791574>, <-71.83986068890418, 0.0, -39.654557089791574>, <-71.7314192111604, 0.0, -38.660454255118644>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-72.03708420803741, 0.0, -38.62711085964709>, <-71.7314192111604, 0.1, -38.660454255118644>, <-71.7314192111604, 0.0, -38.660454255118644>}
  triangle { <-71.83986068890418, 0.0, -39.654557089791574>, <-71.83986068890418, 0.1, -39.654557089791574>, <-72.1455256857812, 0.0, -39.62121369432002>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.7314192111604, 0.0, -38.660454255118644>, <-71.83986068890418, 0.0, -39.654557089791574>, <-71.42575421428339, 0.1, -38.6937976505902>}
  triangle { <-71.83986068890418, 0.0, -39.654557089791574>, <-71.53419569202717, 0.1, -39.68790048526313>, <-71.42575421428339, 0.1, -38.6937976505902>}
  triangle { <-71.42575421428339, 0.1, -38.6937976505902>, <-71.53419569202717, 0.1, -39.68790048526313>, <-71.42575421428339, 0.0, -38.6937976505902>}
  triangle { <-71.53419569202717, 0.1, -39.68790048526313>, <-71.53419569202717, 0.0, -39.68790048526313>, <-71.42575421428339, 0.0, -38.6937976505902>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.7314192111604, 0.0, -38.660454255118644>, <-71.42575421428339, 0.1, -38.6937976505902>, <-71.42575421428339, 0.0, -38.6937976505902>}
  triangle { <-71.53419569202717, 0.0, -39.68790048526313>, <-71.53419569202717, 0.1, -39.68790048526313>, <-71.83986068890418, 0.0, -39.654557089791574>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.42575421428339, 0.0, -38.6937976505902>, <-71.53419569202717, 0.0, -39.68790048526313>, <-71.12008921740637, 0.1, -38.72714104606175>}
  triangle { <-71.53419569202717, 0.0, -39.68790048526313>, <-71.22853069515016, 0.1, -39.72124388073468>, <-71.12008921740637, 0.1, -38.72714104606175>}
  triangle { <-71.12008921740637, 0.1, -38.72714104606175>, <-71.22853069515016, 0.1, -39.72124388073468>, <-71.12008921740637, 0.0, -38.72714104606175>}
  triangle { <-71.22853069515016, 0.1, -39.72124388073468>, <-71.22853069515016, 0.0, -39.72124388073468>, <-71.12008921740637, 0.0, -38.72714104606175>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.42575421428339, 0.0, -38.6937976505902>, <-71.12008921740637, 0.1, -38.72714104606175>, <-71.12008921740637, 0.0, -38.72714104606175>}
  triangle { <-71.22853069515016, 0.0, -39.72124388073468>, <-71.22853069515016, 0.1, -39.72124388073468>, <-71.53419569202717, 0.0, -39.68790048526313>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.12008921740637, 0.0, -38.72714104606175>, <-71.22853069515016, 0.0, -39.72124388073468>, <-70.81442422052936, 0.1, -38.76048444153331>}
  triangle { <-71.22853069515016, 0.0, -39.72124388073468>, <-70.92286569827314, 0.1, -39.75458727620624>, <-70.81442422052936, 0.1, -38.76048444153331>}
  triangle { <-70.81442422052936, 0.1, -38.76048444153331>, <-70.92286569827314, 0.1, -39.75458727620624>, <-70.81442422052936, 0.0, -38.76048444153331>}
  triangle { <-70.92286569827314, 0.1, -39.75458727620624>, <-70.92286569827314, 0.0, -39.75458727620624>, <-70.81442422052936, 0.0, -38.76048444153331>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-71.12008921740637, 0.0, -38.72714104606175>, <-70.81442422052936, 0.1, -38.76048444153331>, <-70.81442422052936, 0.0, -38.76048444153331>}
  triangle { <-70.92286569827314, 0.0, -39.75458727620624>, <-70.92286569827314, 0.1, -39.75458727620624>, <-71.22853069515016, 0.0, -39.72124388073468>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.81442422052936, 0.0, -38.76048444153331>, <-70.92286569827314, 0.0, -39.75458727620624>, <-70.50875922365235, 0.1, -38.79382783700486>}
  triangle { <-70.92286569827314, 0.0, -39.75458727620624>, <-70.61720070139613, 0.1, -39.78793067167779>, <-70.50875922365235, 0.1, -38.79382783700486>}
  triangle { <-70.50875922365235, 0.1, -38.79382783700486>, <-70.61720070139613, 0.1, -39.78793067167779>, <-70.50875922365235, 0.0, -38.79382783700486>}
  triangle { <-70.61720070139613, 0.1, -39.78793067167779>, <-70.61720070139613, 0.0, -39.78793067167779>, <-70.50875922365235, 0.0, -38.79382783700486>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.81442422052936, 0.0, -38.76048444153331>, <-70.50875922365235, 0.1, -38.79382783700486>, <-70.50875922365235, 0.0, -38.79382783700486>}
  triangle { <-70.61720070139613, 0.0, -39.78793067167779>, <-70.61720070139613, 0.1, -39.78793067167779>, <-70.92286569827314, 0.0, -39.75458727620624>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.50875922365235, 0.0, -38.79382783700486>, <-70.61720070139613, 0.0, -39.78793067167779>, <-70.20309422677533, 0.1, -38.82717123247642>}
  triangle { <-70.61720070139613, 0.0, -39.78793067167779>, <-70.31153570451912, 0.1, -39.821274067149346>, <-70.20309422677533, 0.1, -38.82717123247642>}
  triangle { <-70.20309422677533, 0.1, -38.82717123247642>, <-70.31153570451912, 0.1, -39.821274067149346>, <-70.20309422677533, 0.0, -38.82717123247642>}
  triangle { <-70.31153570451912, 0.1, -39.821274067149346>, <-70.31153570451912, 0.0, -39.821274067149346>, <-70.20309422677533, 0.0, -38.82717123247642>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.50875922365235, 0.0, -38.79382783700486>, <-70.20309422677533, 0.1, -38.82717123247642>, <-70.20309422677533, 0.0, -38.82717123247642>}
  triangle { <-70.31153570451912, 0.0, -39.821274067149346>, <-70.31153570451912, 0.1, -39.821274067149346>, <-70.61720070139613, 0.0, -39.78793067167779>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.20309422677533, 0.0, -38.82717123247642>, <-70.31153570451912, 0.0, -39.821274067149346>, <-69.89742922989832, 0.1, -38.86051462794797>}
  triangle { <-70.31153570451912, 0.0, -39.821274067149346>, <-70.0058707076421, 0.1, -39.8546174626209>, <-69.89742922989832, 0.1, -38.86051462794797>}
  triangle { <-69.89742922989832, 0.1, -38.86051462794797>, <-70.0058707076421, 0.1, -39.8546174626209>, <-69.89742922989832, 0.0, -38.86051462794797>}
  triangle { <-70.0058707076421, 0.1, -39.8546174626209>, <-70.0058707076421, 0.0, -39.8546174626209>, <-69.89742922989832, 0.0, -38.86051462794797>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-70.20309422677533, 0.0, -38.82717123247642>, <-69.89742922989832, 0.1, -38.86051462794797>, <-69.89742922989832, 0.0, -38.86051462794797>}
  triangle { <-70.0058707076421, 0.0, -39.8546174626209>, <-70.0058707076421, 0.1, -39.8546174626209>, <-70.31153570451912, 0.0, -39.821274067149346>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.89742922989832, 0.0, -38.86051462794797>, <-70.0058707076421, 0.0, -39.8546174626209>, <-69.59176423302131, 0.1, -38.893858023419526>}
  triangle { <-70.0058707076421, 0.0, -39.8546174626209>, <-69.70020571076509, 0.1, -39.887960858092455>, <-69.59176423302131, 0.1, -38.893858023419526>}
  triangle { <-69.59176423302131, 0.1, -38.893858023419526>, <-69.70020571076509, 0.1, -39.887960858092455>, <-69.59176423302131, 0.0, -38.893858023419526>}
  triangle { <-69.70020571076509, 0.1, -39.887960858092455>, <-69.70020571076509, 0.0, -39.887960858092455>, <-69.59176423302131, 0.0, -38.893858023419526>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.89742922989832, 0.0, -38.86051462794797>, <-69.59176423302131, 0.1, -38.893858023419526>, <-69.59176423302131, 0.0, -38.893858023419526>}
  triangle { <-69.70020571076509, 0.0, -39.887960858092455>, <-69.70020571076509, 0.1, -39.887960858092455>, <-70.0058707076421, 0.0, -39.8546174626209>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.59176423302131, 0.0, -38.893858023419526>, <-69.70020571076509, 0.0, -39.887960858092455>, <-69.2860992361443, 0.1, -38.92720141889108>}
  triangle { <-69.70020571076509, 0.0, -39.887960858092455>, <-69.39454071388808, 0.1, -39.92130425356401>, <-69.2860992361443, 0.1, -38.92720141889108>}
  triangle { <-69.2860992361443, 0.1, -38.92720141889108>, <-69.39454071388808, 0.1, -39.92130425356401>, <-69.2860992361443, 0.0, -38.92720141889108>}
  triangle { <-69.39454071388808, 0.1, -39.92130425356401>, <-69.39454071388808, 0.0, -39.92130425356401>, <-69.2860992361443, 0.0, -38.92720141889108>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.59176423302131, 0.0, -38.893858023419526>, <-69.2860992361443, 0.1, -38.92720141889108>, <-69.2860992361443, 0.0, -38.92720141889108>}
  triangle { <-69.39454071388808, 0.0, -39.92130425356401>, <-69.39454071388808, 0.1, -39.92130425356401>, <-69.70020571076509, 0.0, -39.887960858092455>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.2860992361443, 0.0, -38.92720141889108>, <-69.39454071388808, 0.0, -39.92130425356401>, <-68.98043423926728, 0.1, -38.960544814362635>}
  triangle { <-69.39454071388808, 0.0, -39.92130425356401>, <-69.08887571701106, 0.1, -39.954647649035564>, <-68.98043423926728, 0.1, -38.960544814362635>}
  triangle { <-68.98043423926728, 0.1, -38.960544814362635>, <-69.08887571701106, 0.1, -39.954647649035564>, <-68.98043423926728, 0.0, -38.960544814362635>}
  triangle { <-69.08887571701106, 0.1, -39.954647649035564>, <-69.08887571701106, 0.0, -39.954647649035564>, <-68.98043423926728, 0.0, -38.960544814362635>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-69.2860992361443, 0.0, -38.92720141889108>, <-68.98043423926728, 0.1, -38.960544814362635>, <-68.98043423926728, 0.0, -38.960544814362635>}
  triangle { <-69.08887571701106, 0.0, -39.954647649035564>, <-69.08887571701106, 0.1, -39.954647649035564>, <-69.39454071388808, 0.0, -39.92130425356401>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.98043423926728, 0.0, -38.960544814362635>, <-69.08887571701106, 0.0, -39.954647649035564>, <-68.67476924239027, 0.1, -38.99388820983419>}
  triangle { <-69.08887571701106, 0.0, -39.954647649035564>, <-68.78321072013405, 0.1, -39.98799104450712>, <-68.67476924239027, 0.1, -38.99388820983419>}
  triangle { <-68.67476924239027, 0.1, -38.99388820983419>, <-68.78321072013405, 0.1, -39.98799104450712>, <-68.67476924239027, 0.0, -38.99388820983419>}
  triangle { <-68.78321072013405, 0.1, -39.98799104450712>, <-68.78321072013405, 0.0, -39.98799104450712>, <-68.67476924239027, 0.0, -38.99388820983419>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.98043423926728, 0.0, -38.960544814362635>, <-68.67476924239027, 0.1, -38.99388820983419>, <-68.67476924239027, 0.0, -38.99388820983419>}
  triangle { <-68.78321072013405, 0.0, -39.98799104450712>, <-68.78321072013405, 0.1, -39.98799104450712>, <-69.08887571701106, 0.0, -39.954647649035564>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.67476924239027, 0.0, -38.99388820983419>, <-68.78321072013405, 0.0, -39.98799104450712>, <-68.36910424551326, 0.1, -39.027231605305744>}
  triangle { <-68.78321072013405, 0.0, -39.98799104450712>, <-68.47754572325704, 0.1, -40.02133443997867>, <-68.36910424551326, 0.1, -39.027231605305744>}
  triangle { <-68.36910424551326, 0.1, -39.027231605305744>, <-68.47754572325704, 0.1, -40.02133443997867>, <-68.36910424551326, 0.0, -39.027231605305744>}
  triangle { <-68.47754572325704, 0.1, -40.02133443997867>, <-68.47754572325704, 0.0, -40.02133443997867>, <-68.36910424551326, 0.0, -39.027231605305744>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.67476924239027, 0.0, -38.99388820983419>, <-68.36910424551326, 0.1, -39.027231605305744>, <-68.36910424551326, 0.0, -39.027231605305744>}
  triangle { <-68.47754572325704, 0.0, -40.02133443997867>, <-68.47754572325704, 0.1, -40.02133443997867>, <-68.78321072013405, 0.0, -39.98799104450712>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.36910424551326, 0.0, -39.027231605305744>, <-68.47754572325704, 0.0, -40.02133443997867>, <-68.06343924863624, 0.1, -39.0605750007773>}
  triangle { <-68.47754572325704, 0.0, -40.02133443997867>, <-68.17188072638002, 0.1, -40.05467783545023>, <-68.06343924863624, 0.1, -39.0605750007773>}
  triangle { <-68.06343924863624, 0.1, -39.0605750007773>, <-68.17188072638002, 0.1, -40.05467783545023>, <-68.06343924863624, 0.0, -39.0605750007773>}
  triangle { <-68.17188072638002, 0.1, -40.05467783545023>, <-68.17188072638002, 0.0, -40.05467783545023>, <-68.06343924863624, 0.0, -39.0605750007773>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.36910424551326, 0.0, -39.027231605305744>, <-68.06343924863624, 0.1, -39.0605750007773>, <-68.06343924863624, 0.0, -39.0605750007773>}
  triangle { <-68.17188072638002, 0.0, -40.05467783545023>, <-68.17188072638002, 0.1, -40.05467783545023>, <-68.47754572325704, 0.0, -40.02133443997867>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.06343924863624, 0.0, -39.0605750007773>, <-68.17188072638002, 0.0, -40.05467783545023>, <-67.75777425175923, 0.1, -39.09391839624885>}
  triangle { <-68.17188072638002, 0.0, -40.05467783545023>, <-67.86621572950301, 0.1, -40.08802123092178>, <-67.75777425175923, 0.1, -39.09391839624885>}
  triangle { <-67.75777425175923, 0.1, -39.09391839624885>, <-67.86621572950301, 0.1, -40.08802123092178>, <-67.75777425175923, 0.0, -39.09391839624885>}
  triangle { <-67.86621572950301, 0.1, -40.08802123092178>, <-67.86621572950301, 0.0, -40.08802123092178>, <-67.75777425175923, 0.0, -39.09391839624885>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-68.06343924863624, 0.0, -39.0605750007773>, <-67.75777425175923, 0.1, -39.09391839624885>, <-67.75777425175923, 0.0, -39.09391839624885>}
  triangle { <-67.86621572950301, 0.0, -40.08802123092178>, <-67.86621572950301, 0.1, -40.08802123092178>, <-68.17188072638002, 0.0, -40.05467783545023>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.75777425175923, 0.0, -39.09391839624885>, <-67.86621572950301, 0.0, -40.08802123092178>, <-67.45210925488222, 0.1, -39.12726179172041>}
  triangle { <-67.86621572950301, 0.0, -40.08802123092178>, <-67.560550732626, 0.1, -40.12136462639334>, <-67.45210925488222, 0.1, -39.12726179172041>}
  triangle { <-67.45210925488222, 0.1, -39.12726179172041>, <-67.560550732626, 0.1, -40.12136462639334>, <-67.45210925488222, 0.0, -39.12726179172041>}
  triangle { <-67.560550732626, 0.1, -40.12136462639334>, <-67.560550732626, 0.0, -40.12136462639334>, <-67.45210925488222, 0.0, -39.12726179172041>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.75777425175923, 0.0, -39.09391839624885>, <-67.45210925488222, 0.1, -39.12726179172041>, <-67.45210925488222, 0.0, -39.12726179172041>}
  triangle { <-67.560550732626, 0.0, -40.12136462639334>, <-67.560550732626, 0.1, -40.12136462639334>, <-67.86621572950301, 0.0, -40.08802123092178>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.45210925488222, 0.0, -39.12726179172041>, <-67.560550732626, 0.0, -40.12136462639334>, <-67.1464442580052, 0.1, -39.16060518719196>}
  triangle { <-67.560550732626, 0.0, -40.12136462639334>, <-67.25488573574899, 0.1, -40.15470802186489>, <-67.1464442580052, 0.1, -39.16060518719196>}
  triangle { <-67.1464442580052, 0.1, -39.16060518719196>, <-67.25488573574899, 0.1, -40.15470802186489>, <-67.1464442580052, 0.0, -39.16060518719196>}
  triangle { <-67.25488573574899, 0.1, -40.15470802186489>, <-67.25488573574899, 0.0, -40.15470802186489>, <-67.1464442580052, 0.0, -39.16060518719196>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.45210925488222, 0.0, -39.12726179172041>, <-67.1464442580052, 0.1, -39.16060518719196>, <-67.1464442580052, 0.0, -39.16060518719196>}
  triangle { <-67.25488573574899, 0.0, -40.15470802186489>, <-67.25488573574899, 0.1, -40.15470802186489>, <-67.560550732626, 0.0, -40.12136462639334>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.1464442580052, 0.0, -39.16060518719196>, <-67.25488573574899, 0.0, -40.15470802186489>, <-66.84077926112819, 0.1, -39.193948582663516>}
  triangle { <-67.25488573574899, 0.0, -40.15470802186489>, <-66.94922073887197, 0.1, -40.188051417336446>, <-66.84077926112819, 0.1, -39.193948582663516>}
  triangle { <-66.84077926112819, 0.1, -39.193948582663516>, <-66.94922073887197, 0.1, -40.188051417336446>, <-66.84077926112819, 0.0, -39.193948582663516>}
  triangle { <-66.94922073887197, 0.1, -40.188051417336446>, <-66.94922073887197, 0.0, -40.188051417336446>, <-66.84077926112819, 0.0, -39.193948582663516>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-67.1464442580052, 0.0, -39.16060518719196>, <-66.84077926112819, 0.1, -39.193948582663516>, <-66.84077926112819, 0.0, -39.193948582663516>}
  triangle { <-66.94922073887197, 0.0, -40.188051417336446>, <-66.94922073887197, 0.1, -40.188051417336446>, <-67.25488573574899, 0.0, -40.15470802186489>}
 uv_mapping  texture { texture_STEPS_DEFAULT }}
mesh {
  triangle { <-64.72107621957312, 0.0, 44.29909878818177>, <-65.71689514182464, 0.0, 44.39044797584018>, <-64.81609053887423, 0.0, 43.26332540617079>}
  triangle { <-65.71689514182464, 0.0, 44.39044797584018>, <-65.81190946112575, 0.0, 43.3546745938292>, <-64.81609053887423, 0.0, 43.26332540617079>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-80.58025817304987, 0.0, -45.23563992663016>, <-79.593041478014, 0.0, -45.39502373083384>, <-79.24374915028855, 0.0, -37.84306491148583>}
  triangle { <-79.593041478014, 0.0, -45.39502373083384>, <-78.64625084971144, 0.0, -38.64493508851417>, <-79.24374915028855, 0.0, -37.84306491148583>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <49.669, 7.5, 9.112>, <49.669, 0.0, 9.112>, <45.374, 7.5, -29.372>}
  triangle { <49.669, 0.0, 9.112>, <45.374, 0.0, -29.372>, <45.374, 7.5, -29.372>}
  triangle { <45.374, 7.5, -29.372>, <45.374, 0.0, -29.372>, <52.347, 7.5, -30.151>}
  triangle { <45.374, 0.0, -29.372>, <52.347, 0.0, -30.151>, <52.347, 7.5, -30.151>}
  triangle { <52.347, 7.5, -30.151>, <52.347, 0.0, -30.151>, <52.015, 7.5, -33.145>}
  triangle { <52.347, 0.0, -30.151>, <52.015, 0.0, -33.145>, <52.015, 7.5, -33.145>}
  triangle { <52.015, 7.5, -33.145>, <52.015, 0.0, -33.145>, <50.415, 7.5, -47.75>}
  triangle { <52.015, 0.0, -33.145>, <50.415, 0.0, -47.75>, <50.415, 7.5, -47.75>}
  triangle { <50.415, 7.5, -47.75>, <50.415, 0.0, -47.75>, <69.088, 7.5, -49.799>}
  triangle { <50.415, 0.0, -47.75>, <69.088, 0.0, -49.799>, <69.088, 7.5, -49.799>}
  triangle { <69.088, 7.5, -49.799>, <69.088, 0.0, -49.799>, <71.083, 7.5, -31.576>}
  triangle { <69.088, 0.0, -49.799>, <71.083, 0.0, -31.576>, <71.083, 7.5, -31.576>}
  triangle { <71.083, 7.5, -31.576>, <71.083, 0.0, -31.576>, <77.004, 7.5, -32.232>}
  triangle { <71.083, 0.0, -31.576>, <77.004, 0.0, -32.232>, <77.004, 7.5, -32.232>}
  triangle { <77.004, 7.5, -32.232>, <77.004, 0.0, -32.232>, <78.442, 7.5, -19.086>}
  triangle { <77.004, 0.0, -32.232>, <78.442, 0.0, -19.086>, <78.442, 7.5, -19.086>}
  triangle { <78.442, 7.5, -19.086>, <78.442, 0.0, -19.086>, <80.671, 7.5, -19.331>}
  triangle { <78.442, 0.0, -19.086>, <80.671, 0.0, -19.331>, <80.671, 7.5, -19.331>}
  triangle { <80.671, 7.5, -19.331>, <80.671, 0.0, -19.331>, <81.434, 7.5, -12.362>}
  triangle { <80.671, 0.0, -19.331>, <81.434, 0.0, -12.362>, <81.434, 7.5, -12.362>}
  triangle { <81.434, 7.5, -12.362>, <81.434, 0.0, -12.362>, <81.821, 7.5, -8.522>}
  triangle { <81.434, 0.0, -12.362>, <81.821, 0.0, -8.522>, <81.821, 7.5, -8.522>}
  triangle { <81.821, 7.5, -8.522>, <81.821, 0.0, -8.522>, <78.613, 7.5, -8.188>}
  triangle { <81.821, 0.0, -8.522>, <78.613, 0.0, -8.188>, <78.613, 7.5, -8.188>}
  triangle { <78.613, 7.5, -8.188>, <78.613, 0.0, -8.188>, <80.006, 7.5, 5.482>}
  triangle { <78.613, 0.0, -8.188>, <80.006, 0.0, 5.482>, <80.006, 7.5, 5.482>}
  triangle { <80.006, 7.5, 5.482>, <80.006, 0.0, 5.482>, <75.692, 7.5, 5.917>}
  triangle { <80.006, 0.0, 5.482>, <75.692, 0.0, 5.917>, <75.692, 7.5, 5.917>}
  triangle { <75.692, 7.5, 5.917>, <75.692, 0.0, 5.917>, <77.606, 7.5, 24.663>}
  triangle { <75.692, 0.0, 5.917>, <77.606, 0.0, 24.663>, <77.606, 7.5, 24.663>}
  triangle { <77.606, 7.5, 24.663>, <77.606, 0.0, 24.663>, <57.972, 7.5, 26.667>}
  triangle { <77.606, 0.0, 24.663>, <57.972, 0.0, 26.667>, <57.972, 7.5, 26.667>}
  triangle { <57.972, 7.5, 26.667>, <57.972, 0.0, 26.667>, <56.364, 7.5, 10.848>}
  triangle { <57.972, 0.0, 26.667>, <56.364, 0.0, 10.848>, <56.364, 7.5, 10.848>}
  triangle { <56.364, 7.5, 10.848>, <56.364, 0.0, 10.848>, <56.085, 7.5, 8.399>}
  triangle { <56.364, 0.0, 10.848>, <56.085, 0.0, 8.399>, <56.085, 7.5, 8.399>}
  triangle { <56.085, 7.5, 8.399>, <56.085, 0.0, 8.399>, <49.669, 7.5, 9.112>}
  triangle { <56.085, 0.0, 8.399>, <49.669, 0.0, 9.112>, <49.669, 7.5, 9.112>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <52.015, 7.5, -33.145>, <50.415, 7.5, -47.75>, <69.088, 7.5, -49.799>}
  triangle { <71.083, 7.5, -31.576>, <52.015, 7.5, -33.145>, <69.088, 7.5, -49.799>}
  triangle { <52.347, 7.5, -30.151>, <52.015, 7.5, -33.145>, <71.083, 7.5, -31.576>}
  triangle { <71.083, 7.5, -31.576>, <77.004, 7.5, -32.232>, <78.442, 7.5, -19.086>}
  triangle { <78.442, 7.5, -19.086>, <80.671, 7.5, -19.331>, <81.434, 7.5, -12.362>}
  triangle { <78.613, 7.5, -8.188>, <78.442, 7.5, -19.086>, <81.434, 7.5, -12.362>}
  triangle { <78.613, 7.5, -8.188>, <81.434, 7.5, -12.362>, <81.821, 7.5, -8.522>}
  triangle { <78.613, 7.5, -8.188>, <52.347, 7.5, -30.151>, <78.442, 7.5, -19.086>}
  triangle { <78.442, 7.5, -19.086>, <52.347, 7.5, -30.151>, <71.083, 7.5, -31.576>}
  triangle { <75.692, 7.5, 5.917>, <78.613, 7.5, -8.188>, <80.006, 7.5, 5.482>}
  triangle { <78.613, 7.5, -8.188>, <56.085, 7.5, 8.399>, <52.347, 7.5, -30.151>}
  triangle { <75.692, 7.5, 5.917>, <56.085, 7.5, 8.399>, <78.613, 7.5, -8.188>}
  triangle { <45.374, 7.5, -29.372>, <52.347, 7.5, -30.151>, <56.085, 7.5, 8.399>}
  triangle { <49.669, 7.5, 9.112>, <45.374, 7.5, -29.372>, <56.085, 7.5, 8.399>}
  triangle { <56.364, 7.5, 10.848>, <56.085, 7.5, 8.399>, <75.692, 7.5, 5.917>}
  triangle { <56.364, 7.5, 10.848>, <75.692, 7.5, 5.917>, <77.606, 7.5, 24.663>}
  triangle { <57.972, 7.5, 26.667>, <56.364, 7.5, 10.848>, <77.606, 7.5, 24.663>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <105.471, 0.0, -23.806>, <93.97, 0.0, -130.003>, <140.04, 0.0, -135.247>}
  triangle { <153.779, 0.0, -7.297>, <105.471, 0.0, -23.806>, <140.04, 0.0, -135.247>}
  triangle { <153.779, 0.0, -7.297>, <106.945, 0.0, -10.603>, <105.471, 0.0, -23.806>}
  triangle { <107.844, 0.0, -2.332>, <106.945, 0.0, -10.603>, <153.779, 0.0, -7.297>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-35.076, 0.0, 103.645>, <-64.766, 0.0, 208.821>, <-78.496, 0.0, 88.95>}
  triangle { <-35.076, 0.0, 103.645>, <-78.496, 0.0, 88.95>, <-36.352, 0.0, 89.863>}
  triangle { <-31.949, 0.0, 106.038>, <-64.766, 0.0, 208.821>, <-35.076, 0.0, 103.645>}
  triangle { <-36.352, 0.0, 89.863>, <-78.496, 0.0, 88.95>, <-75.45, 0.0, 81.581>}
  triangle { <-31.949, 0.0, 106.038>, <-53.102, 0.0, 207.552>, <-64.766, 0.0, 208.821>}
  triangle { <-77.013, 0.0, 83.028>, <-75.45, 0.0, 81.581>, <-78.496, 0.0, 88.95>}
  triangle { <-75.45, 0.0, 81.581>, <-37.484, 0.0, 77.607>, <-36.352, 0.0, 89.863>}
  triangle { <-53.102, 0.0, 207.552>, <-31.949, 0.0, 106.038>, <-23.233, 0.0, 112.74>}
  triangle { <-77.013, 0.0, 83.028>, <-78.496, 0.0, 88.95>, <-78.379, 0.0, 84.497>}
  triangle { <-53.102, 0.0, 207.552>, <-23.233, 0.0, 112.74>, <-14.508, 0.0, 119.441>}
  triangle { <-53.102, 0.0, 207.552>, <-14.508, 0.0, 119.441>, <55.789, 0.0, 152.092>}
  triangle { <55.789, 0.0, 152.092>, <-14.508, 0.0, 119.441>, <13.852, 0.0, 114.966>}
  triangle { <-53.102, 0.0, 207.552>, <55.789, 0.0, 152.092>, <63.247, 0.0, 190.731>}
  triangle { <4.686, 0.0, 112.317>, <13.852, 0.0, 114.966>, <-14.508, 0.0, 119.441>}
  triangle { <-53.102, 0.0, 207.552>, <63.247, 0.0, 190.731>, <106.963, 0.0, 190.175>}
  triangle { <4.686, 0.0, 112.317>, <-14.508, 0.0, 119.441>, <-1.334, 0.0, 112.083>}
  triangle { <9.269, 0.0, 112.083>, <13.852, 0.0, 114.966>, <4.686, 0.0, 112.317>}
  triangle { <63.247, 0.0, 190.731>, <106.595, 0.0, 185.9>, <106.963, 0.0, 190.175>}
  triangle { <-7.607, 0.0, 113.04>, <-1.334, 0.0, 112.083>, <-14.508, 0.0, 119.441>}
  triangle { <-14.508, 0.0, 119.441>, <-12.666, 0.0, 116.658>, <-7.607, 0.0, 113.04>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-27.061, 10.0, 41.684>, <-27.061, 0.0, 41.684>, <-27.798, 10.0, 34.559>}
  triangle { <-27.061, 0.0, 41.684>, <-27.798, 0.0, 34.559>, <-27.798, 10.0, 34.559>}
  triangle { <-27.798, 10.0, 34.559>, <-27.798, 0.0, 34.559>, <-32.075, 10.0, 35.004>}
  triangle { <-27.798, 0.0, 34.559>, <-32.075, 0.0, 35.004>, <-32.075, 10.0, 35.004>}
  triangle { <-32.075, 10.0, 35.004>, <-32.075, 0.0, 35.004>, <-32.812, 10.0, 27.958>}
  triangle { <-32.075, 0.0, 35.004>, <-32.812, 0.0, 27.958>, <-32.812, 10.0, 27.958>}
  triangle { <-32.812, 10.0, 27.958>, <-32.812, 0.0, 27.958>, <-33.441, 10.0, 21.78>}
  triangle { <-32.812, 0.0, 27.958>, <-33.441, 0.0, 21.78>, <-33.441, 10.0, 21.78>}
  triangle { <-33.441, 10.0, 21.78>, <-33.441, 0.0, 21.78>, <-29.334, 10.0, 21.368>}
  triangle { <-33.441, 0.0, 21.78>, <-29.334, 0.0, 21.368>, <-29.334, 10.0, 21.368>}
  triangle { <-29.334, 10.0, 21.368>, <-29.334, 0.0, 21.368>, <-29.685, 10.0, 17.85>}
  triangle { <-29.334, 0.0, 21.368>, <-29.685, 0.0, 17.85>, <-29.685, 10.0, 17.85>}
  triangle { <-29.685, 10.0, 17.85>, <-29.685, 0.0, 17.85>, <-1.164, 10.0, 14.956>}
  triangle { <-29.685, 0.0, 17.85>, <-1.164, 0.0, 14.956>, <-1.164, 10.0, 14.956>}
  triangle { <-1.164, 10.0, 14.956>, <-1.164, 0.0, 14.956>, <23.808, 10.0, 12.362>}
  triangle { <-1.164, 0.0, 14.956>, <23.808, 0.0, 12.362>, <23.808, 10.0, 12.362>}
  triangle { <23.808, 10.0, 12.362>, <23.808, 0.0, 12.362>, <24.23, 10.0, 16.47>}
  triangle { <23.808, 0.0, 12.362>, <24.23, 0.0, 16.47>, <24.23, 10.0, 16.47>}
  triangle { <24.23, 10.0, 16.47>, <24.23, 0.0, 16.47>, <27.142, 10.0, 16.169>}
  triangle { <24.23, 0.0, 16.47>, <27.142, 0.0, 16.169>, <27.142, 10.0, 16.169>}
  triangle { <27.142, 10.0, 16.169>, <27.142, 0.0, 16.169>, <27.924, 10.0, 23.672>}
  triangle { <27.142, 0.0, 16.169>, <27.924, 0.0, 23.672>, <27.924, 10.0, 23.672>}
  triangle { <27.924, 10.0, 23.672>, <27.924, 0.0, 23.672>, <28.678, 10.0, 31.197>}
  triangle { <27.924, 0.0, 23.672>, <28.678, 0.0, 31.197>, <28.678, 10.0, 31.197>}
  triangle { <28.678, 10.0, 31.197>, <28.678, 0.0, 31.197>, <26.468, 10.0, 31.42>}
  triangle { <28.678, 0.0, 31.197>, <26.468, 0.0, 31.42>, <26.468, 10.0, 31.42>}
  triangle { <26.468, 10.0, 31.42>, <26.468, 0.0, 31.42>, <26.935, 10.0, 36.14>}
  triangle { <26.468, 0.0, 31.42>, <26.935, 0.0, 36.14>, <26.935, 10.0, 36.14>}
  triangle { <26.935, 10.0, 36.14>, <26.935, 0.0, 36.14>, <1.793, 10.0, 38.678>}
  triangle { <26.935, 0.0, 36.14>, <1.793, 0.0, 38.678>, <1.793, 10.0, 38.678>}
  triangle { <1.793, 10.0, 38.678>, <1.793, 0.0, 38.678>, <-27.061, 10.0, 41.684>}
  triangle { <1.793, 0.0, 38.678>, <-27.061, 0.0, 41.684>, <-27.061, 10.0, 41.684>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <-1.164, 10.0, 14.956>, <23.808, 10.0, 12.362>, <24.23, 10.0, 16.47>}
  triangle { <-29.334, 10.0, 21.368>, <-29.685, 10.0, 17.85>, <-1.164, 10.0, 14.956>}
  triangle { <-32.812, 10.0, 27.958>, <-33.441, 10.0, 21.78>, <-29.334, 10.0, 21.368>}
  triangle { <27.924, 10.0, 23.672>, <26.468, 10.0, 31.42>, <24.23, 10.0, 16.47>}
  triangle { <27.924, 10.0, 23.672>, <24.23, 10.0, 16.47>, <27.142, 10.0, 16.169>}
  triangle { <26.468, 10.0, 31.42>, <27.924, 10.0, 23.672>, <28.678, 10.0, 31.197>}
  triangle { <-27.798, 10.0, 34.559>, <-29.334, 10.0, 21.368>, <-1.164, 10.0, 14.956>}
  triangle { <-32.812, 10.0, 27.958>, <-29.334, 10.0, 21.368>, <-27.798, 10.0, 34.559>}
  triangle { <-32.075, 10.0, 35.004>, <-32.812, 10.0, 27.958>, <-27.798, 10.0, 34.559>}
  triangle { <1.793, 10.0, 38.678>, <-1.164, 10.0, 14.956>, <24.23, 10.0, 16.47>}
  triangle { <1.793, 10.0, 38.678>, <24.23, 10.0, 16.47>, <26.468, 10.0, 31.42>}
  triangle { <1.793, 10.0, 38.678>, <26.468, 10.0, 31.42>, <26.935, 10.0, 36.14>}
  triangle { <-27.798, 10.0, 34.559>, <-1.164, 10.0, 14.956>, <1.793, 10.0, 38.678>}
  triangle { <-27.061, 10.0, 41.684>, <-27.798, 10.0, 34.559>, <1.793, 10.0, 38.678>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <-30.826, 10.0, -20.021>, <-30.826, 0.0, -20.021>, <-31.491, 10.0, -26.21>}
  triangle { <-30.826, 0.0, -20.021>, <-31.491, 0.0, -26.21>, <-31.491, 10.0, -26.21>}
  triangle { <-31.491, 10.0, -26.21>, <-31.491, 0.0, -26.21>, <-35.094, 10.0, -25.832>}
  triangle { <-31.491, 0.0, -26.21>, <-35.094, 0.0, -25.832>, <-35.094, 10.0, -25.832>}
  triangle { <-35.094, 10.0, -25.832>, <-35.094, 0.0, -25.832>, <-35.813, 10.0, -32.555>}
  triangle { <-35.094, 0.0, -25.832>, <-35.813, 0.0, -32.555>, <-35.813, 10.0, -32.555>}
  triangle { <-35.813, 10.0, -32.555>, <-35.813, 0.0, -32.555>, <-36.532, 10.0, -39.29>}
  triangle { <-35.813, 0.0, -32.555>, <-36.532, 0.0, -39.29>, <-36.532, 10.0, -39.29>}
  triangle { <-36.532, 10.0, -39.29>, <-36.532, 0.0, -39.29>, <-32.39, 10.0, -39.735>}
  triangle { <-36.532, 0.0, -39.29>, <-32.39, 0.0, -39.735>, <-32.39, 10.0, -39.735>}
  triangle { <-32.39, 10.0, -39.735>, <-32.39, 0.0, -39.735>, <-32.821, 10.0, -43.743>}
  triangle { <-32.39, 0.0, -39.735>, <-32.821, 0.0, -43.743>, <-32.821, 10.0, -43.743>}
  triangle { <-32.821, 10.0, -43.743>, <-32.821, 0.0, -43.743>, <-11.794, 10.0, -45.992>}
  triangle { <-32.821, 0.0, -43.743>, <-11.794, 0.0, -45.992>, <-11.794, 10.0, -45.992>}
  triangle { <-11.794, 10.0, -45.992>, <-11.794, 0.0, -45.992>, <-12.019, 10.0, -48.084>}
  triangle { <-11.794, 0.0, -45.992>, <-12.019, 0.0, -48.084>, <-12.019, 10.0, -48.084>}
  triangle { <-12.019, 10.0, -48.084>, <-12.019, 0.0, -48.084>, <-7.526, 10.0, -48.563>}
  triangle { <-12.019, 0.0, -48.084>, <-7.526, 0.0, -48.563>, <-7.526, 10.0, -48.563>}
  triangle { <-7.526, 10.0, -48.563>, <-7.526, 0.0, -48.563>, <-3.024, 10.0, -49.042>}
  triangle { <-7.526, 0.0, -48.563>, <-3.024, 0.0, -49.042>, <-3.024, 10.0, -49.042>}
  triangle { <-3.024, 10.0, -49.042>, <-3.024, 0.0, -49.042>, <-2.763, 10.0, -46.659>}
  triangle { <-3.024, 0.0, -49.042>, <-2.763, 0.0, -46.659>, <-2.763, 10.0, -46.659>}
  triangle { <-2.763, 10.0, -46.659>, <-2.763, 0.0, -46.659>, <20.151, 10.0, -49.097>}
  triangle { <-2.763, 0.0, -46.659>, <20.151, 0.0, -49.097>, <20.151, 10.0, -49.097>}
  triangle { <20.151, 10.0, -49.097>, <20.151, 0.0, -49.097>, <20.636, 10.0, -44.522>}
  triangle { <20.151, 0.0, -49.097>, <20.636, 0.0, -44.522>, <20.636, 10.0, -44.522>}
  triangle { <20.636, 10.0, -44.522>, <20.636, 0.0, -44.522>, <25.048, 10.0, -45.001>}
  triangle { <20.636, 0.0, -44.522>, <25.048, 0.0, -45.001>, <25.048, 10.0, -45.001>}
  triangle { <25.048, 10.0, -45.001>, <25.048, 0.0, -45.001>, <25.776, 10.0, -38.144>}
  triangle { <25.048, 0.0, -45.001>, <25.776, 0.0, -38.144>, <25.776, 10.0, -38.144>}
  triangle { <25.776, 10.0, -38.144>, <25.776, 0.0, -38.144>, <26.504, 10.0, -31.297>}
  triangle { <25.776, 0.0, -38.144>, <26.504, 0.0, -31.297>, <26.504, 10.0, -31.297>}
  triangle { <26.504, 10.0, -31.297>, <26.504, 0.0, -31.297>, <22.514, 10.0, -30.874>}
  triangle { <26.504, 0.0, -31.297>, <22.514, 0.0, -30.874>, <22.514, 10.0, -30.874>}
  triangle { <22.514, 10.0, -30.874>, <22.514, 0.0, -30.874>, <23.062, 10.0, -25.765>}
  triangle { <22.514, 0.0, -30.874>, <23.062, 0.0, -25.765>, <23.062, 10.0, -25.765>}
  triangle { <23.062, 10.0, -25.765>, <23.062, 0.0, -25.765>, <-3.886, 10.0, -22.893>}
  triangle { <23.062, 0.0, -25.765>, <-3.886, 0.0, -22.893>, <-3.886, 10.0, -22.893>}
  triangle { <-3.886, 10.0, -22.893>, <-3.886, 0.0, -22.893>, <-30.826, 10.0, -20.021>}
  triangle { <-3.886, 0.0, -22.893>, <-30.826, 0.0, -20.021>, <-30.826, 10.0, -20.021>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <-11.794, 10.0, -45.992>, <-12.019, 10.0, -48.084>, <-7.526, 10.0, -48.563>}
  triangle { <-2.763, 10.0, -46.659>, <20.151, 10.0, -49.097>, <20.636, 10.0, -44.522>}
  triangle { <-32.39, 10.0, -39.735>, <-32.821, 10.0, -43.743>, <-11.794, 10.0, -45.992>}
  triangle { <20.636, 10.0, -44.522>, <25.048, 10.0, -45.001>, <25.776, 10.0, -38.144>}
  triangle { <-35.813, 10.0, -32.555>, <-36.532, 10.0, -39.29>, <-32.39, 10.0, -39.735>}
  triangle { <22.514, 10.0, -30.874>, <20.636, 10.0, -44.522>, <25.776, 10.0, -38.144>}
  triangle { <22.514, 10.0, -30.874>, <25.776, 10.0, -38.144>, <26.504, 10.0, -31.297>}
  triangle { <-31.491, 10.0, -26.21>, <-32.39, 10.0, -39.735>, <-11.794, 10.0, -45.992>}
  triangle { <-35.813, 10.0, -32.555>, <-32.39, 10.0, -39.735>, <-31.491, 10.0, -26.21>}
  triangle { <-35.094, 10.0, -25.832>, <-35.813, 10.0, -32.555>, <-31.491, 10.0, -26.21>}
  triangle { <-7.526, 10.0, -48.563>, <-2.763, 10.0, -46.659>, <-11.794, 10.0, -45.992>}
  triangle { <-2.763, 10.0, -46.659>, <-7.526, 10.0, -48.563>, <-3.024, 10.0, -49.042>}
  triangle { <22.514, 10.0, -30.874>, <-3.886, 10.0, -22.893>, <-2.763, 10.0, -46.659>}
  triangle { <22.514, 10.0, -30.874>, <-2.763, 10.0, -46.659>, <20.636, 10.0, -44.522>}
  triangle { <-3.886, 10.0, -22.893>, <22.514, 10.0, -30.874>, <23.062, 10.0, -25.765>}
  triangle { <-3.886, 10.0, -22.893>, <-11.794, 10.0, -45.992>, <-2.763, 10.0, -46.659>}
  triangle { <-31.491, 10.0, -26.21>, <-11.794, 10.0, -45.992>, <-3.886, 10.0, -22.893>}
  triangle { <-30.826, 10.0, -20.021>, <-31.491, 10.0, -26.21>, <-3.886, 10.0, -22.893>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <-89.89, 7.5, -78.686>, <-89.89, 0.0, -78.686>, <-94.59, 7.5, -119.762>}
  triangle { <-89.89, 0.0, -78.686>, <-94.59, 0.0, -119.762>, <-94.59, 7.5, -119.762>}
  triangle { <-94.59, 7.5, -119.762>, <-94.59, 0.0, -119.762>, <-90.825, 7.5, -120.196>}
  triangle { <-94.59, 0.0, -119.762>, <-90.825, 0.0, -120.196>, <-90.825, 7.5, -120.196>}
  triangle { <-90.825, 7.5, -120.196>, <-90.825, 0.0, -120.196>, <-92.217, 7.5, -132.397>}
  triangle { <-90.825, 0.0, -120.196>, <-92.217, 0.0, -132.397>, <-92.217, 7.5, -132.397>}
  triangle { <-92.217, 7.5, -132.397>, <-92.217, 0.0, -132.397>, <-95.686, 7.5, -132.007>}
  triangle { <-92.217, 0.0, -132.397>, <-95.686, 0.0, -132.007>, <-95.686, 7.5, -132.007>}
  triangle { <-95.686, 7.5, -132.007>, <-95.686, 0.0, -132.007>, <-101.086, 7.5, -179.195>}
  triangle { <-95.686, 0.0, -132.007>, <-101.086, 0.0, -179.195>, <-101.086, 7.5, -179.195>}
  triangle { <-101.086, 7.5, -179.195>, <-101.086, 0.0, -179.195>, <-98.301, 7.5, -179.518>}
  triangle { <-101.086, 0.0, -179.195>, <-98.301, 0.0, -179.518>, <-98.301, 7.5, -179.518>}
  triangle { <-98.301, 7.5, -179.518>, <-98.301, 0.0, -179.518>, <-99.505, 7.5, -190.082>}
  triangle { <-98.301, 0.0, -179.518>, <-99.505, 0.0, -190.082>, <-99.505, 7.5, -190.082>}
  triangle { <-99.505, 7.5, -190.082>, <-99.505, 0.0, -190.082>, <-103.045, 7.5, -189.681>}
  triangle { <-99.505, 0.0, -190.082>, <-103.045, 0.0, -189.681>, <-103.045, 7.5, -189.681>}
  triangle { <-103.045, 7.5, -189.681>, <-103.045, 0.0, -189.681>, <-107.871, 7.5, -231.97>}
  triangle { <-103.045, 0.0, -189.681>, <-107.871, 0.0, -231.97>, <-107.871, 7.5, -231.97>}
  triangle { <-107.871, 7.5, -231.97>, <-107.871, 0.0, -231.97>, <-90.115, 7.5, -233.985>}
  triangle { <-107.871, 0.0, -231.97>, <-90.115, 0.0, -233.985>, <-90.115, 7.5, -233.985>}
  triangle { <-90.115, 7.5, -233.985>, <-90.115, 0.0, -233.985>, <-88.174, 7.5, -216.998>}
  triangle { <-90.115, 0.0, -233.985>, <-88.174, 0.0, -216.998>, <-88.174, 7.5, -216.998>}
  triangle { <-88.174, 7.5, -216.998>, <-88.174, 0.0, -216.998>, <-52.482, 7.5, -221.072>}
  triangle { <-88.174, 0.0, -216.998>, <-52.482, 0.0, -221.072>, <-52.482, 7.5, -221.072>}
  triangle { <-52.482, 7.5, -221.072>, <-52.482, 0.0, -221.072>, <-51.062, 7.5, -208.594>}
  triangle { <-52.482, 0.0, -221.072>, <-51.062, 0.0, -208.594>, <-51.062, 7.5, -208.594>}
  triangle { <-51.062, 7.5, -208.594>, <-51.062, 0.0, -208.594>, <-56.274, 7.5, -208.004>}
  triangle { <-51.062, 0.0, -208.594>, <-56.274, 0.0, -208.004>, <-56.274, 7.5, -208.004>}
  triangle { <-56.274, 7.5, -208.004>, <-56.274, 0.0, -208.004>, <-54.656, 7.5, -193.766>}
  triangle { <-56.274, 0.0, -208.004>, <-54.656, 0.0, -193.766>, <-54.656, 7.5, -193.766>}
  triangle { <-54.656, 7.5, -193.766>, <-54.656, 0.0, -193.766>, <-81.326, 7.5, -190.727>}
  triangle { <-54.656, 0.0, -193.766>, <-81.326, 0.0, -190.727>, <-81.326, 7.5, -190.727>}
  triangle { <-81.326, 7.5, -190.727>, <-81.326, 0.0, -190.727>, <-73.248, 7.5, -119.974>}
  triangle { <-81.326, 0.0, -190.727>, <-73.248, 0.0, -119.974>, <-73.248, 7.5, -119.974>}
  triangle { <-73.248, 7.5, -119.974>, <-73.248, 0.0, -119.974>, <-49.229, 7.5, -122.712>}
  triangle { <-73.248, 0.0, -119.974>, <-49.229, 0.0, -122.712>, <-49.229, 7.5, -122.712>}
  triangle { <-49.229, 7.5, -122.712>, <-49.229, 0.0, -122.712>, <-48.294, 7.5, -114.586>}
  triangle { <-49.229, 0.0, -122.712>, <-48.294, 0.0, -114.586>, <-48.294, 7.5, -114.586>}
  triangle { <-48.294, 7.5, -114.586>, <-48.294, 0.0, -114.586>, <-39.758, 7.5, -115.566>}
  triangle { <-48.294, 0.0, -114.586>, <-39.758, 0.0, -115.566>, <-39.758, 7.5, -115.566>}
  triangle { <-39.758, 7.5, -115.566>, <-39.758, 0.0, -115.566>, <-37.547, 7.5, -96.152>}
  triangle { <-39.758, 0.0, -115.566>, <-37.547, 0.0, -96.152>, <-37.547, 7.5, -96.152>}
  triangle { <-37.547, 7.5, -96.152>, <-37.547, 0.0, -96.152>, <-72.538, 7.5, -92.155>}
  triangle { <-37.547, 0.0, -96.152>, <-72.538, 0.0, -92.155>, <-72.538, 7.5, -92.155>}
  triangle { <-72.538, 7.5, -92.155>, <-72.538, 0.0, -92.155>, <-71.244, 7.5, -80.812>}
  triangle { <-72.538, 0.0, -92.155>, <-71.244, 0.0, -80.812>, <-71.244, 7.5, -80.812>}
  triangle { <-71.244, 7.5, -80.812>, <-71.244, 0.0, -80.812>, <-89.89, 7.5, -78.686>}
  triangle { <-71.244, 0.0, -80.812>, <-89.89, 0.0, -78.686>, <-89.89, 7.5, -78.686>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <-56.274, 7.5, -208.004>, <-88.174, 7.5, -216.998>, <-52.482, 7.5, -221.072>}
  triangle { <-51.062, 7.5, -208.594>, <-56.274, 7.5, -208.004>, <-52.482, 7.5, -221.072>}
  triangle { <-81.326, 7.5, -190.727>, <-88.174, 7.5, -216.998>, <-56.274, 7.5, -208.004>}
  triangle { <-81.326, 7.5, -190.727>, <-56.274, 7.5, -208.004>, <-54.656, 7.5, -193.766>}
  triangle { <-107.871, 7.5, -231.97>, <-88.174, 7.5, -216.998>, <-103.045, 7.5, -189.681>}
  triangle { <-88.174, 7.5, -216.998>, <-107.871, 7.5, -231.97>, <-90.115, 7.5, -233.985>}
  triangle { <-99.505, 7.5, -190.082>, <-88.174, 7.5, -216.998>, <-81.326, 7.5, -190.727>}
  triangle { <-99.505, 7.5, -190.082>, <-103.045, 7.5, -189.681>, <-88.174, 7.5, -216.998>}
  triangle { <-98.301, 7.5, -179.518>, <-99.505, 7.5, -190.082>, <-81.326, 7.5, -190.727>}
  triangle { <-92.217, 7.5, -132.397>, <-98.301, 7.5, -179.518>, <-81.326, 7.5, -190.727>}
  triangle { <-95.686, 7.5, -132.007>, <-98.301, 7.5, -179.518>, <-92.217, 7.5, -132.397>}
  triangle { <-101.086, 7.5, -179.195>, <-98.301, 7.5, -179.518>, <-95.686, 7.5, -132.007>}
  triangle { <-73.248, 7.5, -119.974>, <-92.217, 7.5, -132.397>, <-81.326, 7.5, -190.727>}
  triangle { <-73.248, 7.5, -119.974>, <-90.825, 7.5, -120.196>, <-92.217, 7.5, -132.397>}
  triangle { <-48.294, 7.5, -114.586>, <-39.758, 7.5, -115.566>, <-37.547, 7.5, -96.152>}
  triangle { <-48.294, 7.5, -114.586>, <-72.538, 7.5, -92.155>, <-73.248, 7.5, -119.974>}
  triangle { <-48.294, 7.5, -114.586>, <-73.248, 7.5, -119.974>, <-49.229, 7.5, -122.712>}
  triangle { <-72.538, 7.5, -92.155>, <-48.294, 7.5, -114.586>, <-37.547, 7.5, -96.152>}
  triangle { <-90.825, 7.5, -120.196>, <-72.538, 7.5, -92.155>, <-94.59, 7.5, -119.762>}
  triangle { <-72.538, 7.5, -92.155>, <-90.825, 7.5, -120.196>, <-73.248, 7.5, -119.974>}
  triangle { <-89.89, 7.5, -78.686>, <-72.538, 7.5, -92.155>, <-71.244, 7.5, -80.812>}
  triangle { <-89.89, 7.5, -78.686>, <-94.59, 7.5, -119.762>, <-72.538, 7.5, -92.155>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <38.994, 0.0, -71.817>, <42.49, 0.0, -78.441>, <52.365, 0.0, -73.142>}
  triangle { <52.365, 0.0, -73.142>, <42.49, 0.0, -78.441>, <54.962, 0.0, -79.71>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <59.23, 0.0, -73.621>, <62.672, 0.0, -80.556>, <75.989, 0.0, -75.369>}
  triangle { <75.989, 0.0, -75.369>, <62.672, 0.0, -80.556>, <79.062, 0.0, -82.059>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <43.451, 0.0, -60.307>, <46.461, 0.0, -66.752>, <76.771, 0.0, -63.624>}
  triangle { <76.771, 0.0, -63.624>, <46.461, 0.0, -66.752>, <80.985, 0.0, -70.548>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-34.339, 0.0, -65.072>, <-32.228, 0.0, -71.394>, <29.532, 0.0, -70.671>}
  triangle { <29.532, 0.0, -70.671>, <-32.228, 0.0, -71.394>, <32.605, 0.0, -77.417>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-47.773, 0.0, -50.912>, <-45.122, 0.0, -57.658>, <30.314, 0.0, -59.105>}
  triangle { <30.314, 0.0, -59.105>, <-45.122, 0.0, -57.658>, <33.926, 0.0, -65.372>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <55.429, 0.0, 49.977>, <53.389, 0.0, 29.973>, <70.139, 0.0, 28.27>}
  triangle { <55.429, 0.0, 49.977>, <70.139, 0.0, 28.27>, <72.179, 0.0, 48.274>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-77.768, 7.5, 44.6>, <-77.768, 0.0, 44.6>, <-81.497, 7.5, 8.7>}
  triangle { <-77.768, 0.0, 44.6>, <-81.497, 0.0, 8.7>, <-81.497, 7.5, 8.7>}
  triangle { <-81.497, 7.5, 8.7>, <-81.497, 0.0, 8.7>, <-86.287, 7.5, -35.939>}
  triangle { <-81.497, 0.0, 8.7>, <-86.287, 0.0, -35.939>, <-86.287, 7.5, -35.939>}
  triangle { <-86.287, 7.5, -35.939>, <-86.287, 0.0, -35.939>, <-72.7, 7.5, -37.398>}
  triangle { <-86.287, 0.0, -35.939>, <-72.7, 0.0, -37.398>, <-72.7, 7.5, -37.398>}
  triangle { <-72.7, 7.5, -37.398>, <-72.7, 0.0, -37.398>, <-57.415, 7.5, -38.99>}
  triangle { <-72.7, 0.0, -37.398>, <-57.415, 0.0, -38.99>, <-57.415, 7.5, -38.99>}
  triangle { <-57.415, 7.5, -38.99>, <-57.415, 0.0, -38.99>, <-55.241, 7.5, -18.062>}
  triangle { <-57.415, 0.0, -38.99>, <-55.241, 0.0, -18.062>, <-55.241, 7.5, -18.062>}
  triangle { <-55.241, 7.5, -18.062>, <-55.241, 0.0, -18.062>, <-50.667, 7.5, 25.531>}
  triangle { <-55.241, 0.0, -18.062>, <-50.667, 0.0, 25.531>, <-50.667, 7.5, 25.531>}
  triangle { <-50.667, 7.5, 25.531>, <-50.667, 0.0, 25.531>, <-48.968, 7.5, 41.583>}
  triangle { <-50.667, 0.0, 25.531>, <-48.968, 0.0, 41.583>, <-48.968, 7.5, 41.583>}
  triangle { <-48.968, 7.5, 41.583>, <-48.968, 0.0, 41.583>, <-65.314, 7.5, 43.309>}
  triangle { <-48.968, 0.0, 41.583>, <-65.314, 0.0, 43.309>, <-65.314, 7.5, 43.309>}
  triangle { <-65.314, 7.5, 43.309>, <-65.314, 0.0, 43.309>, <-77.768, 7.5, 44.6>}
  triangle { <-65.314, 0.0, 43.309>, <-77.768, 0.0, 44.6>, <-77.768, 7.5, 44.6>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <-72.7, 7.5, -37.398>, <-57.415, 7.5, -38.99>, <-55.241, 7.5, -18.062>}
  triangle { <-55.241, 7.5, -18.062>, <-81.497, 7.5, 8.7>, <-86.287, 7.5, -35.939>}
  triangle { <-55.241, 7.5, -18.062>, <-86.287, 7.5, -35.939>, <-72.7, 7.5, -37.398>}
  triangle { <-81.497, 7.5, 8.7>, <-55.241, 7.5, -18.062>, <-50.667, 7.5, 25.531>}
  triangle { <-65.314, 7.5, 43.309>, <-81.497, 7.5, 8.7>, <-50.667, 7.5, 25.531>}
  triangle { <-65.314, 7.5, 43.309>, <-50.667, 7.5, 25.531>, <-48.968, 7.5, 41.583>}
  triangle { <-77.768, 7.5, 44.6>, <-81.497, 7.5, 8.7>, <-65.314, 7.5, 43.309>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <-93.215, 0.0, -46.203>, <-90.079, 0.0, -52.348>, <-60.677, 0.0, -49.543>}
  triangle { <-60.677, 0.0, -49.543>, <-90.079, 0.0, -52.348>, <-57.784, 0.0, -56.021>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-198.448, 0.0, 133.623>, <-202.096, 0.0, 98.179>, <-180.0, 0.0, 120.0>}
  triangle { <-202.096, 0.0, 98.179>, <-198.08, 0.0, 94.895>, <-180.0, 0.0, 120.0>}
  triangle { <-198.448, 0.0, 133.623>, <-180.0, 0.0, 120.0>, <-150.0, 0.0, 120.0>}
  triangle { <-180.0, 0.0, 120.0>, <-198.08, 0.0, 94.895>, <-150.0, 0.0, 90.0>}
  triangle { <-180.0, 0.0, 120.0>, <-150.0, 0.0, 90.0>, <-150.0, 0.0, 120.0>}
  triangle { <-198.448, 0.0, 133.623>, <-150.0, 0.0, 120.0>, <-120.0, 0.0, 120.0>}
  triangle { <-94.697, 0.0, 84.119>, <-150.0, 0.0, 90.0>, <-198.08, 0.0, 94.895>}
  triangle { <-150.0, 0.0, 120.0>, <-150.0, 0.0, 90.0>, <-120.0, 0.0, 90.0>}
  triangle { <-150.0, 0.0, 120.0>, <-120.0, 0.0, 90.0>, <-120.0, 0.0, 120.0>}
  triangle { <-87.392, 0.0, 121.567>, <-198.448, 0.0, 133.623>, <-120.0, 0.0, 120.0>}
  triangle { <-120.0, 0.0, 90.0>, <-150.0, 0.0, 90.0>, <-94.697, 0.0, 84.119>}
  triangle { <-120.0, 0.0, 90.0>, <-90.0, 0.0, 120.0>, <-120.0, 0.0, 120.0>}
  triangle { <-87.392, 0.0, 121.567>, <-120.0, 0.0, 120.0>, <-90.0, 0.0, 120.0>}
  triangle { <-91.04, 0.0, 86.857>, <-120.0, 0.0, 90.0>, <-94.697, 0.0, 84.119>}
  triangle { <-90.0, 0.0, 120.0>, <-120.0, 0.0, 90.0>, <-91.04, 0.0, 86.857>}
  triangle { <-87.392, 0.0, 121.567>, <-90.0, 0.0, 120.0>, <-91.04, 0.0, 86.857>}
 uv_mapping  texture { texture_GRASS }}
mesh {
  triangle { <-39.713, 0.0, 11.382>, <-42.337, 0.0, -11.371>, <22.748, 0.0, -18.863>}
  triangle { <-39.713, 0.0, 11.382>, <22.748, 0.0, -18.863>, <28.642, 0.0, 3.512>}
  triangle { <28.642, 0.0, 3.512>, <22.748, 0.0, -18.863>, <39.138, 0.0, -27.78>}
  triangle { <28.642, 0.0, 3.512>, <39.138, 0.0, -27.78>, <43.864, 0.0, -28.325>}
  triangle { <48.501, 0.0, 11.917>, <28.642, 0.0, 3.512>, <43.864, 0.0, -28.325>}
  triangle { <29.856, 0.0, 14.065>, <28.642, 0.0, 3.512>, <48.501, 0.0, 11.917>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-2.395, 7.5, -78.686>, <-2.395, 0.0, -78.686>, <-4.444, 7.5, -100.026>}
  triangle { <-2.395, 0.0, -78.686>, <-4.444, 0.0, -100.026>, <-4.444, 7.5, -100.026>}
  triangle { <-4.444, 7.5, -100.026>, <-4.444, 0.0, -100.026>, <10.356, 7.5, -101.439>}
  triangle { <-4.444, 0.0, -100.026>, <10.356, 0.0, -101.439>, <10.356, 7.5, -101.439>}
  triangle { <10.356, 7.5, -101.439>, <10.356, 0.0, -101.439>, <12.405, 7.5, -80.1>}
  triangle { <10.356, 0.0, -101.439>, <12.405, 0.0, -80.1>, <12.405, 7.5, -80.1>}
  triangle { <12.405, 7.5, -80.1>, <12.405, 0.0, -80.1>, <-2.395, 7.5, -78.686>}
  triangle { <12.405, 0.0, -80.1>, <-2.395, 0.0, -78.686>, <-2.395, 7.5, -78.686>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <-2.395, 7.5, -78.686>, <-4.444, 7.5, -100.026>, <10.356, 7.5, -101.439>}
  triangle { <-2.395, 7.5, -78.686>, <10.356, 7.5, -101.439>, <12.405, 7.5, -80.1>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <38.734, 5.0, -80.857>, <38.734, 0.0, -80.857>, <33.432, 5.0, -131.54>}
  triangle { <38.734, 0.0, -80.857>, <33.432, 0.0, -131.54>, <33.432, 5.0, -131.54>}
  triangle { <33.432, 5.0, -131.54>, <33.432, 0.0, -131.54>, <73.015, 5.0, -135.67>}
  triangle { <33.432, 0.0, -131.54>, <73.015, 0.0, -135.67>, <73.015, 5.0, -135.67>}
  triangle { <73.015, 5.0, -135.67>, <73.015, 0.0, -135.67>, <78.316, 5.0, -84.998>}
  triangle { <73.015, 0.0, -135.67>, <78.316, 0.0, -84.998>, <78.316, 5.0, -84.998>}
  triangle { <78.316, 5.0, -84.998>, <78.316, 0.0, -84.998>, <38.734, 5.0, -80.857>}
  triangle { <78.316, 0.0, -84.998>, <38.734, 0.0, -80.857>, <38.734, 5.0, -80.857>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <38.734, 5.0, -80.857>, <33.432, 5.0, -131.54>, <73.015, 5.0, -135.67>}
  triangle { <38.734, 5.0, -80.857>, <73.015, 5.0, -135.67>, <78.316, 5.0, -84.998>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <-108.688, 0.0, -42.774>, <-102.982, 0.0, -43.376>, <-98.921, 0.0, 49.465>}
  triangle { <-98.921, 0.0, 49.465>, <-102.982, 0.0, -43.376>, <-93.215, 0.0, 48.864>}
 uv_mapping  texture { texture_ASPHALT }}
mesh {
  triangle { <-5.531, 7.5, 109.7>, <-5.531, 0.0, 109.7>, <-8.271, 7.5, 80.557>}
  triangle { <-5.531, 0.0, 109.7>, <-8.271, 0.0, 80.557>, <-8.271, 7.5, 80.557>}
  triangle { <-8.271, 7.5, 80.557>, <-8.271, 0.0, 80.557>, <21.058, 7.5, 77.807>}
  triangle { <-8.271, 0.0, 80.557>, <21.058, 0.0, 77.807>, <21.058, 7.5, 77.807>}
  triangle { <21.058, 7.5, 77.807>, <21.058, 0.0, 77.807>, <21.454, 7.5, 81.959>}
  triangle { <21.058, 0.0, 77.807>, <21.454, 0.0, 81.959>, <21.454, 7.5, 81.959>}
  triangle { <21.454, 7.5, 81.959>, <21.454, 0.0, 81.959>, <34.169, 7.5, 80.768>}
  triangle { <21.454, 0.0, 81.959>, <34.169, 0.0, 80.768>, <34.169, 7.5, 80.768>}
  triangle { <34.169, 7.5, 80.768>, <34.169, 0.0, 80.768>, <44.988, 7.5, 89.318>}
  triangle { <34.169, 0.0, 80.768>, <44.988, 0.0, 89.318>, <44.988, 7.5, 89.318>}
  triangle { <44.988, 7.5, 89.318>, <44.988, 0.0, 89.318>, <53.147, 7.5, 79.009>}
  triangle { <44.988, 0.0, 89.318>, <53.147, 0.0, 79.009>, <53.147, 7.5, 79.009>}
  triangle { <53.147, 7.5, 79.009>, <53.147, 0.0, 79.009>, <67.38, 7.5, 90.264>}
  triangle { <53.147, 0.0, 79.009>, <67.38, 0.0, 90.264>, <67.38, 7.5, 90.264>}
  triangle { <67.38, 7.5, 90.264>, <67.38, 0.0, 90.264>, <68.854, 7.5, 88.405>}
  triangle { <67.38, 0.0, 90.264>, <68.854, 0.0, 88.405>, <68.854, 7.5, 88.405>}
  triangle { <68.854, 7.5, 88.405>, <68.854, 0.0, 88.405>, <77.076, 7.5, 94.906>}
  triangle { <68.854, 0.0, 88.405>, <77.076, 0.0, 94.906>, <77.076, 7.5, 94.906>}
  triangle { <77.076, 7.5, 94.906>, <77.076, 0.0, 94.906>, <75.567, 7.5, 96.81>}
  triangle { <77.076, 0.0, 94.906>, <75.567, 0.0, 96.81>, <75.567, 7.5, 96.81>}
  triangle { <75.567, 7.5, 96.81>, <75.567, 0.0, 96.81>, <90.115, 7.5, 108.342>}
  triangle { <75.567, 0.0, 96.81>, <90.115, 0.0, 108.342>, <90.115, 7.5, 108.342>}
  triangle { <90.115, 7.5, 108.342>, <90.115, 0.0, 108.342>, <82.0, 7.5, 118.584>}
  triangle { <90.115, 0.0, 108.342>, <82.0, 0.0, 118.584>, <82.0, 7.5, 118.584>}
  triangle { <82.0, 7.5, 118.584>, <82.0, 0.0, 118.584>, <91.759, 7.5, 126.321>}
  triangle { <82.0, 0.0, 118.584>, <91.759, 0.0, 126.321>, <91.759, 7.5, 126.321>}
  triangle { <91.759, 7.5, 126.321>, <91.759, 0.0, 126.321>, <92.73, 7.5, 139.1>}
  triangle { <91.759, 0.0, 126.321>, <92.73, 0.0, 139.1>, <92.73, 7.5, 139.1>}
  triangle { <92.73, 7.5, 139.1>, <92.73, 0.0, 139.1>, <95.911, 7.5, 139.679>}
  triangle { <92.73, 0.0, 139.1>, <95.911, 0.0, 139.679>, <95.911, 7.5, 139.679>}
  triangle { <95.911, 7.5, 139.679>, <95.911, 0.0, 139.679>, <99.451, 7.5, 167.71>}
  triangle { <95.911, 0.0, 139.679>, <99.451, 0.0, 167.71>, <99.451, 7.5, 167.71>}
  triangle { <99.451, 7.5, 167.71>, <99.451, 0.0, 167.71>, <71.334, 7.5, 171.261>}
  triangle { <99.451, 0.0, 167.71>, <71.334, 0.0, 171.261>, <71.334, 7.5, 171.261>}
  triangle { <71.334, 7.5, 171.261>, <71.334, 0.0, 171.261>, <68.692, 7.5, 145.924>}
  triangle { <71.334, 0.0, 171.261>, <68.692, 0.0, 145.924>, <68.692, 7.5, 145.924>}
  triangle { <68.692, 7.5, 145.924>, <68.692, 0.0, 145.924>, <72.053, 7.5, 141.605>}
  triangle { <68.692, 0.0, 145.924>, <72.053, 0.0, 141.605>, <72.053, 7.5, 141.605>}
  triangle { <72.053, 7.5, 141.605>, <72.053, 0.0, 141.605>, <71.568, 7.5, 137.753>}
  triangle { <72.053, 0.0, 141.605>, <71.568, 0.0, 137.753>, <71.568, 7.5, 137.753>}
  triangle { <71.568, 7.5, 137.753>, <71.568, 0.0, 137.753>, <61.414, 7.5, 149.32>}
  triangle { <71.568, 0.0, 137.753>, <61.414, 0.0, 149.32>, <61.414, 7.5, 149.32>}
  triangle { <61.414, 7.5, 149.32>, <61.414, 0.0, 149.32>, <22.936, 7.5, 115.545>}
  triangle { <61.414, 0.0, 149.32>, <22.936, 0.0, 115.545>, <22.936, 7.5, 115.545>}
  triangle { <22.936, 7.5, 115.545>, <22.936, 0.0, 115.545>, <32.237, 7.5, 104.947>}
  triangle { <22.936, 0.0, 115.545>, <32.237, 0.0, 104.947>, <32.237, 7.5, 104.947>}
  triangle { <32.237, 7.5, 104.947>, <32.237, 0.0, 104.947>, <28.867, 7.5, 101.986>}
  triangle { <32.237, 0.0, 104.947>, <28.867, 0.0, 101.986>, <28.867, 7.5, 101.986>}
  triangle { <28.867, 7.5, 101.986>, <28.867, 0.0, 101.986>, <24.59, 7.5, 102.387>}
  triangle { <28.867, 0.0, 101.986>, <24.59, 0.0, 102.387>, <24.59, 7.5, 102.387>}
  triangle { <24.59, 7.5, 102.387>, <24.59, 0.0, 102.387>, <25.003, 7.5, 106.828>}
  triangle { <24.59, 0.0, 102.387>, <25.003, 0.0, 106.828>, <25.003, 7.5, 106.828>}
  triangle { <25.003, 7.5, 106.828>, <25.003, 0.0, 106.828>, <-5.531, 7.5, 109.7>}
  triangle { <25.003, 0.0, 106.828>, <-5.531, 0.0, 109.7>, <-5.531, 7.5, 109.7>}
 uv_mapping  texture { texture_BUILDING_DEFAULT }}
mesh {
  triangle { <77.076, 7.5, 94.906>, <67.38, 7.5, 90.264>, <68.854, 7.5, 88.405>}
  triangle { <75.567, 7.5, 96.81>, <67.38, 7.5, 90.264>, <77.076, 7.5, 94.906>}
  triangle { <28.867, 7.5, 101.986>, <21.454, 7.5, 81.959>, <34.169, 7.5, 80.768>}
  triangle { <28.867, 7.5, 101.986>, <34.169, 7.5, 80.768>, <44.988, 7.5, 89.318>}
  triangle { <24.59, 7.5, 102.387>, <21.454, 7.5, 81.959>, <28.867, 7.5, 101.986>}
  triangle { <32.237, 7.5, 104.947>, <28.867, 7.5, 101.986>, <44.988, 7.5, 89.318>}
  triangle { <21.454, 7.5, 81.959>, <-5.531, 7.5, 109.7>, <-8.271, 7.5, 80.557>}
  triangle { <21.454, 7.5, 81.959>, <-8.271, 7.5, 80.557>, <21.058, 7.5, 77.807>}
  triangle { <-5.531, 7.5, 109.7>, <21.454, 7.5, 81.959>, <24.59, 7.5, 102.387>}
  triangle { <-5.531, 7.5, 109.7>, <24.59, 7.5, 102.387>, <25.003, 7.5, 106.828>}
  triangle { <82.0, 7.5, 118.584>, <75.567, 7.5, 96.81>, <90.115, 7.5, 108.342>}
  triangle { <44.988, 7.5, 89.318>, <75.567, 7.5, 96.81>, <82.0, 7.5, 118.584>}
  triangle { <75.567, 7.5, 96.81>, <44.988, 7.5, 89.318>, <67.38, 7.5, 90.264>}
  triangle { <71.568, 7.5, 137.753>, <82.0, 7.5, 118.584>, <91.759, 7.5, 126.321>}
  triangle { <71.568, 7.5, 137.753>, <91.759, 7.5, 126.321>, <92.73, 7.5, 139.1>}
  triangle { <72.053, 7.5, 141.605>, <71.568, 7.5, 137.753>, <92.73, 7.5, 139.1>}
  triangle { <44.988, 7.5, 89.318>, <82.0, 7.5, 118.584>, <71.568, 7.5, 137.753>}
  triangle { <67.38, 7.5, 90.264>, <44.988, 7.5, 89.318>, <53.147, 7.5, 79.009>}
  triangle { <44.988, 7.5, 89.318>, <71.568, 7.5, 137.753>, <32.237, 7.5, 104.947>}
  triangle { <61.414, 7.5, 149.32>, <32.237, 7.5, 104.947>, <71.568, 7.5, 137.753>}
  triangle { <22.936, 7.5, 115.545>, <32.237, 7.5, 104.947>, <61.414, 7.5, 149.32>}
  triangle { <99.451, 7.5, 167.71>, <71.334, 7.5, 171.261>, <68.692, 7.5, 145.924>}
  triangle { <92.73, 7.5, 139.1>, <68.692, 7.5, 145.924>, <72.053, 7.5, 141.605>}
  triangle { <99.451, 7.5, 167.71>, <92.73, 7.5, 139.1>, <95.911, 7.5, 139.679>}
  triangle { <92.73, 7.5, 139.1>, <99.451, 7.5, 167.71>, <68.692, 7.5, 145.924>}
 uv_mapping  texture { texture_ROOF_DEFAULT }}
mesh {
  triangle { <-119.70444432252188, 0.0, -75.3292884360603>, <-120.0, 0.0, -75.54588711111396>, <-109.88384456761491, 0.0, -89.94372765699735>}
  triangle { <-109.88384456761491, 0.0, -89.94372765699735>, <-120.0, 0.0, -75.54588711111396>, <-120.0, 0.0, -90.0>}
  triangle { <-119.70444432252188, 0.0, -75.3292884360603>, <-109.88384456761491, 0.0, -89.94372765699735>, <-107.45705535517627, 0.0, -68.79933137440425>}
  triangle { <-109.88384456761491, 0.0, -89.94372765699735>, <-120.0, 0.0, -90.0>, <-109.89021821470797, 0.0, -90.0>}
  triangle { <-107.45705535517627, 0.0, -68.79933137440425>, <-108.7671890818432, 0.0, -67.31389514682084>, <-119.70444432252188, 0.0, -75.3292884360603>}
  triangle { <-108.48549285779897, 0.0, -67.36157730792561>, <-108.7671890818432, 0.0, -67.31389514682084>, <-107.45705535517627, 0.0, -68.79933137440425>}
  triangle { <-110.83312747133058, 0.0, -59.63477061525853>, <-111.0660867671541, 0.0, -62.27070285484232>, <-109.61305123195578, 0.0, -59.978565632009314>}
  triangle { <-109.61305123195578, 0.0, -59.978565632009314>, <-111.0660867671541, 0.0, -62.27070285484232>, <-108.51516851072184, 0.0, -65.60904347897728>}
  triangle { <-104.7184217242849, 0.0, -60.49104259451872>, <-109.61305123195578, 0.0, -59.978565632009314>, <-108.51516851072184, 0.0, -65.60904347897728>}
  triangle { <-104.7184217242849, 0.0, -60.49104259451872>, <-108.51516851072184, 0.0, -65.60904347897728>, <-103.29872393418589, 0.0, -62.26907453927933>}
  triangle { <-108.51516851072184, 0.0, -65.60904347897728>, <-107.66185660638548, 0.0, -66.79445886759984>, <-103.29872393418589, 0.0, -62.26907453927933>}
  triangle { <-107.66185660638548, 0.0, -66.79445886759984>, <-106.48694464482372, 0.0, -68.55666862559575>, <-103.29872393418589, 0.0, -62.26907453927933>}
  triangle { <-103.29872393418589, 0.0, -62.26907453927933>, <-106.48694464482372, 0.0, -68.55666862559575>, <-106.58224694674793, 0.0, -89.76282948136632>}
  triangle { <-106.48694464482372, 0.0, -68.55666862559575>, <-108.88390770860359, 0.0, -90.0>, <-106.58224694674793, 0.0, -89.76282948136632>}
  triangle { <-108.88390770860359, 0.0, -90.0>, <-106.61057172997582, 0.0, -90.0>, <-106.58224694674793, 0.0, -89.76282948136632>}
  triangle { <-120.0, 0.0, -59.02590526396935>, <-120.0, 0.0, -60.0>, <-113.16528715777545, 0.0, -59.63447602196205>}
  triangle { <-113.16528715777545, 0.0, -59.63447602196205>, <-120.0, 0.0, -60.0>, <-112.02591323284591, 0.0, -62.55129714515768>}
  triangle { <-120.0, 0.0, -60.0>, <-120.0, 0.0, -74.3060997994761>, <-112.02591323284591, 0.0, -62.55129714515768>}
  triangle { <-113.16528715777545, 0.0, -59.63447602196205>, <-112.02591323284591, 0.0, -62.55129714515768>, <-111.83024020556641, 0.0, -59.55883514775651>}
  triangle { <-112.02591323284591, 0.0, -62.55129714515768>, <-120.0, 0.0, -74.3060997994761>, <-109.35830043679944, 0.0, -66.5073051852903>}
  triangle { <-112.02591323284591, 0.0, -62.55129714515768>, <-109.35830043679944, 0.0, -66.5073051852903>, <-109.3143674230062, 0.0, -66.21011011305664>}
  triangle { <-120.0, 0.0, -52.9287893625359>, <-112.81052607347087, 0.0, -55.6502390093004>, <-111.60923146027581, 0.0, -53.766946942727614>}
  triangle { <-111.60923146027581, 0.0, -53.766946942727614>, <-112.81052607347087, 0.0, -55.6502390093004>, <-111.41355138048256, 0.0, -53.99997893729229>}
  triangle { <-120.0, 0.0, -52.9287893625359>, <-119.82261945784771, 0.0, -55.02587408211834>, <-112.81052607347087, 0.0, -55.6502390093004>}
  triangle { <-112.81052607347087, 0.0, -55.6502390093004>, <-111.56009026738944, 0.0, -55.969867648935214>, <-111.41355138048256, 0.0, -53.99997893729229>}
  triangle { <-120.0, 0.0, -52.9287893625359>, <-120.0, 0.0, -55.01008028119856>, <-119.82261945784771, 0.0, -55.02587408211834>}
  triangle { <-110.41630684284958, 0.0, -54.07416338418768>, <-110.56284572975646, 0.0, -56.0440520958306>, <-109.19652055292772, 0.0, -56.00031197073677>}
  triangle { <-110.06403806886199, 0.0, -53.020158643385905>, <-110.41630684284958, 0.0, -54.07416338418768>, <-109.19652055292772, 0.0, -56.00031197073677>}
  triangle { <-104.30189104525684, 0.0, -56.51278893324617>, <-110.06403806886199, 0.0, -53.020158643385905>, <-109.19652055292772, 0.0, -56.00031197073677>}
  triangle { <-108.39854096215613, 0.0, -50.367151097130886>, <-110.06403806886199, 0.0, -53.020158643385905>, <-104.30189104525684, 0.0, -56.51278893324617>}
  triangle { <-105.15701838369627, 0.0, -49.47003483590496>, <-108.39854096215613, 0.0, -50.367151097130886>, <-104.30189104525684, 0.0, -56.51278893324617>}
  triangle { <-102.48313650734265, 0.0, -55.041107819364974>, <-105.15701838369627, 0.0, -49.47003483590496>, <-104.30189104525684, 0.0, -56.51278893324617>}
  triangle { <-105.15701838369627, 0.0, -49.47003483590496>, <-102.48313650734265, 0.0, -55.041107819364974>, <-101.8315636670853, 0.0, -48.909072233079186>}
  triangle { <-105.15701838369627, 0.0, -49.47003483590496>, <-101.8315636670853, 0.0, -48.909072233079186>, <-101.65654407236241, 0.0, -48.070655399299795>}
  triangle { <-120.0, 0.0, 69.03290868522656>, <-120.0, 0.0, 60.0>, <-96.67965523900031, 0.0, 66.51025792304031>}
  triangle { <-98.921, 0.0, 49.465>, <-96.67965523900031, 0.0, 66.51025792304031>, <-120.0, 0.0, 60.0>}
  triangle { <-120.0, 0.0, 60.0>, <-120.0, 0.0, 30.0>, <-98.921, 0.0, 49.465>}
  triangle { <-95.4510657840248, 0.0, 66.20010966721901>, <-96.67965523900031, 0.0, 66.51025792304031>, <-98.921, 0.0, 49.465>}
  triangle { <-120.0, 0.0, 0.0>, <-98.921, 0.0, 49.465>, <-120.0, 0.0, 30.0>}
  triangle { <-92.77950337327036, 0.0, 65.11882139722398>, <-95.4510657840248, 0.0, 66.20010966721901>, <-98.921, 0.0, 49.465>}
  triangle { <-120.0, 0.0, 0.0>, <-108.688, 0.0, -42.774>, <-98.921, 0.0, 49.465>}
  triangle { <-98.921, 0.0, 49.465>, <-93.215, 0.0, 48.864>, <-92.77950337327036, 0.0, 65.11882139722398>}
  triangle { <-120.0, 0.0, 0.0>, <-120.0, 0.0, -30.0>, <-108.688, 0.0, -42.774>}
  triangle { <-92.77950337327036, 0.0, 65.11882139722398>, <-93.215, 0.0, 48.864>, <-89.87692317074534, 0.0, 63.6832788717983>}
  triangle { <-108.688, 0.0, -42.774>, <-120.0, 0.0, -30.0>, <-120.0, 0.0, -51.923812937068554>}
  triangle { <-89.87692317074534, 0.0, 63.6832788717983>, <-93.215, 0.0, 48.864>, <-101.31825933527875, 0.0, -44.07641987156052>}
  triangle { <-92.77950337327036, 0.0, 65.11882139722398>, <-89.87692317074534, 0.0, 63.6832788717983>, <-89.536452513917, 0.0, 64.89448933446671>}
  triangle { <-119.95030210871516, 0.0, -51.92877704025447>, <-108.688, 0.0, -42.774>, <-120.0, 0.0, -51.923812937068554>}
  triangle { <-102.982, 0.0, -43.376>, <-101.31825933527875, 0.0, -44.07641987156052>, <-93.215, 0.0, 48.864>}
  triangle { <-108.688, 0.0, -42.774>, <-119.95030210871516, 0.0, -51.92877704025447>, <-108.99545903784387, 0.0, -49.564848902869116>}
  triangle { <-102.982, 0.0, -43.376>, <-102.02790682527737, 0.0, -47.14216753952594>, <-101.31825933527875, 0.0, -44.07641987156052>}
  triangle { <-108.99545903784387, 0.0, -49.564848902869116>, <-119.95030210871516, 0.0, -51.92877704025447>, <-111.50983567770614, 0.0, -52.771898964785166>}
  triangle { <-108.688, 0.0, -42.774>, <-108.99545903784387, 0.0, -49.564848902869116>, <-105.48098161630374, 0.0, -48.52396516409504>}
  triangle { <-102.982, 0.0, -43.376>, <-105.48098161630374, 0.0, -48.52396516409504>, <-102.02790682527737, 0.0, -47.14216753952594>}
  triangle { <-108.99545903784387, 0.0, -49.564848902869116>, <-111.50983567770614, 0.0, -52.771898964785166>, <-110.90548391837798, 0.0, -52.4798171936226>}
  triangle { <-108.688, 0.0, -42.774>, <-105.48098161630374, 0.0, -48.52396516409504>, <-102.982, 0.0, -43.376>}
  triangle { <-94.96074654370645, 0.0, 70.95831555945647>, <-95.3432847870291, 0.0, 67.58022995971605>, <-92.29463816686595, 0.0, 69.8671622280497>}
  triangle { <-92.29463816686595, 0.0, 69.8671622280497>, <-95.3432847870291, 0.0, 67.58022995971605>, <-95.07384124458888, 0.0, 67.12623149875489>}
  triangle { <-92.29463816686595, 0.0, 69.8671622280497>, <-95.07384124458888, 0.0, 67.12623149875489>, <-92.55449662672964, 0.0, 66.093178602776>}
  triangle { <-92.55449662672964, 0.0, 66.093178602776>, <-91.53523398837598, 0.0, 69.78724914605553>, <-92.29463816686595, 0.0, 69.8671622280497>}
  triangle { <-91.53523398837598, 0.0, 69.78724914605553>, <-92.55449662672964, 0.0, 66.093178602776>, <-89.49404884655584, 0.0, 67.2836449231013>}
  triangle { <-89.49404884655584, 0.0, 67.2836449231013>, <-92.55449662672964, 0.0, 66.093178602776>, <-89.46940053653802, 0.0, 65.89223881821981>}
  triangle { <-91.53523398837598, 0.0, 69.78724914605553>, <-89.49404884655584, 0.0, 67.2836449231013>, <-89.27917553462966, 0.0, 69.30101117996732>}
  triangle { <-85.51654712548552, 0.0, 66.85999405400916>, <-85.85739239179803, 0.0, 65.64875416572661>, <-83.1266057694088, 0.0, 65.46410838461159>}
  triangle { <-82.98225227974177, 0.0, 68.88740737422106>, <-85.51654712548552, 0.0, 66.85999405400916>, <-83.1266057694088, 0.0, 65.46410838461159>}
  triangle { <-83.1266057694088, 0.0, 65.46410838461159>, <-82.45777477879875, 0.0, 68.83224040097751>, <-82.98225227974177, 0.0, 68.88740737422106>}
  triangle { <-82.98225227974177, 0.0, 68.88740737422106>, <-85.30167381355933, 0.0, 68.87736031087518>, <-85.51654712548552, 0.0, 66.85999405400916>}
  triangle { <-82.45777477879875, 0.0, 68.83224040097751>, <-83.1266057694088, 0.0, 65.46410838461159>, <-81.65551779831628, 0.0, 65.34023503703244>}
  triangle { <-82.45777477879875, 0.0, 68.83224040097751>, <-81.65551779831628, 0.0, 65.34023503703244>, <-79.89486800170194, 0.0, 65.3753889582495>}
  triangle { <-81.65551779831628, 0.0, 65.34023503703244>, <-80.12320115900376, 0.0, 65.18571571205975>, <-79.89486800170194, 0.0, 65.3753889582495>}
  triangle { <-82.45777477879875, 0.0, 68.83224040097751>, <-79.89486800170194, 0.0, 65.3753889582495>, <-79.56358678265899, 0.0, 69.3124047087705>}
  triangle { <-94.70280583182439, 0.0, -44.32686978415001>, <-97.34061655142699, 0.0, -44.4987442540819>, <-97.48901649998378, 0.0, -45.378270036285635>}
  triangle { <-97.34061655142699, 0.0, -44.4987442540819>, <-94.70280583182439, 0.0, -44.32686978415001>, <-94.29170612485885, 0.0, -43.78937915233955>}
  triangle { <-94.29170612485885, 0.0, -43.78937915233955>, <-90.77609647889703, 0.0, -7.248681892930476>, <-97.34061655142699, 0.0, -44.4987442540819>}
  triangle { <-97.34061655142699, 0.0, -44.4987442540819>, <-90.77609647889703, 0.0, -7.248681892930476>, <-90.30495082522118, 0.0, -2.7254231000199556>}
  triangle { <-97.34061655142699, 0.0, -44.4987442540819>, <-90.30495082522118, 0.0, -2.7254231000199556>, <-90.0, 0.0, 0.0>}
  triangle { <-87.89256631198059, 0.0, 18.789983946914784>, <-90.0, 0.0, 0.0>, <-90.30495082522118, 0.0, -2.7254231000199556>}
  triangle { <-97.34061655142699, 0.0, -44.4987442540819>, <-90.0, 0.0, 0.0>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-90.0, 0.0, 0.0>, <-87.89256631198059, 0.0, 18.789983946914784>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-87.89256631198059, 0.0, 18.789983946914784>, <-87.49805396628938, 0.0, 22.38601134349756>, <-85.89928038689358, 0.0, 63.26095448927692>}
  triangle { <-83.00702380582759, 0.0, 64.24350643206863>, <-85.89928038689358, 0.0, 63.26095448927692>, <-87.49805396628938, 0.0, 22.38601134349756>}
  triangle { <-83.1940680618163, 0.0, 64.46638656010182>, <-85.89928038689358, 0.0, 63.26095448927692>, <-83.00702380582759, 0.0, 64.24350643206863>}
  triangle { <-85.92485468420553, 0.0, 64.65103234121685>, <-85.89928038689358, 0.0, 63.26095448927692>, <-83.1940680618163, 0.0, 64.46638656010182>}
  triangle { <-93.79413213721868, 0.0, 81.25169241804774>, <-94.2311712439049, 0.0, 77.39704453428783>, <-91.44694526504585, 0.0, 77.92268349758984>}
  triangle { <-92.95755709403532, 0.0, 81.91342151995666>, <-93.79413213721868, 0.0, 81.25169241804774>, <-91.44694526504585, 0.0, 77.92268349758984>}
  triangle { <-92.95755709403532, 0.0, 81.91342151995666>, <-91.44694526504585, 0.0, 77.92268349758984>, <-90.68754108655588, 0.0, 77.84277041559568>}
  triangle { <-88.0886748048033, 0.0, 80.02789025773754>, <-92.95755709403532, 0.0, 81.91342151995666>, <-90.68754108655588, 0.0, 77.84277041559568>}
  triangle { <-88.0886748048033, 0.0, 80.02789025773754>, <-90.68754108655588, 0.0, 77.84277041559568>, <-88.33528420169007, 0.0, 77.86379389254404>}
  triangle { <-92.95755709403532, 0.0, 81.91342151995666>, <-88.0886748048033, 0.0, 80.02789025773754>, <-87.72689742104214, 0.0, 81.28566626765173>}
  triangle { <-120.0, 0.0, 84.78671030682149>, <-97.89379806800275, 0.0, 78.59927562221964>, <-95.45453562628738, 0.0, 82.19506622857952>}
  triangle { <-95.45453562628738, 0.0, 82.19506622857952>, <-97.89379806800275, 0.0, 78.59927562221964>, <-94.78776596303705, 0.0, 81.3643503968578>}
  triangle { <-120.0, 0.0, 84.78671030682149>, <-119.578401082484, 0.0, 80.86894123172885>, <-97.89379806800275, 0.0, 78.59927562221964>}
  triangle { <-97.89379806800275, 0.0, 78.59927562221964>, <-95.22480506972326, 0.0, 77.50970251309789>, <-94.78776596303705, 0.0, 81.3643503968578>}
  triangle { <-120.0, 0.0, 84.78671030682149>, <-120.0, 0.0, 80.91306877428886>, <-119.578401082484, 0.0, 80.86894123172885>}
  triangle { <-120.0, 0.0, 72.76882065107505>, <-119.94622679090347, 0.0, 70.03292560297523>, <-98.73699590303474, 0.0, 70.54328259896005>}
  triangle { <-98.73699590303474, 0.0, 70.54328259896005>, <-119.94622679090347, 0.0, 70.03292560297523>, <-96.57210882080724, 0.0, 67.50445798738039>}
  triangle { <-120.0, 0.0, 72.76882065107505>, <-120.0, 0.0, 70.03874245638367>, <-119.94622679090347, 0.0, 70.03292560297523>}
  triangle { <-98.73699590303474, 0.0, 70.54328259896005>, <-96.57210882080724, 0.0, 67.50445798738039>, <-96.33693402449448, 0.0, 67.6927519259469>}
  triangle { <-98.73699590303474, 0.0, 70.54328259896005>, <-96.33693402449448, 0.0, 67.6927519259469>, <-95.95439578117183, 0.0, 71.07083752568731>}
  triangle { <-120.0, 0.0, 86.75642712051304>, <-95.34953384195798, 0.0, 83.18953826201619>, <-94.697, 0.0, 84.119>}
  triangle { <-94.697, 0.0, 84.119>, <-95.34953384195798, 0.0, 83.18953826201619>, <-93.50902608194947, 0.0, 83.75500347833962>}
  triangle { <-120.0, 0.0, 86.75642712051304>, <-119.9474991078353, 0.0, 85.7867256709611>, <-95.34953384195798, 0.0, 83.18953826201619>}
  triangle { <-94.697, 0.0, 84.119>, <-93.50902608194947, 0.0, 83.75500347833962>, <-91.04, 0.0, 86.857>}
  triangle { <-120.0, 0.0, 86.75642712051304>, <-120.0, 0.0, 85.79226344803295>, <-119.9474991078353, 0.0, 85.7867256709611>}
  triangle { <-91.04, 0.0, 86.857>, <-93.50902608194947, 0.0, 83.75500347833962>, <-90.2149571519744, 0.0, 86.48982445513393>}
  triangle { <-90.2149571519744, 0.0, 86.48982445513393>, <-89.88508577744028, 0.0, 90.0>, <-91.04, 0.0, 86.857>}
  triangle { <-89.88508577744028, 0.0, 90.0>, <-90.0, 0.0, 90.0>, <-91.04, 0.0, 86.857>}
  triangle { <-90.0, 0.0, 90.0>, <-90.70967260155575, 0.0, 90.0>, <-91.04, 0.0, 86.857>}
  triangle { <-92.86377279732714, 0.0, 82.99103476256384>, <-92.83839763489324, 0.0, 82.90629664971716>, <-89.33104284802559, 0.0, 86.02217554486607>}
  triangle { <-89.33104284802559, 0.0, 86.02217554486607>, <-92.83839763489324, 0.0, 82.90629664971716>, <-87.68513127293548, 0.0, 83.56542130808239>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-92.83839763489324, 0.0, 82.90629664971716>, <-87.60773796190006, 0.0, 82.27854139741224>}
  triangle { <-87.68513127293548, 0.0, 83.56542130808239>, <-86.95033510451522, 0.0, 90.0>, <-89.33104284802559, 0.0, 86.02217554486607>}
  triangle { <-86.95033510451522, 0.0, 90.0>, <-88.88560051464366, 0.0, 89.94818493012569>, <-89.33104284802559, 0.0, 86.02217554486607>}
  triangle { <-86.95033510451522, 0.0, 90.0>, <-88.88020185164395, 0.0, 90.0>, <-88.88560051464366, 0.0, 89.94818493012569>}
  triangle { <-97.85395541126161, 0.0, -49.331721689725256>, <-98.50552825151895, 0.0, -55.463757276011044>, <-94.2780413846934, 0.0, -54.76705992631349>}
  triangle { <-94.2780413846934, 0.0, -54.76705992631349>, <-98.50552825151895, 0.0, -55.463757276011044>, <-97.99159572312517, 0.0, -55.885398568750084>}
  triangle { <-90.079, 0.0, -52.348>, <-97.85395541126161, 0.0, -49.331721689725256>, <-94.2780413846934, 0.0, -54.76705992631349>}
  triangle { <-56.87881427701505, 0.0, -58.18186711854621>, <-90.079, 0.0, -52.348>, <-94.2780413846934, 0.0, -54.76705992631349>}
  triangle { <-90.079, 0.0, -52.348>, <-93.215, 0.0, -46.203>, <-97.85395541126161, 0.0, -49.331721689725256>}
  triangle { <-57.784, 0.0, -56.021>, <-90.079, 0.0, -52.348>, <-56.87881427701505, 0.0, -58.18186711854621>}
  triangle { <-97.85395541126161, 0.0, -49.331721689725256>, <-93.215, 0.0, -46.203>, <-97.13595924754954, 0.0, -46.31387175523637>}
  triangle { <-57.784, 0.0, -56.021>, <-56.87881427701505, 0.0, -58.18186711854621>, <-55.8763441209135, 0.0, -57.58963486166906>}
  triangle { <-94.34974857939015, 0.0, -45.26247150310075>, <-97.13595924754954, 0.0, -46.31387175523637>, <-93.215, 0.0, -46.203>}
  triangle { <-57.784, 0.0, -56.021>, <-55.8763441209135, 0.0, -57.58963486166906>, <-54.99860824972333, 0.0, -49.23920301343713>}
  triangle { <-94.34974857939015, 0.0, -45.26247150310075>, <-93.215, 0.0, -46.203>, <-93.21049127576119, 0.0, -45.11813966916222>}
  triangle { <-54.99860824972333, 0.0, -49.23920301343713>, <-56.508658856185455, 0.0, -49.103456543352344>, <-57.784, 0.0, -56.021>}
  triangle { <-93.21049127576119, 0.0, -45.11813966916222>, <-93.215, 0.0, -46.203>, <-80.98297658898255, 0.0, -46.45377565369065>}
  triangle { <-56.508658856185455, 0.0, -49.103456543352344>, <-57.95107632597672, 0.0, -48.95978685389576>, <-57.784, 0.0, -56.021>}
  triangle { <-80.98297658898255, 0.0, -46.45377565369065>, <-93.215, 0.0, -46.203>, <-79.5311068594682, 0.0, -46.61172526771353>}
  triangle { <-57.784, 0.0, -56.021>, <-57.95107632597672, 0.0, -48.95978685389576>, <-60.677, 0.0, -49.543>}
  triangle { <-60.677, 0.0, -49.543>, <-79.5311068594682, 0.0, -46.61172526771353>, <-93.215, 0.0, -46.203>}
  triangle { <-67.31260617980374, 0.0, -47.93628965872149>, <-60.677, 0.0, -49.543>, <-57.95107632597672, 0.0, -48.95978685389576>}
  triangle { <-60.677, 0.0, -49.543>, <-68.74366989633643, 0.0, -47.78053334491931>, <-79.5311068594682, 0.0, -46.61172526771353>}
  triangle { <-68.74366989633643, 0.0, -47.78053334491931>, <-60.677, 0.0, -49.543>, <-67.31260617980374, 0.0, -47.93628965872149>}
  triangle { <-78.64625084971144, 0.0, -38.64493508851417>, <-79.593041478014, 0.0, -45.39502373083384>, <-73.60564704982572, 0.0, -39.44616805328776>}
  triangle { <-73.60564704982572, 0.0, -39.44616805328776>, <-79.593041478014, 0.0, -45.39502373083384>, <-79.42338828961621, 0.0, -45.617543840755125>}
  triangle { <-68.63595132648445, 0.0, -46.78635191796091>, <-73.60564704982572, 0.0, -39.44616805328776>, <-79.42338828961621, 0.0, -45.617543840755125>}
  triangle { <-68.63595132648445, 0.0, -46.78635191796091>, <-72.1455256857812, 0.0, -39.62121369432002>, <-73.60564704982572, 0.0, -39.44616805328776>}
  triangle { <-72.1455256857812, 0.0, -39.62121369432002>, <-68.63595132648445, 0.0, -46.78635191796091>, <-68.36882416473478, 0.0, -46.578367355800175>}
  triangle { <-72.1455256857812, 0.0, -39.62121369432002>, <-68.36882416473478, 0.0, -46.578367355800175>, <-67.28963097540242, 0.0, -39.998028326466695>}
  triangle { <-53.72387926390375, 0.0, -21.07934942901627>, <-56.60685737378515, 0.0, -47.87861021929016>, <-54.88941051784351, 0.0, -48.2449869243897>}
  triangle { <-56.60685737378515, 0.0, -47.87861021929016>, <-56.41912458714648, 0.0, -48.10747280118199>, <-54.88941051784351, 0.0, -48.2449869243897>}
  triangle { <-54.88941051784351, 0.0, -48.2449869243897>, <-48.971012500357325, 0.0, 3.181863254537082>, <-53.72387926390375, 0.0, -21.07934942901627>}
  triangle { <-53.72387926390375, 0.0, -21.07934942901627>, <-48.971012500357325, 0.0, 3.181863254537082>, <-53.563597977927664, 0.0, -19.653087928562687>}
  triangle { <-50.41403444134449, 0.0, 7.2236308273764225>, <-53.563597977927664, 0.0, -19.653087928562687>, <-48.971012500357325, 0.0, 3.181863254537082>}
  triangle { <-50.16350214030994, 0.0, 7.427944929427978>, <-50.41403444134449, 0.0, 7.2236308273764225>, <-48.971012500357325, 0.0, 3.181863254537082>}
  triangle { <-42.496686695901865, 0.0, 6.9097715226761895>, <-50.16350214030994, 0.0, 7.427944929427978>, <-48.971012500357325, 0.0, 3.181863254537082>}
  triangle { <-42.496686695901865, 0.0, 6.9097715226761895>, <-48.971012500357325, 0.0, 3.181863254537082>, <-40.7141664447756, 0.0, 2.8035639031589827>}
  triangle { <-40.70246592513373, 0.0, 2.802229346582452>, <-42.496686695901865, 0.0, 6.9097715226761895>, <-40.7141664447756, 0.0, 2.8035639031589827>}
  triangle { <-39.713, 0.0, 11.382>, <-42.496686695901865, 0.0, 6.9097715226761895>, <-40.70246592513373, 0.0, 2.802229346582452>}
  triangle { <-39.713, 0.0, 11.382>, <-41.21180273930034, 0.0, 16.798300051021066>, <-42.496686695901865, 0.0, 6.9097715226761895>}
  triangle { <-39.713, 0.0, 11.382>, <-40.97755862969235, 0.0, 16.984522867758056>, <-41.21180273930034, 0.0, 16.798300051021066>}
  triangle { <-40.97755862969235, 0.0, 16.984522867758056>, <-39.713, 0.0, 11.382>, <-15.335795854862663, 0.0, 14.129464112412528>}
  triangle { <-15.335795854862663, 0.0, 14.129464112412528>, <-39.713, 0.0, 11.382>, <-12.684894360109185, 0.0, 10.745519140045143>}
  triangle { <-12.684894360109185, 0.0, 10.745519140045143>, <-39.713, 0.0, 11.382>, <-3.885723625979062, 0.0, 9.709256543128527>}
  triangle { <-3.885723625979062, 0.0, 9.709256543128527>, <-39.713, 0.0, 11.382>, <28.642, 0.0, 3.512>}
  triangle { <-2.4570656167821703, 0.0, 9.544623231881285>, <-3.885723625979062, 0.0, 9.709256543128527>, <28.642, 0.0, 3.512>}
  triangle { <-2.3592853394811812, 0.0, 9.533168605155579>, <-2.4570656167821703, 0.0, 9.544623231881285>, <28.642, 0.0, 3.512>}
  triangle { <-0.9259266975239869, 0.0, 9.369195689870363>, <-2.3592853394811812, 0.0, 9.533168605155579>, <28.642, 0.0, 3.512>}
  triangle { <1.4453693585782275, 0.0, 9.146211058989179>, <-0.9259266975239869, 0.0, 9.369195689870363>, <28.642, 0.0, 3.512>}
  triangle { <28.642, 0.0, 3.512>, <4.818459266032903, 0.0, 12.041175074828466>, <1.4453693585782275, 0.0, 9.146211058989179>}
  triangle { <28.247801553353565, 0.0, 9.83654153116944>, <4.818459266032903, 0.0, 12.041175074828466>, <28.642, 0.0, 3.512>}
  triangle { <29.856, 0.0, 14.065>, <28.247801553353565, 0.0, 9.83654153116944>, <28.642, 0.0, 3.512>}
  triangle { <28.964502853739535, 0.0, 14.98909518246167>, <28.247801553353565, 0.0, 9.83654153116944>, <29.856, 0.0, 14.065>}
  triangle { <29.531588679780132, 0.0, 15.437613879906392>, <28.964502853739535, 0.0, 14.98909518246167>, <29.856, 0.0, 14.065>}
  triangle { <29.531588679780132, 0.0, 15.437613879906392>, <29.856, 0.0, 14.065>, <48.501, 0.0, 11.917>}
  triangle { <29.531588679780132, 0.0, 15.437613879906392>, <48.501, 0.0, 11.917>, <49.335440996096715, 0.0, 13.0100983178766>}
  triangle { <49.335440996096715, 0.0, 13.0100983178766>, <48.501, 0.0, 11.917>, <50.56783499925179, 0.0, 12.68776707193779>}
  triangle { <50.56783499925179, 0.0, 12.68776707193779>, <48.501, 0.0, 11.917>, <56.17405975584236, 0.0, 10.385482212613033>}
  triangle { <48.501, 0.0, 11.917>, <43.864, 0.0, -28.325>, <56.17405975584236, 0.0, 10.385482212613033>}
  triangle { <43.864, 0.0, -28.325>, <52.067654221420504, 0.0, -32.64778019652613>, <56.17405975584236, 0.0, 10.385482212613033>}
  triangle { <56.17405975584236, 0.0, 10.385482212613033>, <52.067654221420504, 0.0, -32.64778019652613>, <81.41101482954055, 0.0, -12.861471402523659>}
  triangle { <52.067654221420504, 0.0, -32.64778019652613>, <43.864, 0.0, -28.325>, <45.387145258474206, 0.0, -32.09269160258528>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <81.41101482954055, 0.0, -12.861471402523659>, <52.067654221420504, 0.0, -32.64778019652613>}
  triangle { <56.17405975584236, 0.0, 10.385482212613033>, <81.41101482954055, 0.0, -12.861471402523659>, <81.45698517045945, 0.0, -11.862528597476341>}
  triangle { <43.864, 0.0, -28.325>, <38.69326639226348, 0.0, -31.48875346113766>, <45.387145258474206, 0.0, -32.09269160258528>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <52.067654221420504, 0.0, -32.64778019652613>, <84.4806935189796, 0.0, -40.53098713534157>}
  triangle { <85.35165360258739, 0.0, -39.15646719903516>, <84.86124101433369, 0.0, -15.433707256510777>, <81.41101482954055, 0.0, -12.861471402523659>}
  triangle { <56.364, 0.0, 10.848>, <56.17405975584236, 0.0, 10.385482212613033>, <81.45698517045945, 0.0, -11.862528597476341>}
  triangle { <38.69326639226348, 0.0, -31.48875346113766>, <42.749003995964635, 0.0, -37.24732640360594>, <45.387145258474206, 0.0, -32.09269160258528>}
  triangle { <39.138, 0.0, -27.78>, <38.69326639226348, 0.0, -31.48875346113766>, <43.864, 0.0, -28.325>}
  triangle { <52.067654221420504, 0.0, -32.64778019652613>, <52.015, 0.0, -33.145>, <84.4806935189796, 0.0, -40.53098713534157>}
  triangle { <84.77879717032833, 0.0, -13.016453351004031>, <81.41101482954055, 0.0, -12.861471402523659>, <84.86124101433369, 0.0, -15.433707256510777>}
  triangle { <88.0859152121335, 0.0, -16.413951034052896>, <84.86124101433369, 0.0, -15.433707256510777>, <85.35165360258739, 0.0, -39.15646719903516>}
  triangle { <56.55394024415764, 0.0, 11.310517787386969>, <56.364, 0.0, 10.848>, <81.45698517045945, 0.0, -11.862528597476341>}
  triangle { <45.387145258474206, 0.0, -32.09269160258528>, <42.749003995964635, 0.0, -37.24732640360594>, <43.19613617033559, 0.0, -58.50361881174522>}
  triangle { <35.96001705328757, 0.0, -26.27832369499585>, <38.69326639226348, 0.0, -31.48875346113766>, <39.138, 0.0, -27.78>}
  triangle { <52.015, 0.0, -33.145>, <51.9623457785795, 0.0, -33.64221980347388>, <84.4806935189796, 0.0, -40.53098713534157>}
  triangle { <84.77879717032833, 0.0, -13.016453351004031>, <84.86124101433369, 0.0, -15.433707256510777>, <84.95908203389111, 0.0, -13.228474321461755>}
  triangle { <87.52522495220843, 0.0, -15.744006277487841>, <84.86124101433369, 0.0, -15.433707256510777>, <88.0859152121335, 0.0, -16.413951034052896>}
  triangle { <81.45698517045945, 0.0, -11.862528597476341>, <85.30696516258871, 0.0, -9.41429166448101>, <56.55394024415764, 0.0, 11.310517787386969>}
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <42.749003995964635, 0.0, -37.24732640360594>, <40.82675243387473, 0.0, -58.567412300598654>}
  triangle { <35.90958347407051, 0.0, -26.02357595108522>, <35.96001705328757, 0.0, -26.27832369499585>, <39.138, 0.0, -27.78>}
  triangle { <51.9623457785795, 0.0, -33.64221980347388>, <55.05664009262479, 0.0, -59.01376874634803>, <84.4806935189796, 0.0, -40.53098713534157>}
  triangle { <85.30696516258871, 0.0, -9.41429166448101>, <70.139, 0.0, 28.27>, <56.55394024415764, 0.0, 11.310517787386969>}
  triangle { <85.30696516258871, 0.0, -9.41429166448101>, <81.45698517045945, 0.0, -11.862528597476341>, <84.82476751124723, 0.0, -12.017510545956714>}
  triangle { <43.19613617033559, 0.0, -58.50361881174522>, <40.82675243387473, 0.0, -58.567412300598654>, <42.963673403151056, 0.0, -58.70531448352311>}
  triangle { <52.55201870831949, 0.0, -59.60653891929296>, <55.05664009262479, 0.0, -59.01376874634803>, <51.9623457785795, 0.0, -33.64221980347388>}
  triangle { <53.389, 0.0, 29.973>, <56.55394024415764, 0.0, 11.310517787386969>, <70.139, 0.0, 28.27>}
  triangle { <85.30696516258871, 0.0, -9.41429166448101>, <90.0, 0.0, 30.0>, <70.139, 0.0, 28.27>}
  triangle { <85.07018836989637, 0.0, -11.792095273120836>, <85.30696516258871, 0.0, -9.41429166448101>, <84.82476751124723, 0.0, -12.017510545956714>}
  triangle { <44.19316914887476, 0.0, -58.58059439037445>, <52.55201870831949, 0.0, -59.60653891929296>, <51.9623457785795, 0.0, -33.64221980347388>}
  triangle { <53.389, 0.0, 29.973>, <50.68242378556213, 0.0, 14.065016557188708>, <56.55394024415764, 0.0, 11.310517787386969>}
  triangle { <90.0, 0.0, 30.0>, <72.179, 0.0, 48.274>, <70.139, 0.0, 28.27>}
  triangle { <90.0, 0.0, 30.0>, <85.30696516258871, 0.0, -9.41429166448101>, <88.76558776693169, 0.0, -9.08623118682001>}
  triangle { <46.026854741525796, 0.0, -32.86130839741471>, <44.19316914887476, 0.0, -58.58059439037445>, <51.9623457785795, 0.0, -33.64221980347388>}
  triangle { <52.55201870831949, 0.0, -59.60653891929296>, <44.19316914887476, 0.0, -58.58059439037445>, <44.39468881695133, 0.0, -58.82041326017488>}
  triangle { <56.55394024415764, 0.0, 11.310517787386969>, <50.68242378556213, 0.0, 14.065016557188708>, <50.947715487567066, 0.0, 13.612802646711726>}
  triangle { <50.68242378556213, 0.0, 14.065016557188708>, <53.389, 0.0, 29.973>, <54.97393866257303, 0.0, 49.64476795651983>}
  triangle { <89.61318623596934, 0.0, 46.95236070895466>, <72.179, 0.0, 48.274>, <90.0, 0.0, 30.0>}
  triangle { <88.76558776693169, 0.0, -9.08623118682001>, <85.30696516258871, 0.0, -9.41429166448101>, <88.4628304541891, 0.0, -9.34976470716587>}
  triangle { <94.66463875627187, 0.0, 42.64845742513882>, <90.0, 0.0, 30.0>, <88.76558776693169, 0.0, -9.08623118682001>}
  triangle { <55.429, 0.0, 49.977>, <54.97393866257303, 0.0, 49.64476795651983>, <53.389, 0.0, 29.973>}
  triangle { <90.0, 0.0, 30.0>, <94.66463875627187, 0.0, 42.64845742513882>, <89.61318623596934, 0.0, 46.95236070895466>}
  triangle { <55.92004585108769, 0.0, 50.40099814240076>, <72.179, 0.0, 48.274>, <89.61318623596934, 0.0, 46.95236070895466>}
  triangle { <54.97393866257303, 0.0, 49.64476795651983>, <55.429, 0.0, 49.977>, <55.92004585108769, 0.0, 50.40099814240076>}
  triangle { <92.25304791846557, 0.0, 45.95040795363276>, <89.61318623596934, 0.0, 46.95236070895466>, <94.66463875627187, 0.0, 42.64845742513882>}
  triangle { <55.92004585108769, 0.0, 50.40099814240076>, <55.429, 0.0, 49.977>, <72.179, 0.0, 48.274>}
  triangle { <93.45967505253584, 0.0, 44.885007297750924>, <92.25304791846557, 0.0, 45.95040795363276>, <94.66463875627187, 0.0, 42.64845742513882>}
  triangle { <-46.88534554202784, 0.0, -30.908972726829866>, <-46.772987499642674, 0.0, 0.45813674546291794>, <-51.41314324714626, 0.0, -48.55748705455024>}
  triangle { <-51.41314324714626, 0.0, -48.55748705455024>, <-47.036355428196146, 0.0, -32.337336607236395>, <-46.88534554202784, 0.0, -30.908972726829866>}
  triangle { <-46.772987499642674, 0.0, 0.45813674546291794>, <-46.88534554202784, 0.0, -30.908972726829866>, <-45.30547612620413, 0.0, -15.422588986445403>}
  triangle { <-48.81279808515985, 0.0, -48.570822688341>, <-47.036355428196146, 0.0, -32.337336607236395>, <-51.41314324714626, 0.0, -48.55748705455024>}
  triangle { <-46.772987499642674, 0.0, 0.45813674546291794>, <-45.30547612620413, 0.0, -15.422588986445403>, <-45.158503125365826, 0.0, -14.008322804797006>}
  triangle { <-51.41314324714626, 0.0, -48.55748705455024>, <-49.05538130661546, 0.0, -48.76943879931803>, <-48.81279808515985, 0.0, -48.570822688341>}
  triangle { <-46.772987499642674, 0.0, 0.45813674546291794>, <-45.158503125365826, 0.0, -14.008322804797006>, <-44.029223432997554, 0.0, -3.3373800638719295>}
  triangle { <-41.10332872007038, 0.0, -0.6736971675919481>, <-46.772987499642674, 0.0, 0.45813674546291794>, <-44.029223432997554, 0.0, -3.3373800638719295>}
  triangle { <-43.532, 0.0, -3.39>, <-41.10332872007038, 0.0, -0.6736971675919481>, <-44.029223432997554, 0.0, -3.3373800638719295>}
  triangle { <-41.10332872007038, 0.0, -0.6736971675919481>, <-43.532, 0.0, -3.39>, <-43.03477656700244, 0.0, -3.4426199361280707>}
  triangle { <-43.03477656700244, 0.0, -3.4426199361280707>, <-42.337, 0.0, -11.371>, <-41.10332872007038, 0.0, -0.6736971675919481>}
  triangle { <-42.337, 0.0, -11.371>, <-43.03477656700244, 0.0, -3.4426199361280707>, <-44.16405625937071, 0.0, -14.113562677053148>}
  triangle { <-44.16405625937071, 0.0, -14.113562677053148>, <-43.97608931337085, 0.0, -14.346719467722101>, <-42.337, 0.0, -11.371>}
  triangle { <-42.337, 0.0, -11.371>, <-43.97608931337085, 0.0, -14.346719467722101>, <-4.15176034250479, 0.0, -18.67914598249815>}
  triangle { <22.748, 0.0, -18.863>, <-42.337, 0.0, -11.371>, <-4.15176034250479, 0.0, -18.67914598249815>}
  triangle { <22.748, 0.0, -18.863>, <-4.15176034250479, 0.0, -18.67914598249815>, <-2.742880123233158, 0.0, -18.827712485876276>}
  triangle { <22.748, 0.0, -18.863>, <-2.742880123233158, 0.0, -18.827712485876276>, <23.104910630989092, 0.0, -21.471383573144422>}
  triangle { <22.748, 0.0, -18.863>, <23.104910630989092, 0.0, -21.471383573144422>, <26.838730728507848, 0.0, -22.92762585708559>}
  triangle { <22.748, 0.0, -18.863>, <26.838730728507848, 0.0, -22.92762585708559>, <31.896601377035626, 0.0, -23.84030802190523>}
  triangle { <26.838730728507848, 0.0, -22.92762585708559>, <28.390202874349974, 0.0, -26.845659791894292>, <31.896601377035626, 0.0, -23.84030802190523>}
  triangle { <31.896601377035626, 0.0, -23.84030802190523>, <28.390202874349974, 0.0, -26.845659791894292>, <32.19703240881893, 0.0, -25.29224145059229>}
  triangle { <32.19703240881893, 0.0, -25.29224145059229>, <28.390202874349974, 0.0, -26.845659791894292>, <32.66398294671242, 0.0, -27.45567630500415>}
  triangle { <28.390202874349974, 0.0, -26.845659791894292>, <30.0, 0.0, -30.0>, <32.66398294671242, 0.0, -27.45567630500415>}
  triangle { <30.0, 0.0, -30.0>, <30.003604964013906, 0.0, -30.8809955889539>, <32.66398294671242, 0.0, -27.45567630500415>}
  triangle { <30.0, 0.0, -30.0>, <28.390202874349974, 0.0, -26.845659791894292>, <30.003604964013906, 0.0, -30.8809955889539>}
  triangle { <32.66398294671242, 0.0, -27.45567630500415>, <30.003604964013906, 0.0, -30.8809955889539>, <35.718733607736525, 0.0, -33.33324653886234>}
  triangle { <35.718733607736525, 0.0, -33.33324653886234>, <30.003604964013906, 0.0, -30.8809955889539>, <31.087557449666257, 0.0, -33.55335913099831>}
  triangle { <35.718733607736525, 0.0, -33.33324653886234>, <31.087557449666257, 0.0, -33.55335913099831>, <35.88958466051835, 0.0, -36.43077092979214>}
  triangle { <35.718733607736525, 0.0, -33.33324653886234>, <35.88958466051835, 0.0, -36.43077092979214>, <39.372996004035365, 0.0, -38.17067359639407>}
  triangle { <35.88958466051835, 0.0, -36.43077092979214>, <37.90260234672492, 0.0, -40.22547627023504>, <39.372996004035365, 0.0, -38.17067359639407>}
  triangle { <37.90260234672492, 0.0, -40.22547627023504>, <38.3211064125664, 0.0, -42.428964689884666>, <39.372996004035365, 0.0, -38.17067359639407>}
  triangle { <39.372996004035365, 0.0, -38.17067359639407>, <38.3211064125664, 0.0, -42.428964689884666>, <37.337675646949634, 0.0, -58.342251280502076>}
  triangle { <38.3211064125664, 0.0, -42.428964689884666>, <36.62279532762864, 0.0, -58.08816689806281>, <37.337675646949634, 0.0, -58.342251280502076>}
  triangle { <36.62279532762864, 0.0, -58.08816689806281>, <36.80768424678934, 0.0, -58.30804928049173>, <37.337675646949634, 0.0, -58.342251280502076>}
  triangle { <85.95242455401045, 0.0, -13.343672575454507>, <85.62675898566631, 0.0, -14.790292743489223>, <87.58263442410033, 0.0, -14.745655561287819>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <85.95242455401045, 0.0, -13.343672575454507>, <87.58263442410033, 0.0, -14.745655561287819>}
  triangle { <88.32184489871815, 0.0, -14.104202072479207>, <86.0694302516052, 0.0, -11.831026775005597>, <85.95242455401045, 0.0, -13.343672575454507>}
  triangle { <86.0694302516052, 0.0, -11.831026775005597>, <88.32184489871815, 0.0, -14.104202072479207>, <88.62056188873505, 0.0, -10.55351365839188>}
  triangle { <88.43763313268214, 0.0, -10.34944720425626>, <86.0694302516052, 0.0, -11.831026775005597>, <88.62056188873505, 0.0, -10.55351365839188>}
  triangle { <85.99103483741129, 0.0, -10.14370833551899>, <86.0694302516052, 0.0, -11.831026775005597>, <88.43763313268214, 0.0, -10.34944720425626>}
  triangle { <89.31832470305051, 0.0, -14.188035237502028>, <89.40860605271313, 0.0, -14.24079877372032>, <89.6170416930674, 0.0, -10.6373468234147>}
  triangle { <95.15551683118416, 0.0, -10.334915904282285>, <89.6170416930674, 0.0, -10.6373468234147>, <89.40860605271313, 0.0, -14.24079877372032>}
  triangle { <89.75919788453275, 0.0, -9.199098073907466>, <89.6170416930674, 0.0, -10.6373468234147>, <95.15551683118416, 0.0, -10.334915904282285>}
  triangle { <89.75919788453275, 0.0, -9.199098073907466>, <95.15551683118416, 0.0, -10.334915904282285>, <95.26200187478483, 0.0, -9.30864371770269>}
  triangle { <89.75919788453275, 0.0, -9.199098073907466>, <95.26200187478483, 0.0, -9.30864371770269>, <95.64736124372814, 0.0, 42.83354257486118>}
  triangle { <100.8878880375255, 0.0, 44.91202707749257>, <95.64736124372814, 0.0, 42.83354257486118>, <95.26200187478483, 0.0, -9.30864371770269>}
  triangle { <94.4160567693086, 0.0, 45.46016956902355>, <95.64736124372814, 0.0, 42.83354257486118>, <100.8878880375255, 0.0, 44.91202707749257>}
  triangle { <94.4160567693086, 0.0, 45.46016956902355>, <94.34415181957051, 0.0, 45.35159153299244>, <95.64736124372814, 0.0, 42.83354257486118>}
  triangle { <83.94435248285257, 0.0, -62.713488389376955>, <84.14477511138351, 0.0, -62.96065973873211>, <84.19577209787246, 0.0, -60.206555472500874>}
  triangle { <84.19577209787246, 0.0, -60.206555472500874>, <84.14477511138351, 0.0, -62.96065973873211>, <89.76438468969782, 0.0, -62.293095042860195>}
  triangle { <89.76438468969782, 0.0, -62.293095042860195>, <84.14477511138351, 0.0, -62.96065973873211>, <89.85438923031238, 0.0, -63.580739856590164>}
  triangle { <84.19577209787246, 0.0, -60.206555472500874>, <89.76438468969782, 0.0, -62.293095042860195>, <90.0, 0.0, -60.0>}
  triangle { <90.0, 0.0, -60.0>, <89.76438468969782, 0.0, -62.293095042860195>, <95.02054344897844, 0.0, -11.635750494779126>}
  triangle { <84.45099337616715, 0.0, -57.68013882868128>, <84.19577209787246, 0.0, -60.206555472500874>, <90.0, 0.0, -60.0>}
  triangle { <95.02054344897844, 0.0, -11.635750494779126>, <90.0, 0.0, -30.0>, <90.0, 0.0, -60.0>}
  triangle { <86.09402956726586, 0.0, -41.53275877360668>, <84.45099337616715, 0.0, -57.68013882868128>, <90.0, 0.0, -60.0>}
  triangle { <90.0, 0.0, -30.0>, <86.09402956726586, 0.0, -41.53275877360668>, <90.0, 0.0, -60.0>}
  triangle { <95.02054344897844, 0.0, -11.635750494779126>, <89.07876537935476, 0.0, -16.533318305315714>, <90.0, 0.0, -30.0>}
  triangle { <90.0, 0.0, -30.0>, <86.34450376980865, 0.0, -39.27583447029798>, <86.09402956726586, 0.0, -41.53275877360668>}
  triangle { <89.07876537935476, 0.0, -16.533318305315714>, <86.34450376980865, 0.0, -39.27583447029798>, <90.0, 0.0, -30.0>}
  triangle { <95.02054344897844, 0.0, -11.635750494779126>, <89.9707176190701, 0.0, -15.067860190404547>, <89.07876537935476, 0.0, -16.533318305315714>}
  triangle { <-46.04228972842782, 0.0, -32.44611796843449>, <-47.81873238539152, 0.0, -48.6796040495391>, <-35.85413543366917, 0.0, -33.0533050030823>}
  triangle { <-47.81873238539152, 0.0, -48.6796040495391>, <-47.63268098930234, 0.0, -48.91145860819617>, <-35.85413543366917, 0.0, -33.0533050030823>}
  triangle { <-45.784576245269356, 0.0, -32.2335400262419>, <-46.04228972842782, 0.0, -32.44611796843449>, <-35.85413543366917, 0.0, -33.0533050030823>}
  triangle { <-35.85413543366917, 0.0, -33.0533050030823>, <-47.63268098930234, 0.0, -48.91145860819617>, <-8.788202015226139, 0.0, -53.175512478089914>}
  triangle { <-8.788202015226139, 0.0, -53.175512478089914>, <-8.55050698325641, 0.0, -52.986382325857264>, <-35.85413543366917, 0.0, -33.0533050030823>}
  triangle { <-8.55050698325641, 0.0, -52.986382325857264>, <-35.813, 0.0, -32.555>, <-35.85413543366917, 0.0, -33.0533050030823>}
  triangle { <-8.022566801837572, 0.0, -48.50450716870585>, <-35.813, 0.0, -32.555>, <-8.55050698325641, 0.0, -52.986382325857264>}
  triangle { <-35.813, 0.0, -32.555>, <-8.022566801837572, 0.0, -48.50450716870585>, <-4.3832121605471075, 0.0, -22.840273655502422>}
  triangle { <-7.526, 0.0, -48.563>, <-4.3832121605471075, 0.0, -22.840273655502422>, <-8.022566801837572, 0.0, -48.50450716870585>}
  triangle { <-35.771864566330834, 0.0, -32.0566949969177>, <-35.813, 0.0, -32.555>, <-4.3832121605471075, 0.0, -22.840273655502422>}
  triangle { <-7.526, 0.0, -48.563>, <-7.029433198162428, 0.0, -48.621492831294155>, <-4.3832121605471075, 0.0, -22.840273655502422>}
  triangle { <-4.259910686629146, 0.0, -19.6732805322779>, <-35.771864566330834, 0.0, -32.0566949969177>, <-4.3832121605471075, 0.0, -22.840273655502422>}
  triangle { <-4.3832121605471075, 0.0, -22.840273655502422>, <-7.029433198162428, 0.0, -48.621492831294155>, <-3.3887878394528923, 0.0, -22.94572634449758>}
  triangle { <-4.259910686629146, 0.0, -19.6732805322779>, <-4.3832121605471075, 0.0, -22.840273655502422>, <-4.072083568060162, 0.0, -19.90631490769806>}
  triangle { <-44.0842396574952, 0.0, -15.340854017501849>, <-35.771864566330834, 0.0, -32.0566949969177>, <-4.259910686629146, 0.0, -19.6732805322779>}
  triangle { <-3.3887878394528923, 0.0, -22.94572634449758>, <-7.029433198162428, 0.0, -48.621492831294155>, <25.382508775177424, 0.0, -38.45248769179276>}
  triangle { <-44.0842396574952, 0.0, -15.340854017501849>, <-44.310639558782114, 0.0, -15.524078907718275>, <-35.771864566330834, 0.0, -32.0566949969177>}
  triangle { <25.382508775177424, 0.0, -38.45248769179276>, <-7.029433198162428, 0.0, -48.621492831294155>, <26.612743257464345, 0.0, -40.02171228691614>}
  triangle { <22.875089369010905, 0.0, -22.444616426855575>, <-3.3887878394528923, 0.0, -22.94572634449758>, <25.382508775177424, 0.0, -38.45248769179276>}
  triangle { <-44.310639558782114, 0.0, -15.524078907718275>, <-45.89050897460583, 0.0, -31.010462648102738>, <-35.771864566330834, 0.0, -32.0566949969177>}
  triangle { <-7.375187023058361, 0.0, -53.3331775370397>, <26.612743257464345, 0.0, -40.02171228691614>, <-7.029433198162428, 0.0, -48.621492831294155>}
  triangle { <25.382508775177424, 0.0, -38.45248769179276>, <27.45667832987653, 0.0, -27.204173285176843>, <22.875089369010905, 0.0, -22.444616426855575>}
  triangle { <22.875089369010905, 0.0, -22.444616426855575>, <-2.844465871004029, 0.0, -19.822539272734083>, <-3.3887878394528923, 0.0, -22.94572634449758>}
  triangle { <-35.771864566330834, 0.0, -32.0566949969177>, <-45.89050897460583, 0.0, -31.010462648102738>, <-45.70230537793102, 0.0, -31.236930020077303>}
  triangle { <-7.557373379581266, 0.0, -53.10336798844557>, <-7.375187023058361, 0.0, -53.3331775370397>, <-7.029433198162428, 0.0, -48.621492831294155>}
  triangle { <-7.375187023058361, 0.0, -53.3331775370397>, <35.37798185152884, 0.0, -58.18093636516033>, <26.612743257464345, 0.0, -40.02171228691614>}
  triangle { <27.45667832987653, 0.0, -27.204173285176843>, <26.133269271492154, 0.0, -23.63637414291441>, <22.875089369010905, 0.0, -22.444616426855575>}
  triangle { <28.051792643864623, 0.0, -31.19909325122628>, <27.45667832987653, 0.0, -27.204173285176843>, <25.382508775177424, 0.0, -38.45248769179276>}
  triangle { <-2.844465871004029, 0.0, -19.822539272734083>, <-3.0776592469659465, 0.0, -20.01176759669322>, <-3.3887878394528923, 0.0, -22.94572634449758>}
  triangle { <35.37798185152884, 0.0, -58.18093636516033>, <29.240857593262593, 0.0, -41.390108138853435>, <26.612743257464345, 0.0, -40.02171228691614>}
  triangle { <28.051792643864623, 0.0, -31.19909325122628>, <25.382508775177424, 0.0, -38.45248769179276>, <26.169491224822576, 0.0, -37.835512308207235>}
  triangle { <29.240857593262593, 0.0, -41.390108138853435>, <35.37798185152884, 0.0, -58.18093636516033>, <35.628625138651856, 0.0, -57.98034465847438>}
  triangle { <26.169491224822576, 0.0, -37.835512308207235>, <27.47045378293961, 0.0, -39.38309122748203>, <28.051792643864623, 0.0, -31.19909325122628>}
  triangle { <37.32693622358962, 0.0, -42.321142450296236>, <29.240857593262593, 0.0, -41.390108138853435>, <35.628625138651856, 0.0, -57.98034465847438>}
  triangle { <26.169491224822576, 0.0, -37.835512308207235>, <27.399725707109496, 0.0, -39.404736903330615>, <27.47045378293961, 0.0, -39.38309122748203>}
  triangle { <36.88841127537364, 0.0, -41.80500920308561>, <29.240857593262593, 0.0, -41.390108138853435>, <37.32693622358962, 0.0, -42.321142450296236>}
  triangle { <-47.773, 0.0, -50.912>, <-51.5122690810627, 0.0, -49.552608560005396>, <-52.39552052567508, 0.0, -57.95551339182828>}
  triangle { <-52.39552052567508, 0.0, -57.95551339182828>, <-51.56845063613467, 0.0, -58.69218178781726>, <-47.773, 0.0, -50.912>}
  triangle { <-49.14491557565444, 0.0, -49.765422541488384>, <-51.5122690810627, 0.0, -49.552608560005396>, <-47.773, 0.0, -50.912>}
  triangle { <-47.773, 0.0, -50.912>, <-51.56845063613467, 0.0, -58.69218178781726>, <-45.122, 0.0, -57.658>}
  triangle { <-49.14491557565444, 0.0, -49.765422541488384>, <-47.773, 0.0, -50.912>, <-47.74179798477386, 0.0, -49.90548752191009>}
  triangle { <-45.122, 0.0, -57.658>, <-51.56845063613467, 0.0, -58.69218178781726>, <-30.0, 0.0, -60.0>}
  triangle { <-47.74179798477386, 0.0, -49.90548752191009>, <-47.773, 0.0, -50.912>, <-8.897319010697666, 0.0, -54.16954139180383>}
  triangle { <-30.0, 0.0, -60.0>, <-51.56845063613467, 0.0, -58.69218178781726>, <35.56687286783706, 0.0, -67.39261023146759>}
  triangle { <33.926, 0.0, -65.372>, <-45.122, 0.0, -57.658>, <-30.0, 0.0, -60.0>}
  triangle { <-8.897319010697666, 0.0, -54.16954139180383>, <-47.773, 0.0, -50.912>, <-7.4878545060484605, 0.0, -54.32681028523024>}
  triangle { <33.926, 0.0, -65.372>, <-30.0, 0.0, -60.0>, <35.56687286783706, 0.0, -67.39261023146759>}
  triangle { <-47.773, 0.0, -50.912>, <30.314, 0.0, -59.105>, <-7.4878545060484605, 0.0, -54.32681028523024>}
  triangle { <36.52544931573936, 0.0, -66.83286808363314>, <33.926, 0.0, -65.372>, <35.56687286783706, 0.0, -67.39261023146759>}
  triangle { <-7.4878545060484605, 0.0, -54.32681028523024>, <30.314, 0.0, -59.105>, <35.26531436853873, 0.0, -59.17456911335086>}
  triangle { <37.240247799946395, 0.0, -59.3380440558576>, <33.926, 0.0, -65.372>, <36.52544931573936, 0.0, -66.83286808363314>}
  triangle { <30.314, 0.0, -59.105>, <33.926, 0.0, -65.372>, <35.26531436853873, 0.0, -59.17456911335086>}
  triangle { <37.240247799946395, 0.0, -59.3380440558576>, <36.74328508078836, 0.0, -59.305973499768115>, <33.926, 0.0, -65.372>}
  triangle { <33.926, 0.0, -65.372>, <36.74328508078836, 0.0, -59.305973499768115>, <35.26531436853873, 0.0, -59.17456911335086>}
  triangle { <-41.04869542461776, 0.0, 18.20881463055178>, <-40.86540099527133, 0.0, 17.978213294923922>, <-40.41308365210859, 0.0, 23.701294859746646>}
  triangle { <-32.87678417449491, 0.0, 27.462214753411303>, <-40.41308365210859, 0.0, 23.701294859746646>, <-40.86540099527133, 0.0, 17.978213294923922>}
  triangle { <-40.86540099527133, 0.0, 17.978213294923922>, <-14.848204145137338, 0.0, 15.002535887587474>, <-32.87678417449491, 0.0, 27.462214753411303>}
  triangle { <-32.87678417449491, 0.0, 27.462214753411303>, <-40.26027718977009, 0.0, 25.142749006123246>, <-40.41308365210859, 0.0, 23.701294859746646>}
  triangle { <-32.812, 0.0, 27.958>, <-32.87678417449491, 0.0, 27.462214753411303>, <-14.848204145137338, 0.0, 15.002535887587474>}
  triangle { <-32.87678417449491, 0.0, 27.462214753411303>, <-39.746853435364784, 0.0, 28.359925544223813>, <-40.26027718977009, 0.0, 25.142749006123246>}
  triangle { <-32.74721582550509, 0.0, 28.453785246588694>, <-32.812, 0.0, 27.958>, <-14.848204145137338, 0.0, 15.002535887587474>}
  triangle { <-39.746853435364784, 0.0, 28.359925544223813>, <-39.96732887239949, 0.0, 28.184381767685714>, <-40.26027718977009, 0.0, 25.142749006123246>}
  triangle { <1.2956342099987839, 0.0, 38.729256911109296>, <-32.74721582550509, 0.0, 28.453785246588694>, <-14.848204145137338, 0.0, 15.002535887587474>}
  triangle { <1.2956342099987839, 0.0, 38.729256911109296>, <-14.848204145137338, 0.0, 15.002535887587474>, <-10.908192125145572, 0.0, 14.94793794643425>}
  triangle { <-0.5401689696879943, 0.0, 46.73883311070674>, <-32.74721582550509, 0.0, 28.453785246588694>, <1.2956342099987839, 0.0, 38.729256911109296>}
  triangle { <-14.848204145137338, 0.0, 15.002535887587474>, <-11.196437220097557, 0.0, 12.562910137223508>, <-10.908192125145572, 0.0, 14.94793794643425>}
  triangle { <-1.66222851655131, 0.0, 14.99805169788583>, <1.2956342099987839, 0.0, 38.729256911109296>, <-10.908192125145572, 0.0, 14.94793794643425>}
  triangle { <2.047824259651179, 0.0, 46.028050189516016>, <-0.5401689696879943, 0.0, 46.73883311070674>, <1.2956342099987839, 0.0, 38.729256911109296>}
  triangle { <-34.72937434680074, 0.0, 59.59163050775816>, <-32.74721582550509, 0.0, 28.453785246588694>, <-0.5401689696879943, 0.0, 46.73883311070674>}
  triangle { <-14.848204145137338, 0.0, 15.002535887587474>, <-12.197105639890816, 0.0, 11.618480859954857>, <-11.196437220097557, 0.0, 12.562910137223508>}
  triangle { <-1.66222851655131, 0.0, 14.99805169788583>, <-10.908192125145572, 0.0, 14.94793794643425>, <-1.9465880416623318, 0.0, 14.05463604467667>}
  triangle { <1.2956342099987839, 0.0, 38.729256911109296>, <-1.66222851655131, 0.0, 14.99805169788583>, <-1.164, 0.0, 14.956>}
  triangle { <1.8410824988302747, 0.0, 46.28896492949304>, <-0.5401689696879943, 0.0, 46.73883311070674>, <2.047824259651179, 0.0, 46.028050189516016>}
  triangle { <-34.72937434680074, 0.0, 59.59163050775816>, <-0.5401689696879943, 0.0, 46.73883311070674>, <0.1131484628894174, 0.0, 56.380192740735254>}
  triangle { <-34.72937434680074, 0.0, 59.59163050775816>, <-36.424938595787786, 0.0, 58.219135555460504>, <-32.74721582550509, 0.0, 28.453785246588694>}
  triangle { <-11.196437220097557, 0.0, 12.562910137223508>, <-12.197105639890816, 0.0, 11.618480859954857>, <-3.773117518037493, 0.0, 10.702896248682935>}
  triangle { <-1.66222851655131, 0.0, 14.99805169788583>, <-1.9465880416623318, 0.0, 14.05463604467667>, <-1.7266740729492125, 0.0, 14.234500745683478>}
  triangle { <-1.164, 0.0, 14.956>, <-0.66577148344869, 0.0, 14.91394830211417>, <1.2956342099987839, 0.0, 38.729256911109296>}
  triangle { <0.1131484628894174, 0.0, 56.380192740735254>, <-0.5401689696879943, 0.0, 46.73883311070674>, <0.3036219926868778, 0.0, 56.148084799413375>}
  triangle { <-36.424938595787786, 0.0, 58.219135555460504>, <-39.814767741363056, 0.0, 29.60517759665011>, <-32.74721582550509, 0.0, 28.453785246588694>}
  triangle { <-3.3292776963824062, 0.0, 11.721526314039254>, <-11.196437220097557, 0.0, 12.562910137223508>, <-3.773117518037493, 0.0, 10.702896248682935>}
  triangle { <1.2956342099987839, 0.0, 38.729256911109296>, <-0.66577148344869, 0.0, 14.91394830211417>, <2.290365790001216, 0.0, 38.6267430888907>}
  triangle { <-32.74721582550509, 0.0, 28.453785246588694>, <-39.814767741363056, 0.0, 29.60517759665011>, <-39.61728508637496, 0.0, 29.351496037401205>}
  triangle { <-3.3292776963824062, 0.0, 11.721526314039254>, <-3.773117518037493, 0.0, 10.702896248682935>, <-3.5479455615124325, 0.0, 10.886637201342852>}
  triangle { <2.290365790001216, 0.0, 38.6267430888907>, <-0.66577148344869, 0.0, 14.91394830211417>, <4.517540733967097, 0.0, 12.994824925171535>}
  triangle { <-0.66577148344869, 0.0, 14.91394830211417>, <-0.7302170398465927, 0.0, 14.150397349911819>, <4.517540733967097, 0.0, 12.994824925171535>}
  triangle { <27.950114524680544, 0.0, 24.171317565884387>, <2.290365790001216, 0.0, 38.6267430888907>, <4.517540733967097, 0.0, 12.994824925171535>}
  triangle { <4.517540733967097, 0.0, 12.994824925171535>, <-0.7302170398465927, 0.0, 14.150397349911819>, <-0.8511429753014443, 0.0, 12.715604712453493>}
  triangle { <27.950114524680544, 0.0, 24.171317565884387>, <4.517540733967097, 0.0, 12.994824925171535>, <27.897885475319455, 0.0, 23.172682434115615>}
  triangle { <30.0, 0.0, 30.0>, <2.290365790001216, 0.0, 38.6267430888907>, <27.950114524680544, 0.0, 24.171317565884387>}
  triangle { <4.517540733967097, 0.0, 12.994824925171535>, <-0.8511429753014443, 0.0, 12.715604712453493>, <1.1506306414217726, 0.0, 10.101788941010822>}
  triangle { <27.897885475319455, 0.0, 23.172682434115615>, <4.517540733967097, 0.0, 12.994824925171535>, <27.970598356982602, 0.0, 15.099339689473796>}
  triangle { <30.0, 0.0, 30.0>, <27.950114524680544, 0.0, 24.171317565884387>, <30.130182442694025, 0.0, 25.488532046094026>}
  triangle { <2.290365790001216, 0.0, 38.6267430888907>, <30.0, 0.0, 30.0>, <6.434818894586079, 0.0, 46.01586302244986>}
  triangle { <1.1506306414217726, 0.0, 10.101788941010822>, <-0.8511429753014443, 0.0, 12.715604712453493>, <-1.027379759922045, 0.0, 10.621531941658544>}
  triangle { <4.517540733967097, 0.0, 12.994824925171535>, <27.618198446646435, 0.0, 10.61345846883056>, <27.970598356982602, 0.0, 15.099339689473796>}
  triangle { <27.897885475319455, 0.0, 23.172682434115615>, <27.970598356982602, 0.0, 15.099339689473796>, <28.81099230831381, 0.0, 17.170224126240008>}
  triangle { <30.130182442694025, 0.0, 25.488532046094026>, <27.950114524680544, 0.0, 24.171317565884387>, <29.764110894783837, 0.0, 24.076444771065773>}
  triangle { <30.0, 0.0, 30.0>, <30.130182442694025, 0.0, 25.488532046094026>, <32.30301103030029, 0.0, 25.66789513565129>}
  triangle { <30.0, 0.0, 30.0>, <33.12668768573749, 0.0, 35.11093974826928>, <6.434818894586079, 0.0, 46.01586302244986>}
  triangle { <2.290365790001216, 0.0, 38.6267430888907>, <6.434818894586079, 0.0, 46.01586302244986>, <4.548951745911973, 0.0, 45.93338972203555>}
  triangle { <-0.8149656806784428, 0.0, 10.3630204494435>, <1.1506306414217726, 0.0, 10.101788941010822>, <-1.027379759922045, 0.0, 10.621531941658544>}
  triangle { <29.83792319408856, 0.0, 20.694282043413942>, <27.897885475319455, 0.0, 23.172682434115615>, <28.81099230831381, 0.0, 17.170224126240008>}
  triangle { <30.130182442694025, 0.0, 25.488532046094026>, <29.764110894783837, 0.0, 24.076444771065773>, <29.967, 0.0, 24.26899998368323>}
  triangle { <30.130182442694025, 0.0, 25.488532046094026>, <32.069298033182896, 0.0, 25.472410177560064>, <32.30301103030029, 0.0, 25.66789513565129>}
  triangle { <30.0, 0.0, 30.0>, <32.30301103030029, 0.0, 25.66789513565129>, <32.885457022121905, 0.0, 32.49524219210339>}
  triangle { <32.57041282878435, 0.0, 51.830274973790225>, <6.434818894586079, 0.0, 46.01586302244986>, <33.12668768573749, 0.0, 35.11093974826928>}
  triangle { <33.12668768573749, 0.0, 35.11093974826928>, <30.0, 0.0, 30.0>, <32.885457022121905, 0.0, 32.49524219210339>}
  triangle { <4.548951745911973, 0.0, 45.93338972203555>, <3.0425558396536116, 0.0, 45.92553636729742>, <2.290365790001216, 0.0, 38.6267430888907>}
  triangle { <31.240080420731033, 0.0, 20.29653222218343>, <29.83792319408856, 0.0, 20.694282043413942>, <28.81099230831381, 0.0, 17.170224126240008>}
  triangle { <29.899420311812978, 0.0, 22.860211908078053>, <27.897885475319455, 0.0, 23.172682434115615>, <29.83792319408856, 0.0, 20.694282043413942>}
  triangle { <32.57041282878435, 0.0, 51.830274973790225>, <33.12668768573749, 0.0, 35.11093974826928>, <34.60546477340168, 0.0, 50.02601741880976>}
  triangle { <3.2672247720581176, 0.0, 46.10291134418977>, <3.0425558396536116, 0.0, 45.92553636729742>, <4.548951745911973, 0.0, 45.93338972203555>}
  triangle { <31.189154118313088, 0.0, 20.414921653710998>, <29.83792319408856, 0.0, 20.694282043413942>, <31.240080420731033, 0.0, 20.29653222218343>}
  triangle { <29.899420311812978, 0.0, 22.860211908078053>, <29.71188184542275, 0.0, 23.077809639297>, <27.897885475319455, 0.0, 23.172682434115615>}
  triangle { <34.12180861757728, 0.0, 35.01227703487515>, <34.19301736937973, 0.0, 34.97408867905616>, <35.60058570524147, 0.0, 49.927354705415624>}
  triangle { <53.283993153605486, 0.0, 50.57427732891986>, <35.60058570524147, 0.0, 49.927354705415624>, <34.19301736937973, 0.0, 34.97408867905616>}
  triangle { <53.283993153605486, 0.0, 50.57427732891986>, <38.34476791581325, 0.0, 52.17297464559702>, <35.60058570524147, 0.0, 49.927354705415624>}
  triangle { <53.25465126379002, 0.0, 50.67175601346109>, <38.34476791581325, 0.0, 52.17297464559702>, <53.283993153605486, 0.0, 50.57427732891986>}
  triangle { <29.600648590069138, 0.0, 16.55667465253447>, <29.653255987684698, 0.0, 16.430184817516018>, <32.02973670248636, 0.0, 19.68298274847789>}
  triangle { <32.02973670248636, 0.0, 19.68298274847789>, <29.653255987684698, 0.0, 16.430184817516018>, <49.45710830400129, 0.0, 14.002669255486229>}
  triangle { <32.8875657029083, 0.0, 21.787682624222196>, <32.02973670248636, 0.0, 19.68298274847789>, <49.45710830400129, 0.0, 14.002669255486229>}
  triangle { <33.155241332339585, 0.0, 24.13600607985389>, <32.8875657029083, 0.0, 21.787682624222196>, <49.45710830400129, 0.0, 14.002669255486229>}
  triangle { <49.45710830400129, 0.0, 14.002669255486229>, <49.689619567922996, 0.0, 14.184765400347787>, <33.155241332339585, 0.0, 24.13600607985389>}
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <33.299391812939554, 0.0, 25.58289315927924>, <33.155241332339585, 0.0, 24.13600607985389>}
  triangle { <49.689619567922996, 0.0, 14.184765400347787>, <34.82577638357442, 0.0, 34.199739901078594>, <33.299391812939554, 0.0, 25.58289315927924>}
  triangle { <33.299391812939554, 0.0, 25.58289315927924>, <34.82577638357442, 0.0, 34.199739901078594>, <33.88183780476117, 0.0, 32.410240215731335>}
  triangle { <34.82577638357442, 0.0, 34.199739901078594>, <49.689619567922996, 0.0, 14.184765400347787>, <53.9811344449339, 0.0, 49.7645167996789>}
  triangle { <53.916752167800176, 0.0, 49.7999285509423>, <34.82577638357442, 0.0, 34.199739901078594>, <53.9811344449339, 0.0, 49.7645167996789>}
  triangle { <1.2981664492748917, 0.0, 56.04377121511079>, <0.24416896968799431, 0.0, 47.359166889293256>, <1.9686898768616372, 0.0, 47.280789690764884>}
  triangle { <6.098316058636393, 0.0, 55.63411115347512>, <1.2981664492748917, 0.0, 56.04377121511079>, <1.9686898768616372, 0.0, 47.280789690764884>}
  triangle { <6.098316058636393, 0.0, 55.63411115347512>, <1.9686898768616372, 0.0, 47.280789690764884>, <3.3983432516214105, 0.0, 47.09427804945933>}
  triangle { <6.098316058636393, 0.0, 55.63411115347512>, <1.548229858835267, 0.0, 56.24941045715724>, <1.2981664492748917, 0.0, 56.04377121511079>}
  triangle { <5.084867762591443, 0.0, 47.23865159803298>, <6.098316058636393, 0.0, 55.63411115347512>, <3.3983432516214105, 0.0, 47.09427804945933>}
  triangle { <5.9190388365646305, 0.0, 55.85562353289325>, <1.548229858835267, 0.0, 56.24941045715724>, <6.098316058636393, 0.0, 55.63411115347512>}
  triangle { <3.3983432516214105, 0.0, 47.09427804945933>, <4.680070225475266, 0.0, 46.924756427305105>, <5.084867762591443, 0.0, 47.23865159803298>}
  triangle { <6.0776605172084235, 0.0, 47.118807756388826>, <6.217657021520886, 0.0, 46.9919986282377>, <7.091108813253373, 0.0, 55.51426731183096>}
  triangle { <6.217657021520886, 0.0, 46.9919986282377>, <7.338877289716304, 0.0, 55.70969226787376>, <7.091108813253373, 0.0, 55.51426731183096>}
  triangle { <6.217657021520886, 0.0, 46.9919986282377>, <32.353250955719155, 0.0, 52.80641057957807>, <7.338877289716304, 0.0, 55.70969226787376>}
  triangle { <32.35251009500541, 0.0, 52.82065643740808>, <7.338877289716304, 0.0, 55.70969226787376>, <32.353250955719155, 0.0, 52.80641057957807>}
  triangle { <85.01261053049193, 0.0, -41.37778362379898>, <55.58855710413711, 0.0, -59.86056523480544>, <60.0, 0.0, -60.0>}
  triangle { <55.58855710413711, 0.0, -59.86056523480544>, <55.60118555189587, 0.0, -59.915083725378025>, <60.0, 0.0, -60.0>}
  triangle { <60.0, 0.0, -60.0>, <77.4231788322653, 0.0, -62.22851922632819>, <85.01261053049193, 0.0, -41.37778362379898>}
  triangle { <60.0, 0.0, -60.0>, <55.60118555189587, 0.0, -59.915083725378025>, <77.4231788322653, 0.0, -62.22851922632819>}
  triangle { <85.01261053049193, 0.0, -41.37778362379898>, <77.4231788322653, 0.0, -62.22851922632819>, <83.45613030624334, 0.0, -57.578909030194026>}
  triangle { <83.45613030624334, 0.0, -57.578909030194026>, <77.4231788322653, 0.0, -62.22851922632819>, <79.45521042016759, 0.0, -61.650538161913104>}
  triangle { <85.01261053049193, 0.0, -41.37778362379898>, <83.45613030624334, 0.0, -57.578909030194026>, <85.09916649734205, 0.0, -41.43152897511943>}
  triangle { <79.45521042016759, 0.0, -61.650538161913104>, <82.5150949358918, 0.0, -59.27646923073621>, <83.45613030624334, 0.0, -57.578909030194026>}
  triangle { <55.66156985732836, 0.0, 54.318590662958194>, <55.3404785851387, 0.0, 52.28084258923507>, <56.02199127190947, 0.0, 51.39578813590365>}
  triangle { <55.66156985732836, 0.0, 54.318590662958194>, <56.02199127190947, 0.0, 51.39578813590365>, <89.84281376403065, 0.0, 47.92563929104534>}
  triangle { <55.66156985732836, 0.0, 54.318590662958194>, <89.84281376403065, 0.0, 47.92563929104534>, <93.33030134864752, 0.0, 50.363251331073556>}
  triangle { <89.84281376403065, 0.0, 47.92563929104534>, <93.01621041571299, 0.0, 47.140549521368065>, <93.33030134864752, 0.0, 50.363251331073556>}
  triangle { <89.84281376403065, 0.0, 47.92563929104534>, <92.6065077423244, 0.0, 46.88585765987982>, <93.01621041571299, 0.0, 47.140549521368065>}
  triangle { <94.32486138878545, 0.0, 50.258819291848>, <94.01149456578194, 0.0, 47.04354714705945>, <94.50045126709631, 0.0, 46.4566019895836>}
  triangle { <94.32486138878545, 0.0, 50.258819291848>, <94.50045126709631, 0.0, 46.4566019895836>, <99.09346372459464, 0.0, 49.75810053572823>}
  triangle { <99.09346372459464, 0.0, 49.75810053572823>, <94.50045126709631, 0.0, 46.4566019895836>, <100.99111146536308, 0.0, 45.90686475056884>}
  triangle { <99.09346372459464, 0.0, 49.75810053572823>, <100.99111146536308, 0.0, 45.90686475056884>, <101.3419623813609, 0.0, 49.288264847232604>}
  triangle { <-10.289807874854429, 0.0, 14.16206205356575>, <-10.413562779902442, 0.0, 13.185089862776493>, <-2.556722303617594, 0.0, 12.356473685960745>}
  triangle { <-10.289807874854429, 0.0, 14.16206205356575>, <-2.556722303617594, 0.0, 12.356473685960745>, <-2.061819593820343, 0.0, 13.061297386721964>}
  triangle { <-2.061819593820343, 0.0, 13.061297386721964>, <-2.556722303617594, 0.0, 12.356473685960745>, <-1.847620240077955, 0.0, 12.799468058341455>}
  triangle { <-2.556722303617594, 0.0, 12.356473685960745>, <-2.0238570246985557, 0.0, 10.705395287546507>, <-1.847620240077955, 0.0, 12.799468058341455>}
  triangle { <-2.556722303617594, 0.0, 12.356473685960745>, <-2.551912796613685, 0.0, 10.797649948052525>, <-2.0238570246985557, 0.0, 10.705395287546507>}
  triangle { <-2.551912796613685, 0.0, 10.797649948052525>, <-2.3407146605188185, 0.0, 10.53783139484442>, <-2.0238570246985557, 0.0, 10.705395287546507>}
  triangle { <-2.3407146605188185, 0.0, 10.53783139484442>, <-2.2429343832178295, 0.0, 10.526376768118714>, <-2.0238570246985557, 0.0, 10.705395287546507>}
  triangle { <-93.2963024983847, 0.0, -43.885147729660744>, <-90.0, 0.0, -30.0>, <-89.78069285242289, 0.0, -7.344450470251665>}
  triangle { <-73.19874314668495, 0.0, -37.36257015897867>, <-89.78069285242289, 0.0, -7.344450470251665>, <-90.0, 0.0, -30.0>}
  triangle { <-90.0, 0.0, -30.0>, <-93.2963024983847, 0.0, -43.885147729660744>, <-79.24374915028855, 0.0, -37.84306491148583>}
  triangle { <-73.19874314668495, 0.0, -37.36257015897867>, <-90.0, 0.0, -30.0>, <-79.24374915028855, 0.0, -37.84306491148583>}
  triangle { <-55.51582669544817, 0.0, -18.53027969782603>, <-89.78069285242289, 0.0, -7.344450470251665>, <-73.19874314668495, 0.0, -37.36257015897867>}
  triangle { <-93.10190515147885, 0.0, -44.124052623872245>, <-79.24374915028855, 0.0, -37.84306491148583>, <-93.2963024983847, 0.0, -43.885147729660744>}
  triangle { <-73.19874314668495, 0.0, -37.36257015897867>, <-79.24374915028855, 0.0, -37.84306491148583>, <-73.47603808872445, 0.0, -38.454602867734>}
  triangle { <-55.51582669544817, 0.0, -18.53027969782603>, <-73.19874314668495, 0.0, -37.36257015897867>, <-55.3683490709696, 0.0, -20.54693650007112>}
  triangle { <-55.51582669544817, 0.0, -18.53027969782603>, <-55.3859828969417, 0.0, -17.538745236503875>, <-89.78069285242289, 0.0, -7.344450470251665>}
  triangle { <-80.87439046470021, 0.0, -45.459688608400675>, <-79.24374915028855, 0.0, -37.84306491148583>, <-93.10190515147885, 0.0, -44.124052623872245>}
  triangle { <-73.19874314668495, 0.0, -37.36257015897867>, <-73.47603808872445, 0.0, -38.454602867734>, <-73.26401557995, 0.0, -38.2814051810944>}
  triangle { <-55.3683490709696, 0.0, -20.54693650007112>, <-73.19874314668495, 0.0, -37.36257015897867>, <-72.7, 0.0, -37.398>}
  triangle { <-55.51582669544817, 0.0, -18.53027969782603>, <-55.3683490709696, 0.0, -20.54693650007112>, <-55.31630503532203, 0.0, -18.78587966443435>}
  triangle { <-89.78069285242289, 0.0, -7.344450470251665>, <-55.3859828969417, 0.0, -17.538745236503875>, <-88.43578475880167, 0.0, -3.3752012187319145>}
  triangle { <-79.24374915028855, 0.0, -37.84306491148583>, <-80.87439046470021, 0.0, -45.459688608400675>, <-80.58025817304987, 0.0, -45.23563992663016>}
  triangle { <-55.3683490709696, 0.0, -20.54693650007112>, <-72.7, 0.0, -37.398>, <-72.20125685331506, 0.0, -37.433429841021336>}
  triangle { <-55.3859828969417, 0.0, -17.538745236503875>, <-80.99773923024823, 0.0, 8.672821262228219>, <-88.43578475880167, 0.0, -3.3752012187319145>}
  triangle { <-66.50036902459757, 0.0, -39.38397167353331>, <-55.3683490709696, 0.0, -20.54693650007112>, <-72.20125685331506, 0.0, -37.433429841021336>}
  triangle { <-52.305801554816064, 0.0, 7.451677330659035>, <-80.99773923024823, 0.0, 8.672821262228219>, <-55.3859828969417, 0.0, -17.538745236503875>}
  triangle { <-66.50036902459757, 0.0, -39.38397167353331>, <-72.20125685331506, 0.0, -37.433429841021336>, <-72.03708420803741, 0.0, -38.62711085964709>}
  triangle { <-54.71814262621485, 0.0, -20.97238978070984>, <-55.3683490709696, 0.0, -20.54693650007112>, <-66.50036902459757, 0.0, -39.38397167353331>}
  triangle { <-52.305801554816064, 0.0, 7.451677330659035>, <-55.3859828969417, 0.0, -17.538745236503875>, <-55.15168245320353, 0.0, -17.355705729769525>}
  triangle { <-52.147028148200455, 0.0, 8.879399981508321>, <-80.99773923024823, 0.0, 8.672821262228219>, <-52.305801554816064, 0.0, 7.451677330659035>}
  triangle { <-72.20125685331506, 0.0, -37.433429841021336>, <-72.26652928658011, 0.0, -38.352264863137066>, <-72.03708420803741, 0.0, -38.62711085964709>}
  triangle { <-57.60112073609625, 0.0, -47.77165057098373>, <-54.71814262621485, 0.0, -20.97238978070984>, <-66.50036902459757, 0.0, -39.38397167353331>}
  triangle { <-54.90733542330558, 0.0, -20.74095128303858>, <-55.3683490709696, 0.0, -20.54693650007112>, <-54.71814262621485, 0.0, -20.97238978070984>}
  triangle { <-50.70826786349026, 0.0, 25.032705946811575>, <-80.99773923024823, 0.0, 8.672821262228219>, <-52.147028148200455, 0.0, 8.879399981508321>}
  triangle { <-66.50036902459757, 0.0, -39.38397167353331>, <-57.84239382019627, 0.0, -47.9657103412785>, <-57.60112073609625, 0.0, -47.77165057098373>}
  triangle { <-55.3683490709696, 0.0, -20.54693650007112>, <-54.90733542330558, 0.0, -20.74095128303858>, <-54.85001430605102, 0.0, -20.126586487848684>}
  triangle { <-50.43222233520026, 0.0, 24.801679317412727>, <-50.70826786349026, 0.0, 25.032705946811575>, <-52.147028148200455, 0.0, 8.879399981508321>}
  triangle { <-85.95832883986007, 0.0, 19.11906342520419>, <-80.99773923024823, 0.0, 8.672821262228219>, <-50.70826786349026, 0.0, 25.032705946811575>}
  triangle { <-66.50036902459757, 0.0, -39.38397167353331>, <-67.20392367402329, 0.0, -46.94221314610424>, <-57.84239382019627, 0.0, -47.9657103412785>}
  triangle { <-50.616811284043244, 0.0, 25.02513166890929>, <-50.70826786349026, 0.0, 25.032705946811575>, <-50.43222233520026, 0.0, 24.801679317412727>}
  triangle { <-50.70826786349026, 0.0, 25.032705946811575>, <-86.50376067184908, 0.0, 22.279330301924784>, <-85.95832883986007, 0.0, 19.11906342520419>}
  triangle { <-67.37857481993458, 0.0, -46.71767361956021>, <-67.20392367402329, 0.0, -46.94221314610424>, <-66.50036902459757, 0.0, -39.38397167353331>}
  triangle { <-50.70826786349026, 0.0, 25.032705946811575>, <-65.81190946112575, 0.0, 43.3546745938292>, <-86.50376067184908, 0.0, 22.279330301924784>}
  triangle { <-65.81190946112575, 0.0, 43.3546745938292>, <-72.20694623699784, 0.0, 46.36656741259151>, <-86.50376067184908, 0.0, 22.279330301924784>}
  triangle { <-50.62573213650974, 0.0, 26.029294053188423>, <-65.81190946112575, 0.0, 43.3546745938292>, <-50.70826786349026, 0.0, 25.032705946811575>}
  triangle { <-72.20694623699784, 0.0, 46.36656741259151>, <-82.01273051138729, 0.0, 64.13682539049584>, <-86.50376067184908, 0.0, 22.279330301924784>}
  triangle { <-66.73509488950143, 0.0, 45.633672879001104>, <-72.20694623699784, 0.0, 46.36656741259151>, <-65.81190946112575, 0.0, 43.3546745938292>}
  triangle { <-50.62573213650974, 0.0, 26.029294053188423>, <-64.81609053887423, 0.0, 43.26332540617079>, <-65.81190946112575, 0.0, 43.3546745938292>}
  triangle { <-72.20694623699784, 0.0, 46.36656741259151>, <-80.22353266126517, 0.0, 64.19076164796736>, <-82.01273051138729, 0.0, 64.13682539049584>}
  triangle { <-66.73509488950143, 0.0, 45.633672879001104>, <-65.81190946112575, 0.0, 43.3546745938292>, <-65.71689514182464, 0.0, 44.39044797584018>}
  triangle { <-49.02937024321101, 0.0, 37.365416228090346>, <-64.81609053887423, 0.0, 43.26332540617079>, <-50.62573213650974, 0.0, 26.029294053188423>}
  triangle { <-81.7558493005777, 0.0, 64.34528097294006>, <-82.01273051138729, 0.0, 64.13682539049584>, <-80.22353266126517, 0.0, 64.19076164796736>}
  triangle { <-78.79124507073593, 0.0, 64.04576289932493>, <-80.22353266126517, 0.0, 64.19076164796736>, <-72.20694623699784, 0.0, 46.36656741259151>}
  triangle { <-49.02937024321101, 0.0, 37.365416228090346>, <-50.62573213650974, 0.0, 26.029294053188423>, <-50.284541421468916, 0.0, 26.229808326278178>}
  triangle { <-49.02937024321101, 0.0, 37.365416228090346>, <-57.76466701275781, 0.0, 44.96897280100885>, <-64.81609053887423, 0.0, 43.26332540617079>}
  triangle { <-70.70645002696602, 0.0, 63.011656524820374>, <-78.79124507073593, 0.0, 64.04576289932493>, <-72.20694623699784, 0.0, 46.36656741259151>}
  triangle { <-50.62573213650974, 0.0, 26.029294053188423>, <-50.53427555706272, 0.0, 26.021719775286137>, <-50.284541421468916, 0.0, 26.229808326278178>}
  triangle { <-57.76466701275781, 0.0, 44.96897280100885>, <-63.49977919193639, 0.0, 45.3210815947171>, <-64.81609053887423, 0.0, 43.26332540617079>}
  triangle { <-49.02937024321101, 0.0, 37.365416228090346>, <-56.22699721006738, 0.0, 51.3906373385389>, <-57.76466701275781, 0.0, 44.96897280100885>}
  triangle { <-70.89591658995327, 0.0, 63.243350786070884>, <-78.79124507073593, 0.0, 64.04576289932493>, <-70.70645002696602, 0.0, 63.011656524820374>}
  triangle { <-64.81609053887423, 0.0, 43.26332540617079>, <-63.49977919193639, 0.0, 45.3210815947171>, <-64.72107621957312, 0.0, 44.29909878818177>}
  triangle { <-56.22699721006738, 0.0, 51.3906373385389>, <-56.96653670859694, 0.0, 50.405253427684286>, <-57.76466701275781, 0.0, 44.96897280100885>}
  triangle { <-56.22699721006738, 0.0, 51.3906373385389>, <-49.02937024321101, 0.0, 37.365416228090346>, <-45.43009519531502, 0.0, 36.92823423881494>}
  triangle { <-37.41799431072776, 0.0, 58.33678055971085>, <-56.22699721006738, 0.0, 51.3906373385389>, <-45.43009519531502, 0.0, 36.92823423881494>}
  triangle { <-45.43009519531502, 0.0, 36.92823423881494>, <-40.807823456303026, 0.0, 29.722822600900457>, <-37.41799431072776, 0.0, 58.33678055971085>}
  triangle { <-37.41799431072776, 0.0, 58.33678055971085>, <-38.33743654968535, 0.0, 59.0251792487881>, <-56.22699721006738, 0.0, 51.3906373385389>}
  triangle { <-45.43009519531502, 0.0, 36.92823423881494>, <-46.75320712947428, 0.0, 25.475898913666384>, <-40.807823456303026, 0.0, 29.722822600900457>}
  triangle { <-40.807823456303026, 0.0, 29.722822600900457>, <-46.75320712947428, 0.0, 25.475898913666384>, <-40.962722810229906, 0.0, 28.280250993876756>}
  triangle { <-41.48845126783314, 0.0, 25.0492236061808>, <-40.962722810229906, 0.0, 28.280250993876756>, <-46.75320712947428, 0.0, 25.475898913666384>}
  triangle { <-41.25567112760051, 0.0, 25.238618232314288>, <-40.962722810229906, 0.0, 28.280250993876756>, <-41.48845126783314, 0.0, 25.0492236061808>}
  triangle { <-49.43797185179954, 0.0, 24.694600018491677>, <-51.152777664799736, 0.0, 8.772320682587267>, <-42.20519301168743, 0.0, 16.91308579371895>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-42.20519301168743, 0.0, 16.91308579371895>, <-51.152777664799736, 0.0, 8.772320682587267>}
  triangle { <-49.43797185179954, 0.0, 24.694600018491677>, <-42.20519301168743, 0.0, 16.91308579371895>, <-42.04206591591583, 0.0, 18.32377143556241>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-51.152777664799736, 0.0, 8.772320682587267>, <-50.957152636334264, 0.0, 8.522212290138835>}
  triangle { <-50.077730805842485, 0.0, 8.424259778350583>, <-43.12931330409814, 0.0, 7.68422847732381>, <-42.20519301168743, 0.0, 16.91308579371895>}
  triangle { <-47.53479287052571, 0.0, 24.85210108633362>, <-49.43797185179954, 0.0, 24.694600018491677>, <-42.04206591591583, 0.0, 18.32377143556241>}
  triangle { <-41.59703450025469, 0.0, 24.055136245011322>, <-47.53479287052571, 0.0, 24.85210108633362>, <-42.04206591591583, 0.0, 18.32377143556241>}
  triangle { <-49.28941815703415, 0.0, 26.13116914247833>, <-49.43797185179954, 0.0, 24.694600018491677>, <-47.53479287052571, 0.0, 24.85210108633362>}
  triangle { <-41.59703450025469, 0.0, 24.055136245011322>, <-42.04206591591583, 0.0, 18.32377143556241>, <-41.406454143406656, 0.0, 23.816251664757274>}
  triangle { <-49.28941815703415, 0.0, 26.13116914247833>, <-47.53479287052571, 0.0, 24.85210108633362>, <-46.21590480468498, 0.0, 36.30976576118506>}
  triangle { <-48.404629756788985, 0.0, 36.58458377190966>, <-49.28941815703415, 0.0, 26.13116914247833>, <-46.21590480468498, 0.0, 36.30976576118506>}
  triangle { <-99.32694843947775, 0.0, -62.743415576546695>, <-102.58214666128366, 0.0, -90.0>, <-90.0, 0.0, -90.0>}
  triangle { <-99.32694843947775, 0.0, -62.743415576546695>, <-90.0, 0.0, -90.0>, <-90.0, 0.0, -60.0>}
  triangle { <-90.0, 0.0, -60.0>, <-90.0, 0.0, -90.0>, <-60.0, 0.0, -90.0>}
  triangle { <-96.7999001587966, 0.0, -59.703757074961835>, <-99.32694843947775, 0.0, -62.743415576546695>, <-90.0, 0.0, -60.0>}
  triangle { <-90.0, 0.0, -60.0>, <-60.0, 0.0, -90.0>, <-57.246644392502375, 0.0, -62.16491883879044>}
  triangle { <-93.8579586153066, 0.0, -58.74494007368651>, <-96.7999001587966, 0.0, -59.703757074961835>, <-90.0, 0.0, -60.0>}
  triangle { <-57.246644392502375, 0.0, -62.16491883879044>, <-60.0, 0.0, -90.0>, <-51.965872867837064, 0.0, -62.672389768532426>}
  triangle { <-93.8579586153066, 0.0, -58.74494007368651>, <-90.0, 0.0, -60.0>, <-57.246644392502375, 0.0, -62.16491883879044>}
  triangle { <-32.228, 0.0, -71.394>, <-51.965872867837064, 0.0, -62.672389768532426>, <-60.0, 0.0, -90.0>}
  triangle { <-32.228, 0.0, -71.394>, <-60.0, 0.0, -90.0>, <-30.0, 0.0, -90.0>}
  triangle { <-34.339, 0.0, -65.072>, <-51.965872867837064, 0.0, -62.672389768532426>, <-32.228, 0.0, -71.394>}
  triangle { <-32.228, 0.0, -71.394>, <-30.0, 0.0, -90.0>, <0.0, 0.0, -90.0>}
  triangle { <-51.965872867837064, 0.0, -62.672389768532426>, <-34.339, 0.0, -65.072>, <18.134338302773436, 0.0, -69.67186881616428>}
  triangle { <32.605, 0.0, -77.417>, <-32.228, 0.0, -71.394>, <0.0, 0.0, -90.0>}
  triangle { <32.605, 0.0, -77.417>, <0.0, 0.0, -90.0>, <30.0, 0.0, -90.0>}
  triangle { <32.605, 0.0, -77.417>, <30.0, 0.0, -90.0>, <42.49, 0.0, -78.441>}
  triangle { <60.0, 0.0, -90.0>, <42.49, 0.0, -78.441>, <30.0, 0.0, -90.0>}
  triangle { <42.49, 0.0, -78.441>, <38.994, 0.0, -71.817>, <32.605, 0.0, -77.417>}
  triangle { <54.962, 0.0, -79.71>, <42.49, 0.0, -78.441>, <60.0, 0.0, -90.0>}
  triangle { <35.16945063613467, 0.0, -71.37281821218275>, <32.605, 0.0, -77.417>, <38.994, 0.0, -71.817>}
  triangle { <54.962, 0.0, -79.71>, <60.0, 0.0, -90.0>, <62.672, 0.0, -80.556>}
  triangle { <35.16945063613467, 0.0, -71.37281821218275>, <38.994, 0.0, -71.817>, <40.47059698310431, 0.0, -71.89325090768263>}
  triangle { <29.598298074393004, 0.0, -70.81654077769451>, <32.605, 0.0, -77.417>, <35.16945063613467, 0.0, -71.37281821218275>}
  triangle { <60.0, 0.0, -90.0>, <80.15719031647207, 0.0, -89.94776516869143>, <62.672, 0.0, -80.556>}
  triangle { <59.273005771136596, 0.0, -73.70764875735976>, <54.962, 0.0, -79.71>, <62.672, 0.0, -80.556>}
  triangle { <52.365, 0.0, -73.142>, <40.47059698310431, 0.0, -71.89325090768263>, <38.994, 0.0, -71.817>}
  triangle { <79.062, 0.0, -82.059>, <62.672, 0.0, -80.556>, <80.15719031647207, 0.0, -89.94776516869143>}
  triangle { <80.15719031647207, 0.0, -89.94776516869143>, <60.0, 0.0, -90.0>, <80.15170333692129, 0.0, -90.0>}
  triangle { <52.365, 0.0, -73.142>, <54.962, 0.0, -79.71>, <59.273005771136596, 0.0, -73.70764875735976>}
  triangle { <40.47059698310431, 0.0, -71.89325090768263>, <52.365, 0.0, -73.142>, <59.273005771136596, 0.0, -73.70764875735976>}
  triangle { <79.062, 0.0, -82.059>, <80.15719031647207, 0.0, -89.94776516869143>, <80.78051780769282, 0.0, -84.01382536582814>}
  triangle { <79.062, 0.0, -82.059>, <80.78051780769282, 0.0, -84.01382536582814>, <80.92793681057366, 0.0, -82.58337019245242>}
  triangle { <80.3421262253072, 0.0, -75.74078011183641>, <79.062, 0.0, -82.059>, <80.92793681057366, 0.0, -82.58337019245242>}
  triangle { <80.3421262253072, 0.0, -75.74078011183641>, <80.92793681057366, 0.0, -82.58337019245242>, <81.6295397034981, 0.0, -75.64169791817683>}
  triangle { <75.989, 0.0, -75.369>, <79.062, 0.0, -82.059>, <80.3421262253072, 0.0, -75.74078011183641>}
  triangle { <69.80133714248457, 0.0, -74.72361336148117>, <75.989, 0.0, -75.369>, <80.3421262253072, 0.0, -75.74078011183641>}
  triangle { <-69.71130496284417, 0.0, 62.91323751571195>, <-71.43105376300217, 0.0, 46.9974325874085>, <-66.63265387315971, 0.0, 47.76025887794329>}
  triangle { <-66.63265387315971, 0.0, 47.76025887794329>, <-71.43105376300217, 0.0, 46.9974325874085>, <-66.62841609288583, 0.0, 46.627966414307785>}
  triangle { <-69.71130496284417, 0.0, 62.91323751571195>, <-66.63265387315971, 0.0, 47.76025887794329>, <-65.10801294257925, 0.0, 61.56970628431899>}
  triangle { <-69.48279401750271, 0.0, 63.10023494657305>, <-69.71130496284417, 0.0, 62.91323751571195>, <-65.10801294257925, 0.0, 61.56970628431899>}
  triangle { <-64.83511924969939, 0.0, 62.63118513197039>, <-69.48279401750271, 0.0, 63.10023494657305>, <-65.10801294257925, 0.0, 61.56970628431899>}
  triangle { <-63.15379228059206, 0.0, 47.37617292433706>, <-63.4141274386966, 0.0, 46.317406730988864>, <-58.395332987242185, 0.0, 45.745027198991146>}
  triangle { <-63.15379228059206, 0.0, 47.37617292433706>, <-58.395332987242185, 0.0, 45.745027198991146>, <-57.95931929969084, 0.0, 50.52518143450877>}
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-63.15379228059206, 0.0, 47.37617292433706>, <-57.95931929969084, 0.0, 50.52518143450877>}
  triangle { <-57.72910511723996, 0.0, 52.50724868059847>, <-60.0, 0.0, 60.0>, <-63.15379228059206, 0.0, 47.37617292433706>}
  triangle { <-61.6291513500116, 0.0, 61.18562033071276>, <-63.15379228059206, 0.0, 47.37617292433706>, <-60.0, 0.0, 60.0>}
  triangle { <-60.0, 0.0, 60.0>, <-57.72910511723996, 0.0, 52.50724868059847>, <-56.71570758260076, 0.0, 61.59584218477965>}
  triangle { <-61.651301369395235, 0.0, 62.30984711658272>, <-61.6291513500116, 0.0, 61.18562033071276>, <-60.0, 0.0, 60.0>}
  triangle { <-56.905572776098644, 0.0, 61.83083396681987>, <-60.0, 0.0, 60.0>, <-56.71570758260076, 0.0, 61.59584218477965>}
  triangle { <-61.651301369395235, 0.0, 62.30984711658272>, <-60.0, 0.0, 60.0>, <-56.905572776098644, 0.0, 61.83083396681987>}
  triangle { <43.451, 0.0, -60.307>, <40.73462281446511, 0.0, -59.56354698712511>, <40.00963931178686, 0.0, -67.16516324074883>}
  triangle { <43.451, 0.0, -60.307>, <40.00963931178686, 0.0, -67.16516324074883>, <46.461, 0.0, -66.752>}
  triangle { <42.899274237150074, 0.0, -59.703238702799496>, <40.73462281446511, 0.0, -59.56354698712511>, <43.451, 0.0, -60.307>}
  triangle { <46.461, 0.0, -66.752>, <40.00963931178686, 0.0, -67.16516324074883>, <40.8548049158778, 0.0, -67.91174563148446>}
  triangle { <42.899274237150074, 0.0, -59.703238702799496>, <43.451, 0.0, -60.307>, <44.29876276977065, 0.0, -59.81580172377705>}
  triangle { <46.461, 0.0, -66.752>, <40.8548049158778, 0.0, -67.91174563148446>, <80.7263341580807, 0.0, -71.75927483563825>}
  triangle { <44.29876276977065, 0.0, -59.81580172377705>, <43.451, 0.0, -60.307>, <52.456092661138804, 0.0, -60.60192738289513>}
  triangle { <46.461, 0.0, -66.752>, <80.7263341580807, 0.0, -71.75927483563825>, <80.985, 0.0, -70.548>}
  triangle { <52.456092661138804, 0.0, -60.60192738289513>, <43.451, 0.0, -60.307>, <55.49576237913884, 0.0, -60.90951117604793>}
  triangle { <80.985, 0.0, -70.548>, <80.7263341580807, 0.0, -71.75927483563825>, <81.98814640987652, 0.0, -72.09963541441944>}
  triangle { <43.451, 0.0, -60.307>, <76.771, 0.0, -63.624>, <55.49576237913884, 0.0, -60.90951117604793>}
  triangle { <80.985, 0.0, -70.548>, <81.98814640987652, 0.0, -72.09963541441944>, <82.80490638413478, 0.0, -64.04587780108324>}
  triangle { <55.49576237913884, 0.0, -60.90951117604793>, <76.771, 0.0, -63.624>, <77.31775565950825, 0.0, -63.22294667699809>}
  triangle { <80.985, 0.0, -70.548>, <82.80490638413478, 0.0, -64.04587780108324>, <79.98042075135818, 0.0, -63.51026988405327>}
  triangle { <77.31775565950825, 0.0, -63.22294667699809>, <76.771, 0.0, -63.624>, <79.98042075135818, 0.0, -63.51026988405327>}
  triangle { <82.6047280379495, 0.0, -63.79842691273935>, <79.98042075135818, 0.0, -63.51026988405327>, <82.80490638413478, 0.0, -64.04587780108324>}
  triangle { <80.985, 0.0, -70.548>, <79.98042075135818, 0.0, -63.51026988405327>, <76.771, 0.0, -63.624>}
  triangle { <83.79980336103797, 0.0, -64.14677381363512>, <82.98304338677971, 0.0, -72.20053142697132>, <84.27030026968465, 0.0, -72.10168026205446>}
  triangle { <89.39644926401834, 0.0, -65.83335442445888>, <83.79980336103797, 0.0, -64.14677381363512>, <84.27030026968465, 0.0, -72.10168026205446>}
  triangle { <89.39644926401834, 0.0, -65.83335442445888>, <84.27030026968465, 0.0, -72.10168026205446>, <88.78883638746714, 0.0, -71.67023911346314>}
  triangle { <84.03680715611345, 0.0, -63.95481411338165>, <83.79980336103797, 0.0, -64.14677381363512>, <89.39644926401834, 0.0, -65.83335442445888>}
  triangle { <84.27030026968465, 0.0, -72.10168026205446>, <87.83881238278515, 0.0, -72.44687936703947>, <88.78883638746714, 0.0, -71.67023911346314>}
  triangle { <84.03680715611345, 0.0, -63.95481411338165>, <89.39644926401834, 0.0, -65.83335442445888>, <89.74642127504232, 0.0, -64.5748942312397>}
  triangle { <91.60666418258094, 0.0, -82.79132367401866>, <91.26098301527608, 0.0, -84.07646725725927>, <96.12012650812078, 0.0, -84.68005882310514>}
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <91.60666418258094, 0.0, -82.79132367401866>, <96.12012650812078, 0.0, -84.68005882310514>}
  triangle { <96.35472221098325, 0.0, -84.49464704969671>, <92.15951346072397, 0.0, -77.76352457845374>, <91.60666418258094, 0.0, -82.79132367401866>}
  triangle { <92.76733782498601, 0.0, -72.08439646479266>, <92.15951346072397, 0.0, -77.76352457845374>, <96.35472221098325, 0.0, -84.49464704969671>}
  triangle { <98.41836672105717, 0.0, -65.73407340000678>, <92.76733782498601, 0.0, -72.08439646479266>, <96.35472221098325, 0.0, -84.49464704969671>}
  triangle { <98.41836672105717, 0.0, -65.73407340000678>, <93.37495070153722, 0.0, -66.2475117757884>, <92.76733782498601, 0.0, -72.08439646479266>}
  triangle { <98.23278382450737, 0.0, -65.50272770218838>, <93.37495070153722, 0.0, -66.2475117757884>, <98.41836672105717, 0.0, -65.73407340000678>}
  triangle { <93.28498227285056, 0.0, -64.96082245343491>, <93.37495070153722, 0.0, -66.2475117757884>, <98.23278382450737, 0.0, -65.50272770218838>}
  triangle { <29.049279264971425, 0.0, -31.26994831959074>, <28.467940404046413, 0.0, -39.453946295846485>, <30.330442550333743, 0.0, -34.206640869001696>}
  triangle { <28.467940404046413, 0.0, -39.453946295846485>, <29.295030708427102, 0.0, -40.391576580216764>, <30.330442550333743, 0.0, -34.206640869001696>}
  triangle { <29.080233587601708, 0.0, -31.264903522217395>, <29.049279264971425, 0.0, -31.26994831959074>, <30.330442550333743, 0.0, -34.206640869001696>}
  triangle { <30.330442550333743, 0.0, -34.206640869001696>, <29.295030708427102, 0.0, -40.391576580216764>, <35.162415339481655, 0.0, -37.11722907020786>}
  triangle { <35.162415339481655, 0.0, -37.11722907020786>, <29.295030708427102, 0.0, -40.391576580216764>, <36.942584390538144, 0.0, -40.80647764444894>}
  triangle { <35.162415339481655, 0.0, -37.11722907020786>, <36.942584390538144, 0.0, -40.80647764444894>, <37.017190541847185, 0.0, -40.69028368818699>}
  triangle { <30.894828619175353, 0.0, 22.76449199565658>, <30.61007680591144, 0.0, 21.32971795658606>, <31.286782140715086, 0.0, 21.410144628346266>}
  triangle { <30.894828619175353, 0.0, 22.76449199565658>, <31.286782140715086, 0.0, 21.410144628346266>, <31.893999462309278, 0.0, 21.90093511003126>}
  triangle { <30.894828619175353, 0.0, 22.76449199565658>, <31.893999462309278, 0.0, 21.90093511003126>, <32.16167509174056, 0.0, 24.249258565662952>}
  triangle { <30.967, 0.0, 24.26899998368323>, <30.894828619175353, 0.0, 22.76449199565658>, <32.16167509174056, 0.0, 24.249258565662952>}
  triangle { <31.976866568459407, 0.0, 24.476691128666715>, <30.967, 0.0, 24.26899998368323>, <32.16167509174056, 0.0, 24.249258565662952>}
  triangle { <30.803817557305972, 0.0, 24.749467953905974>, <30.967, 0.0, 24.26899998368323>, <31.976866568459407, 0.0, 24.476691128666715>}
  triangle { <-84.11439600886169, 0.0, 79.57500169293493>, <-84.36100540574846, 0.0, 77.41090532774143>, <-82.13493112080187, 0.0, 76.94296775407187>}
  triangle { <-82.13493112080187, 0.0, 76.94296775407187>, <-79.26086776986526, 0.0, 80.26861503438226>, <-84.11439600886169, 0.0, 79.57500169293493>}
  triangle { <-84.11439600886169, 0.0, 79.57500169293493>, <-79.26086776986526, 0.0, 80.26861503438226>, <-84.19236679633282, 0.0, 80.8612061653098>}
  triangle { <-81.61045361985884, 0.0, 76.88780078082833>, <-79.26086776986526, 0.0, 80.26861503438226>, <-82.13493112080187, 0.0, 76.94296775407187>}
  triangle { <-79.26086776986526, 0.0, 80.26861503438226>, <-81.61045361985884, 0.0, 76.88780078082833>, <-78.7073662707251, 0.0, 79.59004781049045>}
  triangle { <-81.61045361985884, 0.0, 76.88780078082833>, <-79.02088667567477, 0.0, 75.80916875169162>, <-78.7073662707251, 0.0, 79.59004781049045>}
  triangle { <-77.71078672173691, 0.0, 79.50740882127543>, <-78.02430712668658, 0.0, 75.7265297624766>, <-75.12656677598446, 0.0, 76.20609917823549>}
  triangle { <-77.08626170486751, 0.0, 80.02544970621398>, <-77.71078672173691, 0.0, 79.50740882127543>, <-75.12656677598446, 0.0, 76.20609917823549>}
  triangle { <-77.08626170486751, 0.0, 80.02544970621398>, <-75.12656677598446, 0.0, 76.20609917823549>, <-14.568023814511445, 0.0, 73.5553338371611>}
  triangle { <-75.12656677598446, 0.0, 76.20609917823549>, <36.27728356258072, 0.0, 64.49856056893378>, <-14.568023814511445, 0.0, 73.5553338371611>}
  triangle { <36.27728356258072, 0.0, 64.49856056893378>, <-11.416618615379006, 0.0, 73.20152792215133>, <-14.568023814511445, 0.0, 73.5553338371611>}
  triangle { <-11.416618615379006, 0.0, 73.20152792215133>, <36.27728356258072, 0.0, 64.49856056893378>, <36.41405335278705, 0.0, 67.41095668794806>}
  triangle { <36.41405335278705, 0.0, 67.41095668794806>, <36.27728356258072, 0.0, 64.49856056893378>, <36.59809701757529, 0.0, 67.17651436694916>}
  triangle { <83.12809535910418, 0.0, -60.06655180942114>, <80.06821084337997, 0.0, -62.440620740598035>, <82.71387511384249, 0.0, -62.80440130148781>}
  triangle { <80.06821084337997, 0.0, -62.440620740598035>, <80.08956782725117, 0.0, -62.51624427280173>, <82.71387511384249, 0.0, -62.80440130148781>}
  triangle { <82.71387511384249, 0.0, -62.80440130148781>, <82.94934387612801, 0.0, -62.61369924896554>, <83.12809535910418, 0.0, -60.06655180942114>}
  triangle { <83.12809535910418, 0.0, -60.06655180942114>, <82.94934387612801, 0.0, -62.61369924896554>, <83.20076349114791, 0.0, -60.10676633208946>}
  triangle { <82.6244708160263, 0.0, -75.74225676325473>, <81.92286792310186, 0.0, -82.68392903753032>, <83.88515909907609, 0.0, -76.08309537212554>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <83.88515909907609, 0.0, -76.08309537212554>, <81.92286792310186, 0.0, -82.68392903753032>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <81.92286792310186, 0.0, -82.68392903753032>, <82.12912207140971, 0.0, -82.94252667928268>}
  triangle { <88.18347810940863, 0.0, -77.32632567052903>, <83.88515909907609, 0.0, -76.08309537212554>, <87.6306288312656, 0.0, -82.35412476609395>}
  triangle { <87.6306288312656, 0.0, -82.35412476609395>, <82.12912207140971, 0.0, -82.94252667928268>, <87.70824907746852, 0.0, -83.63525099899408>}
  triangle { <88.18347810940863, 0.0, -77.32632567052903>, <87.45367121217659, 0.0, -76.42829447711055>, <83.88515909907609, 0.0, -76.08309537212554>}
  triangle { <81.15720536983105, 0.0, -90.0>, <87.23981524260944, 0.0, -85.91334690951854>, <81.77504588150101, 0.0, -84.11829502844527>}
  triangle { <82.00590466615017, 0.0, -83.93490638032512>, <81.77504588150101, 0.0, -84.11829502844527>, <87.23981524260944, 0.0, -85.91334690951854>}
  triangle { <87.23981524260944, 0.0, -85.91334690951854>, <81.15720536983105, 0.0, -90.0>, <86.81562519191392, 0.0, -89.78201112562141>}
  triangle { <87.58503167220898, 0.0, -84.62763070003652>, <82.00590466615017, 0.0, -83.93490638032512>, <87.23981524260944, 0.0, -85.91334690951854>}
  triangle { <86.81562519191392, 0.0, -89.78201112562141>, <81.15720536983105, 0.0, -90.0>, <86.79172349044744, 0.0, -90.0>}
  triangle { <95.75461019459928, 0.0, -89.94527336114113>, <91.21598468097454, 0.0, -86.34932465827572>, <90.81569660432186, 0.0, -90.0>}
  triangle { <95.75461019459928, 0.0, -89.94527336114113>, <90.81569660432186, 0.0, -90.0>, <95.7487715264826, 0.0, -90.0>}
  triangle { <91.21598468097454, 0.0, -86.34932465827572>, <95.75461019459928, 0.0, -89.94527336114113>, <96.19719767099687, 0.0, -85.92594754310784>}
  triangle { <95.9968562128738, 0.0, -85.67243195570684>, <91.21598468097454, 0.0, -86.34932465827572>, <96.19719767099687, 0.0, -85.92594754310784>}
  triangle { <91.1377127200291, 0.0, -85.06884038986097>, <91.21598468097454, 0.0, -86.34932465827572>, <95.9968562128738, 0.0, -85.67243195570684>}
  triangle { <-80.2971931385913, 0.0, 83.65960719002173>, <-83.71095988987008, 0.0, 83.11159114378742>, <-84.07306056750848, 0.0, 81.85406366956894>}
  triangle { <-79.14156154104091, 0.0, 81.26147253864141>, <-80.2971931385913, 0.0, 83.65960719002173>, <-84.07306056750848, 0.0, 81.85406366956894>}
  triangle { <-79.94645918077403, 0.0, 88.37722301750352>, <-83.71095988987008, 0.0, 83.11159114378742>, <-80.2971931385913, 0.0, 83.65960719002173>}
  triangle { <-80.2971931385913, 0.0, 83.65960719002173>, <-79.14156154104091, 0.0, 81.26147253864141>, <-79.07684357285058, 0.0, 81.35655085533635>}
  triangle { <-79.94645918077403, 0.0, 88.37722301750352>, <-82.95025117287408, 0.0, 89.77308491785251>, <-83.71095988987008, 0.0, 83.11159114378742>}
  triangle { <-82.92433864510126, 0.0, 90.0>, <-82.95025117287408, 0.0, 89.77308491785251>, <-79.94645918077403, 0.0, 88.37722301750352>}
  triangle { <-82.92433864510126, 0.0, 90.0>, <-79.94645918077403, 0.0, 88.37722301750352>, <-78.37573321320419, 0.0, 90.0>}
  triangle { <-79.94645918077403, 0.0, 88.37722301750352>, <-79.448, 0.0, 88.338>, <-78.37573321320419, 0.0, 90.0>}
  triangle { <-78.37573321320419, 0.0, 90.0>, <-79.448, 0.0, 88.338>, <-78.496, 0.0, 88.95>}
  triangle { <-79.448, 0.0, 88.338>, <-78.94954081922596, 0.0, 88.29877698249646>, <-78.496, 0.0, 88.95>}
  triangle { <-78.496, 0.0, 88.95>, <-78.94954081922596, 0.0, 88.29877698249646>, <-78.379, 0.0, 84.497>}
  triangle { <-78.94954081922596, 0.0, 88.29877698249646>, <-79.31880686140872, 0.0, 83.86639280997828>, <-78.379, 0.0, 84.497>}
  triangle { <-78.379, 0.0, 84.497>, <-79.31880686140872, 0.0, 83.86639280997828>, <-77.013, 0.0, 83.028>}
  triangle { <-79.31880686140872, 0.0, 83.86639280997828>, <-78.19692406245704, 0.0, 81.83167363444592>, <-77.013, 0.0, 83.028>}
  triangle { <-77.013, 0.0, 83.028>, <-78.19692406245704, 0.0, 81.83167363444592>, <-76.98331986266093, 0.0, 81.02013708279173>}
  triangle { <-77.013, 0.0, 83.028>, <-76.98331986266093, 0.0, 81.02013708279173>, <-75.45, 0.0, 81.581>}
  triangle { <-75.45, 0.0, 81.581>, <-76.98331986266093, 0.0, 81.02013708279173>, <-37.484, 0.0, 77.607>}
  triangle { <-37.484, 0.0, 77.607>, <-76.98331986266093, 0.0, 81.02013708279173>, <-14.46508197230487, 0.0, 74.55002121373886>}
  triangle { <-26.993859325695063, 0.0, 86.1516327285023>, <-37.484, 0.0, 77.607>, <-14.46508197230487, 0.0, 74.55002121373886>}
  triangle { <-26.993859325695063, 0.0, 86.1516327285023>, <-14.46508197230487, 0.0, 74.55002121373886>, <-14.444177589754174, 0.0, 74.59644815327266>}
  triangle { <-36.352, 0.0, 89.863>, <-37.484, 0.0, 77.607>, <-26.993859325695063, 0.0, 86.1516327285023>}
  triangle { <-26.993859325695063, 0.0, 86.1516327285023>, <-30.0, 0.0, 90.0>, <-36.352, 0.0, 89.863>}
  triangle { <-30.0, 0.0, 90.0>, <-36.33931591931505, 0.0, 90.0>, <-36.352, 0.0, 89.863>}
  triangle { <-26.993859325695063, 0.0, 86.1516327285023>, <-28.03312803387041, 0.0, 89.86776784763664>, <-30.0, 0.0, 90.0>}
  triangle { <-28.069389801118934, 0.0, 90.0>, <-30.0, 0.0, 90.0>, <-28.03312803387041, 0.0, 89.86776784763664>}
  triangle { <-27.033242819638776, 0.0, 90.0>, <-26.140140674304938, 0.0, 86.6723672714977>, <0.0, 0.0, 90.0>}
  triangle { <-26.140140674304938, 0.0, 86.6723672714977>, <-13.767660758144475, 0.0, 75.33287532316035>, <0.0, 0.0, 90.0>}
  triangle { <-13.767660758144475, 0.0, 75.33287532316035>, <-11.296432192781014, 0.0, 74.19427926252972>, <0.0, 0.0, 90.0>}
  triangle { <0.0, 0.0, 90.0>, <-11.296432192781014, 0.0, 74.19427926252972>, <36.534239775385046, 0.0, 68.40370802832645>}
  triangle { <30.0, 0.0, 90.0>, <0.0, 0.0, 90.0>, <36.534239775385046, 0.0, 68.40370802832645>}
  triangle { <30.0, 0.0, 90.0>, <36.534239775385046, 0.0, 68.40370802832645>, <37.93377647051044, 0.0, 68.25143271536854>}
  triangle { <56.380256627076214, 0.0, 74.52320479981013>, <30.0, 0.0, 90.0>, <37.93377647051044, 0.0, 68.25143271536854>}
  triangle { <48.45249284115866, 0.0, 67.9975162677983>, <56.380256627076214, 0.0, 74.52320479981013>, <37.93377647051044, 0.0, 68.25143271536854>}
  triangle { <56.380256627076214, 0.0, 74.52320479981013>, <60.0, 0.0, 90.0>, <30.0, 0.0, 90.0>}
  triangle { <37.93377647051044, 0.0, 68.25143271536854>, <46.555992470524394, 0.0, 67.41872978374406>, <48.45249284115866, 0.0, 67.9975162677983>}
  triangle { <56.380256627076214, 0.0, 74.52320479981013>, <58.371201058528236, 0.0, 76.1634404883529>, <60.0, 0.0, 90.0>}
  triangle { <60.0, 0.0, 90.0>, <58.371201058528236, 0.0, 76.1634404883529>, <73.37240051246384, 0.0, 88.53272336337183>}
  triangle { <60.0, 0.0, 90.0>, <73.37240051246384, 0.0, 88.53272336337183>, <74.48351974527664, 0.0, 89.4487916493006>}
  triangle { <60.0, 0.0, 90.0>, <74.48351974527664, 0.0, 89.4487916493006>, <75.15217145492134, 0.0, 90.0>}
  triangle { <76.25627012193266, 0.0, 89.61419179118384>, <75.11960787127826, 0.0, 88.67717523166829>, <75.08583791052774, 0.0, 88.35385808620207>}
  triangle { <75.08583791052774, 0.0, 88.35385808620207>, <76.72428066061164, 0.0, 90.0>, <76.25627012193266, 0.0, 89.61419179118384>}
  triangle { <75.08583791052774, 0.0, 88.35385808620207>, <90.0, 0.0, 90.0>, <76.72428066061164, 0.0, 90.0>}
  triangle { <96.8297685176226, 0.0, 66.33540620832821>, <90.0, 0.0, 90.0>, <75.08583791052774, 0.0, 88.35385808620207>}
  triangle { <96.8297685176226, 0.0, 66.33540620832821>, <75.08583791052774, 0.0, 88.35385808620207>, <94.81956046483167, 0.0, 63.61047715637953>}
  triangle { <90.0, 0.0, 90.0>, <96.8297685176226, 0.0, 66.33540620832821>, <99.06353461519875, 0.0, 90.0>}
  triangle { <96.8297685176226, 0.0, 66.33540620832821>, <94.81956046483167, 0.0, 63.61047715637953>, <95.10490312544911, 0.0, 63.6262617554575>}
  triangle { <57.50499344650042, 0.0, 66.38250147398612>, <57.730776601395625, 0.0, 66.10750547691518>, <58.08881943941066, 0.0, 73.63102204548025>}
  triangle { <59.00737874686785, 0.0, 75.39189791087654>, <58.08881943941066, 0.0, 73.63102204548025>, <57.730776601395625, 0.0, 66.10750547691518>}
  triangle { <91.25625548158168, 0.0, 62.20928421839126>, <59.00737874686785, 0.0, 75.39189791087654>, <57.730776601395625, 0.0, 66.10750547691518>}
  triangle { <74.30403006659941, 0.0, 87.7303386437048>, <59.00737874686785, 0.0, 75.39189791087654>, <91.25625548158168, 0.0, 62.20928421839126>}
  triangle { <94.03775262090333, 0.0, 62.98695771388226>, <74.30403006659941, 0.0, 87.7303386437048>, <91.25625548158168, 0.0, 62.20928421839126>}
  triangle { <74.00857820080346, 0.0, 87.76118078589546>, <59.00737874686785, 0.0, 75.39189791087654>, <74.30403006659941, 0.0, 87.7303386437048>}
  triangle { <94.03775262090333, 0.0, 62.98695771388226>, <91.25625548158168, 0.0, 62.20928421839126>, <93.9840635801863, 0.0, 62.833961905517704>}
  triangle { <57.61548817116579, 0.0, 65.11417341871152>, <57.32828070325701, 0.0, 64.89607161590797>, <56.924028926955025, 0.0, 62.33056034292653>}
  triangle { <90.0, 0.0, 60.0>, <57.61548817116579, 0.0, 65.11417341871152>, <56.924028926955025, 0.0, 62.33056034292653>}
  triangle { <90.0, 0.0, 60.0>, <56.924028926955025, 0.0, 62.33056034292653>, <94.11604250905665, 0.0, 58.425277942132794>}
  triangle { <57.61548817116579, 0.0, 65.11417341871152>, <90.0, 0.0, 60.0>, <91.30974451841833, 0.0, 61.21071578160874>}
  triangle { <91.30974451841833, 0.0, 61.21071578160874>, <90.0, 0.0, 60.0>, <94.11604250905665, 0.0, 58.425277942132794>}
  triangle { <91.30974451841833, 0.0, 61.21071578160874>, <94.11604250905665, 0.0, 58.425277942132794>, <94.4312056714321, 0.0, 61.65898126572281>}
  triangle { <94.20480493764668, 0.0, 61.85862952468205>, <91.30974451841833, 0.0, 61.21071578160874>, <94.4312056714321, 0.0, 61.65898126572281>}
  triangle { <37.83764728827357, 0.0, 67.25606384890622>, <37.59099756499581, 0.0, 67.05756688722786>, <37.27191910905649, 0.0, 64.39409579633472>}
  triangle { <46.45986328828753, 0.0, 66.42336091728174>, <37.83764728827357, 0.0, 67.25606384890622>, <37.27191910905649, 0.0, 64.39409579633472>}
  triangle { <55.92816769036476, 0.0, 62.43512901201199>, <46.45986328828753, 0.0, 66.42336091728174>, <37.27191910905649, 0.0, 64.39409579633472>}
  triangle { <48.99309469101316, 0.0, 66.14865450170379>, <46.45986328828753, 0.0, 66.42336091728174>, <55.92816769036476, 0.0, 62.43512901201199>}
  triangle { <56.163491726010875, 0.0, 65.28579742886913>, <48.99309469101316, 0.0, 66.14865450170379>, <55.92816769036476, 0.0, 62.43512901201199>}
  triangle { <56.163491726010875, 0.0, 65.28579742886913>, <55.92816769036476, 0.0, 62.43512901201199>, <56.34046861676846, 0.0, 65.05172277005454>}
  triangle { <57.01578639536242, 0.0, 73.75112843466088>, <49.08802260944486, 0.0, 67.22543990264906>, <56.50822142991099, 0.0, 66.46278563770623>}
  triangle { <56.28296582179841, 0.0, 66.27863474708181>, <56.50822142991099, 0.0, 66.46278563770623>, <49.08802260944486, 0.0, 67.22543990264906>}
  triangle { <57.01578639536242, 0.0, 73.75112843466088>, <56.50822142991099, 0.0, 66.46278563770623>, <57.09204742282123, 0.0, 73.71130620920036>}
  triangle { <49.08802260944486, 0.0, 67.22543990264906>, <49.1125687868007, 0.0, 67.14149181991647>, <56.28296582179841, 0.0, 66.27863474708181>}
  triangle { <95.90627833650751, 0.0, 61.94872557557097>, <95.42648982150105, 0.0, 61.56197889141419>, <95.11060254919458, 0.0, 58.32084590290724>}
  triangle { <99.93933971458253, 0.0, 57.81381279408079>, <95.90627833650751, 0.0, 61.94872557557097>, <95.11060254919458, 0.0, 58.32084590290724>}
  triangle { <102.61578652395954, 0.0, 61.161677476143645>, <95.90627833650751, 0.0, 61.94872557557097>, <99.93933971458253, 0.0, 57.81381279408079>}
  triangle { <102.61578652395954, 0.0, 61.161677476143645>, <99.93933971458253, 0.0, 57.81381279408079>, <102.249688399241, 0.0, 57.810903503889236>}
  triangle { <95.9507140723976, 0.0, 63.09277900782444>, <96.02278291504047, 0.0, 62.94191573016416>, <97.7762314823774, 0.0, 66.0125937916718>}
  triangle { <97.7762314823774, 0.0, 66.0125937916718>, <96.02278291504047, 0.0, 62.94191573016416>, <102.72440139210312, 0.0, 62.15579312056314>}
  triangle { <102.72440139210312, 0.0, 62.15579312056314>, <105.76659761519792, 0.0, 90.0>, <97.7762314823774, 0.0, 66.0125937916718>}
  triangle { <105.76659761519792, 0.0, 90.0>, <100.06351740111778, 0.0, 89.95272766426422>, <97.7762314823774, 0.0, 66.0125937916718>}
  triangle { <105.76659761519792, 0.0, 90.0>, <100.0680068585549, 0.0, 90.0>, <100.06351740111778, 0.0, 89.95272766426422>}
  triangle { <-78.56710830574299, 0.0, 69.22855576695737>, <-78.89838952478594, 0.0, 65.29154001643637>, <-75.97314166932264, 0.0, 68.15046033766058>}
  triangle { <-78.89838952478594, 0.0, 65.29154001643637>, <-78.69013465816408, 0.0, 65.040638109826>, <-75.97314166932264, 0.0, 68.15046033766058>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-78.69013465816408, 0.0, 65.040638109826>, <-70.79480617738143, 0.0, 64.23822599657196>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-70.79480617738143, 0.0, 64.23822599657196>, <-69.3823826795885, 0.0, 64.09518095677576>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-69.3823826795885, 0.0, 64.09518095677576>, <-64.73470791178518, 0.0, 63.6261311421731>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-64.73470791178518, 0.0, 63.6261311421731>, <-61.55087600066903, 0.0, 63.30479171067639>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-61.55087600066903, 0.0, 63.30479171067639>, <-56.80514740737244, 0.0, 62.825778560913534>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-56.80514740737244, 0.0, 62.825778560913534>, <-55.37202956392713, 0.0, 62.68044826188347>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-55.37202956392713, 0.0, 62.68044826188347>, <-38.6339704140218, 0.0, 60.97515201252023>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-38.6339704140218, 0.0, 60.97515201252023>, <-34.63759330702872, 0.0, 60.587409720605244>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <-34.63759330702872, 0.0, 60.587409720605244>, <0.0, 0.0, 60.0>}
  triangle { <0.0, 0.0, 60.0>, <-34.63759330702872, 0.0, 60.587409720605244>, <0.2049295026614316, 0.0, 57.37597195358234>}
  triangle { <-75.97314166932264, 0.0, 68.15046033766058>, <0.0, 0.0, 60.0>, <35.31370731470544, 0.0, 56.455217521745475>}
  triangle { <0.0, 0.0, 60.0>, <0.2049295026614316, 0.0, 57.37597195358234>, <1.6379611634353695, 0.0, 57.24537646710675>}
  triangle { <7.453612994568868, 0.0, 56.70308832083148>, <35.31370731470544, 0.0, 56.455217521745475>, <0.0, 0.0, 60.0>}
  triangle { <0.0, 0.0, 60.0>, <1.6379611634353695, 0.0, 57.24537646710675>, <6.0087701411647325, 0.0, 56.85158954284276>}
  triangle { <0.0, 0.0, 60.0>, <6.0087701411647325, 0.0, 56.85158954284276>, <7.453612994568868, 0.0, 56.70308832083148>}
  triangle { <32.46724579985797, 0.0, 53.8140524903658>, <35.31370731470544, 0.0, 56.455217521745475>, <7.453612994568868, 0.0, 56.70308832083148>}
  triangle { <35.26158163224817, 0.0, 56.02010432079529>, <35.31370731470544, 0.0, 56.455217521745475>, <32.46724579985797, 0.0, 53.8140524903658>}
  triangle { <-56.7352641090847, 0.0, 52.39643329128388>, <-56.619508212113374, 0.0, 52.31038464800648>, <-55.7218665744455, 0.0, 61.48502679546505>}
  triangle { <-56.619508212113374, 0.0, 52.31038464800648>, <-55.47338625140756, 0.0, 61.68559811140703>, <-55.7218665744455, 0.0, 61.48502679546505>}
  triangle { <-56.619508212113374, 0.0, 52.31038464800648>, <-38.72994755173134, 0.0, 59.94492655825568>, <-55.47338625140756, 0.0, 61.68559811140703>}
  triangle { <-38.735327101502236, 0.0, 59.980301862043795>, <-55.47338625140756, 0.0, 61.68559811140703>, <-38.72994755173134, 0.0, 59.94492655825568>}
  triangle { <97.19118961261253, 0.0, -86.03540082082557>, <96.75462835207323, 0.0, -90.0>, <98.30227400962363, 0.0, -90.0>}
  triangle { <97.34872667397727, 0.0, -84.60398655558546>, <97.19118961261253, 0.0, -86.03540082082557>, <98.30227400962363, 0.0, -90.0>}
  triangle { <97.34872667397727, 0.0, -84.60398655558546>, <98.30227400962363, 0.0, -90.0>, <99.41237118405118, 0.0, -65.84341290589553>}
  triangle { <98.30227400962363, 0.0, -90.0>, <99.56768427703359, 0.0, -64.43197161414011>, <99.41237118405118, 0.0, -65.84341290589553>}
  triangle { <98.30227400962363, 0.0, -90.0>, <105.31732648169778, 0.0, -25.224978056094365>, <99.56768427703359, 0.0, -64.43197161414011>}
  triangle { <104.9100453334603, 0.0, -25.088704095000143>, <99.56768427703359, 0.0, -64.43197161414011>, <105.31732648169778, 0.0, -25.224978056094365>}
  triangle { <104.47167896851474, 0.0, -24.854366894342284>, <99.56768427703359, 0.0, -64.43197161414011>, <104.9100453334603, 0.0, -25.088704095000143>}
  triangle { <103.95689425271065, 0.0, -24.558441626677688>, <99.56768427703359, 0.0, -64.43197161414011>, <104.47167896851474, 0.0, -24.854366894342284>}
  triangle { <105.45311556406044, 0.0, -10.984796817291814>, <105.40638132533644, 0.0, -11.408684043240394>, <105.68935264675173, 0.0, -11.274250804150888>}
  triangle { <106.98450133298871, 0.0, -10.239578948665478>, <106.66037839040011, 0.0, -10.498515154197154>, <106.945, 0.0, -10.603000000000003>}
  triangle { <105.6442779182222, 0.0, -22.253904779994812>, <105.89747215723818, 0.0, -19.985978363625716>, <104.33138329029262, 0.0, -21.15909289585982>}
  triangle { <104.33138329029262, 0.0, -21.15909289585982>, <105.89747215723818, 0.0, -19.985978363625716>, <104.58178608512678, 0.0, -18.88789839328372>}
  triangle { <104.58178608512678, 0.0, -18.88789839328372>, <105.89747215723818, 0.0, -19.985978363625716>, <106.15122325274548, 0.0, -17.71306403934973>}
  triangle { <104.58178608512678, 0.0, -18.88789839328372>, <106.15122325274548, 0.0, -17.71306403934973>, <104.83273938880525, 0.0, -16.61171068501415>}
  triangle { <104.83273938880525, 0.0, -16.61171068501415>, <106.15122325274548, 0.0, -17.71306403934973>, <106.40553242898929, 0.0, -15.435150841285193>}
  triangle { <104.83273938880525, 0.0, -16.61171068501415>, <106.40553242898929, 0.0, -15.435150841285193>, <105.07585886372111, 0.0, -14.40657709110284>}
  triangle { <105.07585886372111, 0.0, -14.40657709110284>, <106.40553242898929, 0.0, -15.435150841285193>, <106.5992861445863, 0.0, -13.699648597711743>}
  triangle { <105.07585886372111, 0.0, -14.40657709110284>, <106.5992861445863, 0.0, -13.699648597711743>, <105.31897833863697, 0.0, -12.201443497191528>}
  triangle { <105.31897833863697, 0.0, -12.201443497191528>, <106.5992861445863, 0.0, -13.699648597711743>, <106.7930398601833, 0.0, -11.964146354138293>}
  triangle { <105.31897833863697, 0.0, -12.201443497191528>, <106.7930398601833, 0.0, -11.964146354138293>, <106.13867543811067, 0.0, -11.747482692807885>}
  triangle { <105.31897833863697, 0.0, -12.201443497191528>, <106.13867543811067, 0.0, -11.747482692807885>, <105.40638132533644, 0.0, -11.408684043240394>}
  triangle { <105.40638132533644, 0.0, -11.408684043240394>, <106.13867543811067, 0.0, -11.747482692807885>, <105.68935264675173, 0.0, -11.274250804150888>}
  triangle { <105.68935264675173, 0.0, -11.274250804150888>, <106.13867543811067, 0.0, -11.747482692807885>, <106.17486551857593, 0.0, -10.886382979174021>}
  triangle { <106.17486551857593, 0.0, -10.886382979174021>, <106.13867543811067, 0.0, -11.747482692807885>, <106.67513257011218, 0.0, -10.986045013704464>}
  triangle { <106.17486551857593, 0.0, -10.886382979174021>, <106.67513257011218, 0.0, -10.986045013704464>, <106.66037839040011, 0.0, -10.498515154197154>}
  triangle { <106.66037839040011, 0.0, -10.498515154197154>, <106.67513257011218, 0.0, -10.986045013704464>, <106.945, 0.0, -10.603000000000003>}
  triangle { <106.1675068389736, 0.0, -4.962409115687958>, <106.03267866517912, 0.0, -6.045809196852633>, <107.20072351484603, 0.0, -8.250286772756903>}
  triangle { <107.844, 0.0, -2.332>, <106.1675068389736, 0.0, -4.962409115687958>, <107.20072351484603, 0.0, -8.250286772756903>}
  triangle { <107.844, 0.0, -2.332>, <106.43702483380754, 0.0, -2.5237477171454925>, <106.1675068389736, 0.0, -4.962409115687958>}
  triangle { <106.66343024400328, 0.0, -0.18075323003502233>, <106.43702483380754, 0.0, -2.5237477171454925>, <107.844, 0.0, -2.332>}
  triangle { <106.89447037391268, 0.0, 0.006506447865277709>, <106.66343024400328, 0.0, -0.18075323003502233>, <107.844, 0.0, -2.332>}
  triangle { <106.89447037391268, 0.0, 0.006506447865277709>, <107.844, 0.0, -2.332>, <119.94400041392348, 0.0, -1.464283885179165>}
  triangle { <119.94400041392348, 0.0, -1.464283885179165>, <107.844, 0.0, -2.332>, <120.0, 0.0, -3.6459118319364325>}
  triangle { <120.0, 0.0, -1.4705955032683462>, <119.94400041392348, 0.0, -1.464283885179165>, <120.0, 0.0, -3.6459118319364325>}
  triangle { <93.74302511519976, 0.0, -62.70591505759037>, <93.39385566935897, 0.0, -63.96676682947179>, <98.34165722101578, 0.0, -64.50867207822525>}
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <93.74302511519976, 0.0, -62.70591505759037>, <98.34165722101578, 0.0, -64.50867207822525>}
  triangle { <98.57368838186663, 0.0, -64.32255424627172>, <102.9628983575437, 0.0, -24.449024258809313>, <93.74302511519976, 0.0, -62.70591505759037>}
  triangle { <99.24064230028677, 0.0, -9.721463732432856>, <93.74302511519976, 0.0, -62.70591505759037>, <102.9628983575437, 0.0, -24.449024258809313>}
  triangle { <99.24064230028677, 0.0, -9.721463732432856>, <102.9628983575437, 0.0, -24.449024258809313>, <103.33740614392502, 0.0, -21.049505339545547>}
  triangle { <99.24064230028677, 0.0, -9.721463732432856>, <103.33740614392502, 0.0, -21.049505339545547>, <104.45913841769284, 0.0, -10.87520926097754>}
  triangle { <99.34712734388744, 0.0, -8.695191545853262>, <99.24064230028677, 0.0, -9.721463732432856>, <104.45913841769284, 0.0, -10.87520926097754>}
  triangle { <99.34712734388744, 0.0, -8.695191545853262>, <104.45913841769284, 0.0, -10.87520926097754>, <105.04033365139865, 0.0, -5.922312744980268>}
  triangle { <99.34712734388744, 0.0, -8.695191545853262>, <105.04033365139865, 0.0, -5.922312744980268>, <105.09404087737698, 0.0, -4.7893068039693185>}
  triangle { <105.09404087737698, 0.0, -4.7893068039693185>, <105.04033365139865, 0.0, -5.922312744980268>, <105.17516182519313, 0.0, -4.838912663815593>}
  triangle { <104.87432925214284, 0.0, 44.574388821925965>, <99.48210072609315, 0.0, -7.394356955356423>, <105.88173456327071, 0.0, 2.061221503563473>}
  triangle { <105.80992274721126, 0.0, 1.3506220098505428>, <105.88173456327071, 0.0, 2.061221503563473>, <99.48210072609315, 0.0, -7.394356955356423>}
  triangle { <110.44093571442818, 0.0, 43.89441021449429>, <104.87432925214284, 0.0, 44.574388821925965>, <105.88173456327071, 0.0, 2.061221503563473>}
  triangle { <105.66806655531727, 0.0, -0.08457044963555568>, <105.80992274721126, 0.0, 1.3506220098505428>, <99.48210072609315, 0.0, -7.394356955356423>}
  triangle { <110.25637142433875, 0.0, 44.118547826768946>, <104.87432925214284, 0.0, 44.574388821925965>, <110.44093571442818, 0.0, 43.89441021449429>}
  triangle { <105.66806655531727, 0.0, -0.08457044963555568>, <99.48210072609315, 0.0, -7.394356955356423>, <104.53192931102001, 0.0, -3.9622453872850913>}
  triangle { <105.66806655531727, 0.0, -0.08457044963555568>, <104.53192931102001, 0.0, -3.9622453872850913>, <105.44166114512153, 0.0, -2.427564936746026>}
  triangle { <106.8762654367293, 0.0, 1.956778496436527>, <106.80485570427291, 0.0, 1.2500814162948342>, <107.00646954606573, 0.0, 1.0002147478391836>}
  triangle { <106.8762654367293, 0.0, 1.956778496436527>, <107.00646954606573, 0.0, 1.0002147478391836>, <120.0, 0.0, 0.0>}
  triangle { <120.0, 0.0, 0.0>, <107.00646954606573, 0.0, 1.0002147478391836>, <120.0, 0.0, -0.4642639671160782>}
  triangle { <120.0, 0.0, 30.0>, <106.8762654367293, 0.0, 1.956778496436527>, <120.0, 0.0, 0.0>}
  triangle { <111.43504919795336, 0.0, 43.78606640122647>, <106.8762654367293, 0.0, 1.956778496436527>, <120.0, 0.0, 30.0>}
  triangle { <120.0, 0.0, 50.00824819098759>, <111.43504919795336, 0.0, 43.78606640122647>, <120.0, 0.0, 30.0>}
  triangle { <120.0, 0.0, 50.00824819098759>, <119.83541519823935, 0.0, 50.027731981050415>, <111.43504919795336, 0.0, 43.78606640122647>}
  triangle { <111.43504919795336, 0.0, 43.78606640122647>, <119.83541519823935, 0.0, 50.027731981050415>, <111.57970923130263, 0.0, 45.2272912031078>}
  triangle { <112.10426629724326, 0.0, 50.942956719422696>, <111.57970923130263, 0.0, 45.2272912031078>, <119.83541519823935, 0.0, 50.027731981050415>}
  triangle { <105.32060280686284, 0.0, 48.87544483250243>, <104.97755267998042, 0.0, 45.56922649500224>, <110.34076592212647, 0.0, 45.114980247329>}
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <105.32060280686284, 0.0, 48.87544483250243>, <110.34076592212647, 0.0, 45.114980247329>}
  triangle { <110.58389416862308, 0.0, 45.31868245509895>, <107.85873635690892, 0.0, 51.445548776392855>, <105.32060280686284, 0.0, 48.87544483250243>}
  triangle { <107.85873635690892, 0.0, 51.445548776392855>, <110.58389416862308, 0.0, 45.31868245509895>, <111.11085666914447, 0.0, 51.060558007228195>}
  triangle { <106.58867248901998, 0.0, 60.695644458419615>, <106.22602551738731, 0.0, 57.37645773874482>, <111.33917046642443, 0.0, 60.13839491046588>}
  triangle { <111.33917046642443, 0.0, 60.13839491046588>, <106.22602551738731, 0.0, 57.37645773874482>, <111.88247600621648, 0.0, 59.4682572319363>}
  triangle { <106.22602551738731, 0.0, 57.37645773874482>, <108.18790596043023, 0.0, 54.226132726768896>, <111.88247600621648, 0.0, 59.4682572319363>}
  triangle { <108.18790596043023, 0.0, 54.226132726768896>, <111.36684079108845, 0.0, 53.84980576218064>, <111.88247600621648, 0.0, 59.4682572319363>}
  triangle { <109.76666802320925, 0.0, 89.7827771174278>, <106.69728735716356, 0.0, 61.68976010283911>, <111.38800807874165, 0.0, 62.89226575164126>}
  triangle { <111.38800807874165, 0.0, 62.89226575164126>, <106.69728735716356, 0.0, 61.68976010283911>, <111.45567504495739, 0.0, 61.13158506505907>}
  triangle { <114.47472817428499, 0.0, 90.0>, <109.76666802320925, 0.0, 89.7827771174278>, <111.38800807874165, 0.0, 62.89226575164126>}
  triangle { <111.38800807874165, 0.0, 62.89226575164126>, <111.45567504495739, 0.0, 61.13158506505907>, <111.73458779645384, 0.0, 61.447393737307344>}
  triangle { <114.47472817428499, 0.0, 90.0>, <109.79040131229492, 0.0, 90.0>, <109.76666802320925, 0.0, 89.7827771174278>}
  triangle { <120.0, 0.0, 90.0>, <115.47473268321465, 0.0, 89.94328902005928>, <112.38599192125835, 0.0, 62.95573424835874>}
  triangle { <120.0, 0.0, 60.0>, <120.0, 0.0, 90.0>, <112.38599192125835, 0.0, 62.95573424835874>}
  triangle { <120.0, 0.0, 90.0>, <115.48120673133242, 0.0, 90.0>, <115.47473268321465, 0.0, 89.94328902005928>}
  triangle { <120.0, 0.0, 60.0>, <112.38599192125835, 0.0, 62.95573424835874>, <112.70576177888375, 0.0, 61.68576549706767>}
  triangle { <120.0, 0.0, 60.0>, <112.70576177888375, 0.0, 61.68576549706767>, <113.63402129392108, 0.0, 60.18190982832268>}
  triangle { <120.0, 0.0, 60.0>, <113.63402129392108, 0.0, 60.18190982832268>, <114.375767008794, 0.0, 59.52065502743934>}
  triangle { <114.375767008794, 0.0, 59.52065502743934>, <120.0, 0.0, 58.95897755633977>, <120.0, 0.0, 60.0>}
  triangle { <112.87829106889603, 0.0, 59.376865979945144>, <112.36025041918724, 0.0, 53.73220447437514>, <113.982232991206, 0.0, 58.60134497256066>}
  triangle { <120.0, 0.0, 52.82779972148928>, <113.982232991206, 0.0, 58.60134497256066>, <112.36025041918724, 0.0, 53.73220447437514>}
  triangle { <112.98563177957467, 0.0, 59.42060106199613>, <112.87829106889603, 0.0, 59.376865979945144>, <113.982232991206, 0.0, 58.60134497256066>}
  triangle { <119.94835318909868, 0.0, 57.95916881666741>, <113.982232991206, 0.0, 58.60134497256066>, <120.0, 0.0, 52.82779972148928>}
  triangle { <120.0, 0.0, 57.953862691230874>, <119.94835318909868, 0.0, 57.95916881666741>, <120.0, 0.0, 52.82779972148928>}
  triangle { <36.30834164244396, 0.0, 56.350742575876>, <36.25448217966869, 0.0, 55.901156841074005>, <38.44494754284878, 0.0, 53.167944013129016>}
  triangle { <54.665708620738094, 0.0, 54.42315933204365>, <36.30834164244396, 0.0, 56.350742575876>, <38.44494754284878, 0.0, 53.167944013129016>}
  triangle { <53.354830890825546, 0.0, 51.666725380993086>, <54.665708620738094, 0.0, 54.42315933204365>, <38.44494754284878, 0.0, 53.167944013129016>}
  triangle { <54.665708620738094, 0.0, 54.42315933204365>, <53.354830890825546, 0.0, 51.666725380993086>, <54.35266649865015, 0.0, 52.436493743381625>}
  triangle { <-86.898793507154, 0.0, 18.678558580022415>, <-89.31117802039459, 0.0, -2.8368484669123224>, <-81.99626076975177, 0.0, 8.72717873777178>}
  triangle { <-81.99626076975177, 0.0, 8.72717873777178>, <-89.31117802039459, 0.0, -2.8368484669123224>, <-89.28438291261489, 0.0, -2.8461632490692286>}
  triangle { <-86.85934153241085, 0.0, 18.685270700665875>, <-86.898793507154, 0.0, 18.678558580022415>, <-81.99626076975177, 0.0, 8.72717873777178>}
 uv_mapping  texture { texture_TERRAIN_DEFAULT }}
