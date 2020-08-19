data:extend({
  {
    type = "technology",
    name = "RU-Medium-Inserter",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/long-handed-inserter.png", {tint = {r=202, g=154, b=152}}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Medium-Inserter"
      }
    },
    prerequisites = {"RU-Basic-Inserter"},
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 32
    },
    order = "a-h-a"
  },
})