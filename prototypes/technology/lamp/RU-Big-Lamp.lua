--if settings.startup["RU-Lamp"].value == true then

--technologies
data:extend({
  {
    type = "technology",
    name = "RU-Big-Lamp",
    hidden = "true",
    icon_size = 128,
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Big-Lamp"
      }
    },
    prerequisites = {"RU-Medium-Lamp"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 34
    },
    order = "a-h-a"
  },
})




--end
