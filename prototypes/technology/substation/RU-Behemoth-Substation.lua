--if settings.startup["RU-Substation"].value == true then

--technologies
data:extend({
{
  type = "technology",
  name = "RU-Behemoth-Substation",
  hidden = "true" ,
  icon_size = 128,
  icon = "__base__/graphics/technology/electric-energy-distribution.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "RU-Behemoth-Substation"
    }
  },
  prerequisites = {"RU-Big-Substation"},
                  --{"electric-energy-distribution-2"},
  unit =
  {
    count = 500,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 34
  },
  order = "c-e-c"
},
})

--end
