data:extend({
    {
      type = "technology",
      name = "RU-Medium-Boiler",
      hidden = "true",
      icon_size = 64,
      icons = {{icon = "__base__/graphics/icons/boiler.png", tint = {r=202, g=154, b=152}}},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "RU-Medium-Boiler"
        }
      },
      prerequisites = {"RU-Basic-Boiler"},
      unit =
      {
        count = 700,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
        },
        time = 31
      },
      order = "a-h-a"
    },
  })