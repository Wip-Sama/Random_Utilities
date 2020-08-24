require("prototypes.entity.belt-e-co.belt.graphic.RU-Basic-Transport-Belt")
local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

data:extend({  
  {
    type = "loader-1x1",
    name = "loader-1x1",
    icon = "__base__/graphics/icons/loader.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "other",
    max_health = 170,
    filter_count = 5,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = ru_basic_transport_belt_animation_set,
    container_distance = 1,
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