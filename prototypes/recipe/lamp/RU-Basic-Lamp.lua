--if settings.startup["RU-Lamp"].value == true then

--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Basic-Lamp",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"small-lamp", 1},
      {"iron-plate", 5},
      {"steel-plate", 2},
    },
    result = "RU-Basic-Lamp"
  },
})

--end
