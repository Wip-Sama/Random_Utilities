data:extend({
  {
    type = "technology",
    name = "RU-Behemoth-Stack-Inserter",
    hidden = "true",
    icons = {{icon = "__base__/graphics/icons/stack-inserter.png",tint = {r=80, g=80, b=80}}},
    icon_size = 64,
    effects =
    {
      {type = "unlock-recipe", recipe = "RU-Behemoth-Stack-Inserter"},
      {type = "stack-inserter-capacity-bonus", modifier = 10}
    },
    prerequisites = {"RU-Big-Stack-Inserter"},
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
    upgrade = true,
    order = "c-o-a"
  },
})