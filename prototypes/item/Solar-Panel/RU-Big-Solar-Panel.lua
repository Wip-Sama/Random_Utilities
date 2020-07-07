--if settings.startup["RU-Solar-Panel"].value == true then

--item
data:extend({
  {
    type = "item",
    name = "RU-Big-Solar-Panel",
    icons = {{icon = "__base__/graphics/icons/solar-panel.png", tint = {r=132, g=180, b=181}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel4]-a[solar-panel4]",
    place_result = "RU-Big-Solar-Panel",
    stack_size = 50
  },
})

--end
