data:extend({
  {
    type = "technology",
    name = "RU-Basic-Inserter",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/inserter.png", tint = {r=178, g=173, b=100}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Basic-Inserter"
      }
    },
    prerequisites = {"fast-inserter"},
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 31
    },
    order = "a-h-a"
  },
})