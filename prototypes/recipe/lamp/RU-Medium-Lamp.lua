--if settings.startup["RU-Lamp"].value == true then

--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Medium-Lamp",
    hidden = "true",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 4},
      {"RU-Basic-Lamp", 1},
      {"steel-plate", 4},
    },
    result = "RU-Medium-Lamp"
  },
})

--end
