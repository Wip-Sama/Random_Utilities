data:extend({
  {
    type = "technology",
    name = "RU-Big-Steam-Engine",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/steam-engine.png", tint = {r=132, g=180, b=181}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Big-Steam-Engine"
      }
    },
    prerequisites = {"RU-Medium-Steam-Engine"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 33
    },
    order = "a-h-a"
  },
})