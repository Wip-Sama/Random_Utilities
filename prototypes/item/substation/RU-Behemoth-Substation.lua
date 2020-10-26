--if settings.startup["RU-Substation"].value == true then

--item
data:extend({
{
  type = "item",
  name = "RU-Behemoth-Substation",
  icons = {{icon = "__base__/graphics/icons/substation.png", tint = {r=80, g=80, b=80}}},
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "RU-Substation",
  order = "d",
  place_result = "RU-Behemoth-Substation",
  stack_size = 50
},
})

--end
