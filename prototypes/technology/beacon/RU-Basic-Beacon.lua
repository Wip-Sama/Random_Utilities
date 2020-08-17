--technology
data:extend({
{
  type = "technology",
  name = "RU-advanced-effect-transmission-a",
  hidden = "true",
  icon_size = 128,
  icon = "__base__/graphics/technology/effect-transmission.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Basic-Beacon"
    }
  },
  prerequisites = {"effect-transmission"},
  unit =
  {
    count = 300,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 31
  },
  order = "i-i"
},
})
