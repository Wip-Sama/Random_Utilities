data:extend({
    {
      type = "technology",
      name = "RU-Big-Boiler",
      hidden = "true",
      icon_size = 64,
      icons = {{icon = "__base__/graphics/icons/boiler.png", tint = {r=132, g=180, b=181}}},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "RU-Big-Boiler"
        }
      },
      prerequisites = {"RU-Medium-Boiler"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-scienza-pack", 1},
          {"production-science-pack", 1},
        },
        time = 33
      },
      order = "a-h-a"
    },
  })