--if settings.startup["RU-Accumulator"].value == true then

--technologies

data:extend(
{
  {
    type = "technology",
    name = "RU-Advanced-Electric-Energy-Accumulators-a",
    hidden = "false" ,
--    hidden = is_Basic_accumulator_hidden ,
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Basic-Accumulator"
      }
    },
    prerequisites = {"electric-energy-accumulators"},
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