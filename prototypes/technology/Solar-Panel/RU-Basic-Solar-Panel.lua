--if settings.startup["RU-Solar-Panel"].value == true then

--technologies

data:extend(
{
  {
    type = "technology",
    name = "RU-Advanced-Solar-Energy-a",
    hidden = "true",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Basic-Solar-Panel"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 31
    },
    order = "a-h-c"
  },
}
)

--end
