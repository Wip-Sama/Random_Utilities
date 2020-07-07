--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Big-Substation",
  icons = {{icon = "__base__/graphics/icons/substation.png", tint = {r=132, g=180, b=181}}},
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "a[energy]-d[substation4]",
  place_result = "RU-Big-Substation",
  stack_size = 50
},
})

--end
