--if settings.startup["RU-Lamp"].value == true then

-- Item
data:extend({
  {
    type = "item",
    name = "RU-Basic-Lamp",
    icons = {{icon = "__base__/graphics/icons/small-lamp.png", tint = {r=178, g=173, b=100}}},
    -- flags = {"goes-to-quickbar"},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "circuit-network",
    order = "a[light]-a[basic_lamp2]",
    place_result = "RU-Basic-Lamp",
    stack_size = 50
  },
})

--end
