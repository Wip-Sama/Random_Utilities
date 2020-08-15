--if settings.startup["RU-Substation"].value == true then

--recipes
data:extend({
{
  type = "recipe",
  name = "RU-Behemoth-Substation",
  hidden = "true" ,
  enabled = "false",
  ingredients =
  {
    {"big-electric-pole", 4},
    {"medium-electric-pole", 10},
    {"RU-Big-Substation", 2}
  },
  result = "RU-Behemoth-Substation",
},
})

--end
