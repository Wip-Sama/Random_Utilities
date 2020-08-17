--if settings.startup["RU-Substation"].value == true then

--technologies
data:extend({
{
  type = "technology",
  name = "RU-Medium-Substation",
  hidden = "true",
  icon_size = 128,
  icon = "__base__/graphics/technology/electric-energy-distribution.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Medium-Substation"
    }
  },
  prerequisites = {"RU-Basic-Substation"},
                  --{"electric-energy-distribution-2"},
  unit =
  {
    count = 250,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
    },
    time = 32
  },
  order = "c-e-c"
},
})

--end
