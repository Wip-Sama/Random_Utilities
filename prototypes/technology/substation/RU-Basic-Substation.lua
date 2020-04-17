--if settings.startup["RU-Substation"].value == true then

--technologies
data:extend({
{
  type = "technology",
  name = "RU-Basic-Substation",
  icon_size = 128,
  icon = "__base__/graphics/technology/electric-energy-distribution.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Basic-Substation"
    }
  },
  prerequisites = {"electric-energy-distribution-1"},
  unit =
  {
    count = 75,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
    time = 25
  },
  order = "c-e-c"
},
})

--end
