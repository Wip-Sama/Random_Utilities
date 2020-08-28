data:extend({
  {
    type = "technology",
    name = "RU-Behemoth-Steam-Engine",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/steam-engine.png", tint = {r=80, g=80, b=80}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Behemoth-Steam-Engine"
      }
    },
    prerequisites = {"RU-Big-Steam-Engine"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 34
    },
    order = "a-h-a"
  },
})