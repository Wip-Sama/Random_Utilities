--if settings.startup["RU-Lamp"].value == true then

--technologies
data:extend({
  {
    type = "technology",
    name = "RU-Medium-Lamp",
    hidden = "true" ,
    icon_size = 128,
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Medium-Lamp"
      }
    },
    prerequisites = {"RU-Basic-Lamp"},
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 32
    },
    order = "a-h-a"
  },
})




--end
