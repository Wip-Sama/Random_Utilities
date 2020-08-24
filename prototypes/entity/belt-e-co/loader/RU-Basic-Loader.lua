require("prototypes.entity.belt-e-co.belt.graphic.RU-Basic-Transport-Belt")
local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

data:extend({  
  {
    type = "loader",
    name = "loader",
    icon = "__base__/graphics/icons/loader.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "loader"},
    max_health = 170,
    filter_count = 5,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = sounds.loader,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    animation_speed_coefficient = 32,
    belt_animation_set = ru_basic_transport_belt_animation_set,
    fast_replaceable_group = "loader",
    speed = 0.03125,
    structure_render_layer = "lower-object",
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/loader/loader-structure.png",
          priority = "extra-high",
          width = 64,
          height = 64
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/loader/loader-structure.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          y = 64
        }
      }
    }
  },
})