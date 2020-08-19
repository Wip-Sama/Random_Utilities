data:extend({
  {
    type = "technology",
    name = "RU-Big-Inserter",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/fast-inserter.png", {tint = {r=132, g=180, b=181}}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Big-Inserter"
      }
    },
    prerequisites = {"RU-Medium-Inserter"},
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 33
    },
    order = "a-h-a"
  },
})