--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Behemut-Substation",
  icons = {{icon = "__base__/graphics/icons/substation.png", tint = {r=80, g=80, b=80}}},
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "a[energy]-d[substation5]",
  place_result = "RU-Behemut-Substation",
  stack_size = 50
},
})

--end
