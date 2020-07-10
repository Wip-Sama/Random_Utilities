--if settings.startup["RU-Accumulator"].value == true then

--technologies

data:extend(
{
  {
    type = "technology",
    name = "RU-Advanced-Electric-Energy-Accumulators-c",
    hidden = "false" ,
--    hidden = is_Big_accumulator_hidden ,
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Big-Accumulator"
      }
    },
    prerequisites = {"RU-Advanced-Electric-Energy-Accumulators-b"},
    unit =
    {
      count = 700,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 2}
      },
      time = 33
    },
    order = "a-h-c"
  },
}
)

--end
