data:extend({
  {
    type = "technology",
    name = "RU-Behemoth-Inserter",
    hidden = "true",
    icon_size = 64,
    icons = {{icon = "__base__/graphics/icons/fast-inserter.png", {tint = {r=80, g=80, b=80}}}},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Behemoth-Inserter"
      }
    },
    prerequisites = {"RU-Big-Inserter"},
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 34
    },
    order = "a-h-a"
  },
})