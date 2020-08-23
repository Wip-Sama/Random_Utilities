data:extend({
    {
        type = "technology",
        name = "RU-Logistics-5",
        hidden = "true",
        icon_size = 128,
        icons = {{icon = "__base__/graphics/technology/logistics-2.png", tint = {r=202, g=154, b=152}}},
        effects =
        {
          { type = "unlock-recipe", recipe = "RU-Medium-Transport-Belt" },
          { type = "unlock-recipe", recipe = "RU-Medium-Splitter" },
          { type = "unlock-recipe", recipe = "RU-Medium-Underground-Belt" },
        },
        prerequisites = {"RU-Logistics-4"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
          },
          time = 32
        },
        order = "a-f-b"
    },
})