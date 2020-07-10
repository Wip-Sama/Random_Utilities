--if settings.startup["RU-Solar-Panel"].value == true then

--item
data:extend({
  {
    type = "item",
    name = "RU-Behemoth-Solar-Panel",
    icons = {{icon = "__base__/graphics/icons/solar-panel.png", tint = {r=80, g=80, b=80}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel5]-a[solar-panel5]",
    place_result = "RU-Behemoth-Solar-Panel",
    stack_size = 50
  },
})

--end
