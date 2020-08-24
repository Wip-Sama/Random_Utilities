data:extend({
    {
      type = "technology",
      name = "RU-Basic-Steam-Engine",
      hidden = "true",
      icon_size = 64,
      icons = {{icon = "__base__/graphics/icons/steam-engine.png", tint = {r=178, g=173, b=100}}},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "RU-Basic-Steam-Engine"
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