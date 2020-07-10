--if settings.startup["RU-Lamp"].value == true then

--technologies
data:extend({
  {
    type = "technology",
    name = "RU-Basic-Lamp",
    hidden = "false" ,
    icon_size = 128,
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RU-Basic-Lamp"
      }
    },
    prerequisites = {"optics"},
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 18
    },
    order = "a-h-a"
  },
})




--end
