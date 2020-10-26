--if settings.startup["RU-Solar-Panel"].value == true then

--item
data:extend({
  {
    type = "item",
    name = "RU-Medium-Solar-Panel",
    icons = {{icon = "__base__/graphics/icons/solar-panel.png", tint = {r=202, g=154, b=152}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "RU-Solar-Panel",
    order = "b",
    place_result = "RU-Medium-Solar-Panel",
    stack_size = 50
  },
})

--end
