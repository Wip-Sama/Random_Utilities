--if settings.startup["ru-lamp"].value == true then

--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "ru-big-lamp",
    hidden = "true",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 4},
      {"ru-medium-lamp", 1},
      {"steel-plate", 4},
    },
    result = "ru-big-lamp"
  },
})

--end
