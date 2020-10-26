--if settings.startup["RU-Lamp"].value == true then

-- Item
data:extend({
  {
    type = "item",
    name = "RU-Medium-Lamp",
    icons = {{icon = "__base__/graphics/icons/small-lamp.png", tint = {r=202, g=154, b=152}}},
    -- flags = {"goes-to-quickbar"},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "RU-Lamp",
    order = "b",
    place_result = "RU-Medium-Lamp",
    stack_size = 50
  },
})

--end
