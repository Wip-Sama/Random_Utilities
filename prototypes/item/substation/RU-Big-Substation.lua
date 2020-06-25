--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Big-Substation",
  icon = "__base__/graphics/icons/substation.png",
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "a[energy]-d[substation]",
  place_result = "RU-Big-Substation",
  stack_size = 50
},
})

--end
