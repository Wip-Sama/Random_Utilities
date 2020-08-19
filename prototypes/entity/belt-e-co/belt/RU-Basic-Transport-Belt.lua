--require("__base__/prototypes/entity/demo-transport-belt-pictures")
require("prototypes.entity.belt-e-co.belt.graphic.RU-Basic-Transport-Belt")
local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds = require("__base__/prototypes/entity/demo-sounds")

data:extend({
    {
    type = "transport-belt",
    name = "RU-Basic-Transport-Belt",
    icons = {{icon = "__base__/graphics/icons/transport-belt.png", tint = {r=178, g=173, b=100}}},
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "RU-Basic-Transport-Belt"},
    max_health = 300,
    corpses = {{corpse = "transport-belt-remnants", tint = {r=178, g=173, b=100}}},
    dying_explosion = "transport-belt-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.3
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    belt_animation_set = ru_basic_transport_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 15 / 480,
    --0.1875,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
})