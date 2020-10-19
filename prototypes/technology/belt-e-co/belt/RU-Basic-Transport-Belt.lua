data:extend({
    {
        type = "technology",
        name = "RU-Logistics-a",
        hidden = "true",
        icon_size = 128,
        icons = {{icon = "__base__/graphics/technology/logistics-1.png", tint = {r=178, g=173, b=100}}},
        effects =
        {
          { type = "unlock-recipe", recipe = "RU-Basic-Transport-Belt" },
          { type = "unlock-recipe", recipe = "RU-Basic-Splitter" },
          { type = "unlock-recipe", recipe = "RU-Basic-Underground-Belt" },
        },
        prerequisites = {"logistics-3"},
        unit =
        {
          count = 750,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
          },
          time = 31
        },
        order = "a-f-b"
    },
})