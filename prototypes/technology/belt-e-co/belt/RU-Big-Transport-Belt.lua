data:extend({
    {
        type = "technology",
        name = "RU-Logistics-6",
        hidden = "true",
        icon_size = 128,
        icons = {{icon = "__base__/graphics/technology/logistics-3.png", tint = {r=132, g=180, b=181}}},
        effects =
        {
          { type = "unlock-recipe", recipe = "RU-Big-Transport-Belt" },
          { type = "unlock-recipe", recipe = "RU-Big-Splitter" },
          { type = "unlock-recipe", recipe = "RU-Big-Underground-Belt" },
        },
        prerequisites = {"RU-Logistics-5"},
        unit =
        {
          count = 1500,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
          },
          time = 33
        },
        order = "a-f-b"
    },
})