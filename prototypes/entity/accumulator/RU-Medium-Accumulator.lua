--if settings.startup["RU-Accumulator"].value == true then

local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

--Entity

data:extend(
{
  {
    type = "accumulator",
    name = "RU-Medium-Accumulator",
    icons = {{icon = "__base__/graphics/icons/accumulator.png", tint = {r=202, g=154, b=152}}},
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "RU-Medium-Accumulator"},
    max_health = 450,
    corpse = "accumulator-remnants",
    fast_replaceable_group = "accumulator",
    next_upgrade = "RU-Big-Accumulator",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "320MJ",
      usage_priority = "tertiary",
      input_flow_limit = "19.2MW",
      output_flow_limit = "19.2MW"
    },
    picture = medium_accumulator_picture({r=202, g=154, b=152} , 24),
    charge_animation = medium_accumulator_charge(),
    water_reflection = medium_accumulator_reflection(),

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = medium_accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.4
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.35
      },
      --persistent = true,
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  }
}
)

--end
