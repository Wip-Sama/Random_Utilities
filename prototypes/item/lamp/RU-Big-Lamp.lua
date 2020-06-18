--if settings.startup["RU-Lamp"].value == true then

-- Item
data:extend({
  {
    type = "item",
    name = "RU-Big-Lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    -- flags = {"goes-to-quickbar"},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "circuit-network",
    order = "a[light]-a[basic_lamp]",
    place_result = "RU-Big-Lamp",
    stack_size = 50
  },
})

--end
