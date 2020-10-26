--if settings.startup["RU-Solar-Panel"].value == true then

--item
data:extend({
  {
    type = "item",
    name = "RU-Basic-Solar-Panel",
    icons = {{icon = "__base__/graphics/icons/solar-panel.png", tint = {r=178, g=173, b=100}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "RU-Solar-Panel",
    order = "a",
    place_result = "RU-Basic-Solar-Panel",
    stack_size = 50
  },
})

--end
