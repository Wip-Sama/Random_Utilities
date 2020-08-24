data:extend({
    {
      type = "technology",
      name = "RU-Basic-Boiler",
      hidden = "true",
      icon_size = 64,
      icons = {{icon = "__base__/graphics/icons/boiler.png", tint = {r=178, g=173, b=100}}},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "RU-Basic-Boiler"
        }
      },
      prerequisites = {"steel-processing"},
      unit =
      {
        count = 500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 31
      },
      order = "a-h-a"
    },
  })