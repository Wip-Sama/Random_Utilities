--technology
data:extend({
{
  type = "technology",
  name = "RU-advanced-effect-transmission-b",
  icon_size = 128,
  icon = "__base__/graphics/technology/effect-transmission.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Medium-Beacon"
    }
  },
  prerequisites = {"RU-advanced-effect-transmission-a"},
  unit =
  {
    count = 600,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 32
  },
  order = "i-i"
},
})
