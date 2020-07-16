--if settings.startup["RU-Accumulator"].value == true then

--technologies

data:extend(
{
  {
    type = "technology",
    name = "RU-Advanced-Electric-Energy-Accumulators-d",
    hidden = "false" ,
--    hidden = is_Behemoth_accumulator_hidden ,
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Behemoth-Accumulator"
      }
    },
    prerequisites = {"RU-Advanced-Electric-Energy-Accumulators-c"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 34
    },
    order = "a-h-c"
  },
}
)

--end