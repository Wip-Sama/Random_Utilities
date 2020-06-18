--technology
data:extend({
{
  type = "technology",
  name = "RU-advanced-effect-transmission-c",
  icon_size = 128,
  icon = "__base__/graphics/technology/effect-transmission.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Big-Beacon"
    }
  },
  prerequisites = {"RU-advanced-effect-transmission-b"},
  unit =
  {
    count = 1200,
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
  order = "i-i"
},
})
