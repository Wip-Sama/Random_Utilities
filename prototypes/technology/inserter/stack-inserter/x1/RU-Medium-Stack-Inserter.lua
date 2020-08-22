data:extend({
  {
    type = "technology",
    name = "RU-Medium-Stack-Inserter",
    hidden = "true",
    icons = {{icon = "__base__/graphics/icons/stack-inserter.png",tint = {r=202, g=154, b=152}}},
    icon_size = 64,
    effects =
    {
      {type = "unlock-recipe", recipe = "RU-Medium-Stack-Inserter"},
      {type = "stack-inserter-capacity-bonus", modifier = 3}
    },
    prerequisites = {"RU-Basic-Stack-Inserter"},
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
      time = 32
    },
    upgrade = true,
    order = "c-o-a"
  },
})