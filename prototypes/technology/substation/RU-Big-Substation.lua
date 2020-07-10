--if settings.startup["RU-Substation"].value == true then

--technologies
data:extend({
{
  type = "technology",
  name = "RU-Big-Substation",
  hidden = "false" ,
  icon_size = 128,
  icon = "__base__/graphics/technology/electric-energy-distribution.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Big-Substation"
    }
  },
  prerequisites = {"RU-Medium-Substation"},
                  --{"electric-energy-distribution-2"},
  unit =
  {
    count = 300,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 33
  },
  order = "c-e-c"
},
})

--end
