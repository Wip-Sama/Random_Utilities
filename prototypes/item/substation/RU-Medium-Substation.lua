--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Medium-Substation",
  icons = {{icon = "__base__/graphics/icons/substation.png", tint = {r=202, g=154, b=152}}},
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "RU-Substation",
  order = "b",
  place_result = "RU-Medium-Substation",
  stack_size = 50
},
})

--end
