--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Basic-Substation",
  icons = {{icon = "__base__/graphics/icons/substation.png", tint = {r=178, g=173, b=100}}},
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "a[energy]-d[substation2]",
  place_result = "RU-Basic-Substation",
  stack_size = 50
},
})

--end
