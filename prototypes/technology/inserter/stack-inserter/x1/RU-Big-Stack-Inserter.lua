data:extend({
  {
    type = "technology",
    name = "RU-Big-Stack-Inserter",
    hidden = "true",
    icons = {{icon = "__base__/graphics/icons/stack-inserter.png",tint = {r=132, g=180, b=181}}},
    icon_size = 64,
    effects =
    {
      {type = "unlock-recipe", recipe = "RU-Big-Stack-Inserter"},
      {type = "stack-inserter-capacity-bonus", modifier = 3}
    },
    prerequisites = {"RU-Medium-Stack-Inserter"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 33
    },
    upgrade = true,
    order = "c-o-a"
  },
})