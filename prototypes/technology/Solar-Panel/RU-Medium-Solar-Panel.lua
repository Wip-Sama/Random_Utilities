--if settings.startup["RU-Solar-Panel"].value == true then

--technologies

data:extend(
{
  {
    type = "technology",
    name = "RU-Advanced-Solar-Energy-b",
    hidden = "true",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Medium-Solar-Panel"
      }
    },
    prerequisites = {"RU-Advanced-Solar-Energy-a"},
    unit =
    {
      count = 550,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 32
    },
    order = "a-h-c"
  },
}
)

--end
