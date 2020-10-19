require ("__base__/prototypes/entity/demo-pipecovers")
local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

data:extend({
    {
        type = "boiler",
        name = "RU-Big-Boiler",
        icons = {{icon = "__base__/graphics/icons/boiler.png", tint = {r=132, g=180, b=181}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = "RU-Big-Boiler"},
        max_health = 200,
        corpse = "boiler-remnants",
        dying_explosion = "boiler-explosion",
        vehicle_impact_sound = sounds.generic_impact,
        mode = "output-to-separate-pipe",
        fast_replaceable_group = "boiler",
        next_upgrade = "RU-Behemoth-Boiler",
        resistances =
        {
          {
            type = "fire",
            percent = 90
          },
          {
            type = "explosion",
            percent = 30
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        target_temperature = 165,
        fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {type = "input-output", position = {-2, 0.5}},
            {type = "input-output", position = {2, 0.5}}
          },
          production_type = "input-output",
          filter = "water"
        },
        output_fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = 1,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {type = "output", position = {0, -1.5}}
          },
          production_type = "output",
          filter = "steam"
        },
        energy_consumption = "3.6MW",
        energy_source =
        {
          type = "burner",
          fuel_category = "chemical",
          effectivity = 1.45,
          fuel_inventory_size = 1,
          emissions_per_minute = 30,
          smoke =
          {
            {
              name = "smoke",
              north_position = util.by_pixel(-38, -47.5),
              south_position = util.by_pixel(38.5, -32),
              east_position = util.by_pixel(20, -70),
              west_position = util.by_pixel(-19, -8.5),
              frequency = 15,
              starting_vertical_speed = 0.0,
              starting_frame_deviation = 60
            }
          }
        },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/boiler.ogg",
            volume = 0.7
          },
          --max_sounds_per_type = 3,
          audible_distance_modifier = 0.3,
          fade_in_ticks = 4,
          fade_out_ticks = 20,
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
    
        structure =
        {
          north =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
                tint = {r=132, g=180, b=181},
            priority = "extra-high",
                width = 131,
                height = 108,
                shift = util.by_pixel(-0.5, 4),
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",
                  tint = {r=132, g=180, b=181},
            priority = "extra-high",
                  width = 269,
                  height = 221,
                  shift = util.by_pixel(-1.25, 5.25),
                  scale = 0.5
                }
              },
              {
                filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
                width = 137,
                height = 82,
                shift = util.by_pixel(20.5, 9),
                draw_as_shadow = true,
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
            priority = "extra-high",
                  width = 274,
                  height = 164,
                  scale = 0.5,
                  shift = util.by_pixel(20.5, 9),
                  draw_as_shadow = true
                }
              }
            }
          },
          east =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
                tint = {r=132, g=180, b=181},
            priority = "extra-high",
                width = 105,
                height = 147,
                shift = util.by_pixel(-3.5, -0.5),
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",
                  tint = {r=132, g=180, b=181},
            priority = "extra-high",
                  width = 216,
                  height = 301,
                  shift = util.by_pixel(-3, 1.25),
                  scale = 0.5
                }
              },
              {
                filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
                priority = "extra-high",
                width = 92,
                height = 97,
                shift = util.by_pixel(30, 9.5),
                draw_as_shadow = true,
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
            priority = "extra-high",
                  width = 184,
                  height = 194,
                  scale = 0.5,
                  shift = util.by_pixel(30, 9.5),
                  draw_as_shadow = true
                }
              }
            }
          },
          south =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
                tint = {r=132, g=180, b=181},
            priority = "extra-high",
                width = 128,
                height = 95,
                shift = util.by_pixel(3, 12.5),
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",
                  tint = {r=132, g=180, b=181},
            priority = "extra-high",
                  width = 260,
                  height = 192,
                  shift = util.by_pixel(4, 13),
                  scale = 0.5
                }
              },
              {
                filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
                width = 156,
                height = 66,
                shift = util.by_pixel(30, 16),
                draw_as_shadow = true,
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
            priority = "extra-high",
                  width = 311,
                  height = 131,
                  scale = 0.5,
                  shift = util.by_pixel(29.75, 15.75),
                  draw_as_shadow = true
                }
              }
            }
          },
          west =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
                tint = {r=132, g=180, b=181},
            priority = "extra-high",
                width = 96,
                height = 132,
                shift = util.by_pixel(1, 5),
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",
                  tint = {r=132, g=180, b=181},
            priority = "extra-high",
                  width = 196,
                  height = 273,
                  shift = util.by_pixel(1.5, 7.75),
                  scale = 0.5
                }
              },
              {
                filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
                width = 103,
                height = 109,
                shift = util.by_pixel(19.5, 6.5),
                draw_as_shadow = true,
                hr_version =
                {
                  filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
            priority = "extra-high",
                  width = 206,
                  height = 218,
                  scale = 0.5,
                  shift = util.by_pixel(19.5, 6.5),
                  draw_as_shadow = true
                }
              }
            }
          }
        },
    
        patch =
        {
          east =
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            width = 3,
            height = 17,
            shift = util.by_pixel(33.5, -13.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",
              width = 6,
              height = 36,
              shift = util.by_pixel(33.5, -13.5),
              scale = 0.5
            }
          }
        },
    
        fire_flicker_enabled = true,
        fire =
        {
          north =
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 64,
            line_length = 8,
            width = 12,
            height = 13,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -8.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 64,
              line_length = 8,
              width = 26,
              height = 26,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -8.5),
              scale = 0.5
            }
          },
          east =
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 64,
            line_length = 8,
            width = 14,
            height = 14,
            animation_speed = 0.5,
            shift = util.by_pixel(-10, -22),
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 64,
              line_length = 8,
              width = 28,
              height = 28,
              animation_speed = 0.5,
              shift = util.by_pixel(-9.5, -22),
              scale = 0.5
            }
          },
          south =
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 64,
            line_length = 8,
            width = 12,
            height = 9,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -26.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 64,
              line_length = 8,
              width = 26,
              height = 16,
              animation_speed = 0.5,
              shift = util.by_pixel(-1, -26.5),
              scale = 0.5
            }
          },
          west =
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 64,
            line_length = 8,
            width = 14,
            height = 14,
            animation_speed = 0.5,
            shift = util.by_pixel(13, -23),
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 64,
              line_length = 8,
              width = 30,
              height = 29,
              animation_speed = 0.5,
              shift = util.by_pixel(13, -23.25),
              scale = 0.5
            }
          }
        },
    
        fire_glow_flicker_enabled = true,
    
        fire_glow =
        {
          north =
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 1,
            width = 100,
            height = 87,
            shift = util.by_pixel(-1, -6.5),
            blend_mode = "additive",
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 1,
              width = 200,
              height = 173,
              shift = util.by_pixel(-1, -6.75),
              blend_mode = "additive",
              scale = 0.5
            }
          },
          east =
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 1,
            width = 70,
            height = 122,
            shift = util.by_pixel(0, -13),
            blend_mode = "additive",
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 1,
              width = 139,
              height = 244,
              shift = util.by_pixel(0.25, -13),
              blend_mode = "additive",
              scale = 0.5
            }
          },
          south =
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 1,
            width = 100,
            height = 81,
            shift = util.by_pixel(1, 5.5),
            blend_mode = "additive",
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 1,
              width = 200,
              height = 162,
              shift = util.by_pixel(1, 5.5),
              blend_mode = "additive",
              scale = 0.5
            }
          },
          west =
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
            tint = {r=132, g=180, b=181},
            priority = "extra-high",
            frame_count = 1,
            width = 68,
            height = 109,
            shift = util.by_pixel(2, -6.5),
            blend_mode = "additive",
            hr_version =
            {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
              tint = {r=132, g=180, b=181},
            priority = "extra-high",
              frame_count = 1,
              width = 136,
              height = 217,
              shift = util.by_pixel(2, -6.25),
              blend_mode = "additive",
              scale = 0.5
            }
          }
        },
        burning_cooldown = 20,
        water_reflection = boiler_reflection()
      },
})