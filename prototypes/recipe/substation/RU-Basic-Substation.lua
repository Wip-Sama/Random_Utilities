--if settings.startup["RU-Substation"].value == true then

--recipes
data:extend({
{
  type = "recipe",
  name = "RU-Basic-Substation",
  hidden = "false" ,
  enabled = "false",
  ingredients =
  {
    {"big-electric-pole", 1},
    {"medium-electric-pole", 2}
  },
  result = "RU-Basic-Substation",
},
})

--end
