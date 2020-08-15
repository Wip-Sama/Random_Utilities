--technology
data:extend({
  {
    type = "technology",
    name = "RU-walkable-beacon-upgrade",
    hidden = "true" ,
    icon_size = 128,
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects = {
      {type = "unlock-recipe", recipe = "RU-Walkable-Beacon",},
      --[[{type = "unlock-recipe", recipe = "RU-Walkable-Basic-Beacon"},
      {type = "unlock-recipe", recipe = "RU-Walkable-Medium-Beacon"},
      {type = "unlock-recipe", recipe = "RU-Walkable-Big-Beacon",},--]]
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
  {
    type = "technology",
    name = "RU-walkable-beacon-downgrade",
    hidden = "true" ,
    icon_size = 128,
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects = {
      {type = "unlock-recipe", recipe = "RU-Walkable-Beacon-Recycle",},
      --[[{type = "unlock-recipe", recipe = "RU-Walkable-Basic-Beacon-Recycle"},
      {type = "unlock-recipe", recipe = "RU-Walkable-Medium-Beacon-Recycle"},
      {type = "unlock-recipe", recipe = "RU-Walkable-Big-Beacon-Recycle",},--]]
      },
    prerequisites = {"RU-walkable-beacon-upgrade"},
    unit =
      {
      count = 450,
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
