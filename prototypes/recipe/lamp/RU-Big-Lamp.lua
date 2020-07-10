--if settings.startup["RU-Lamp"].value == true then

--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Big-Lamp",
    hidden = "false" ,
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 4},
      {"RU-Medium-Lamp", 1},
      {"steel-plate", 4},
    },
    result = "RU-Big-Lamp"
  },
})

--end
