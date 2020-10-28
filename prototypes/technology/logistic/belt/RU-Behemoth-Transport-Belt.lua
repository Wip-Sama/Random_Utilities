data:extend({
    {
        type = "technology",
        name = "RU-Logistics-d",
        hidden = "true",
        icon_size = 128,
        icons = {{icon = "__base__/graphics/technology/logistics-3.png", tint = {r=80, g=80, b=80}}},
        effects =
        {
          { type = "unlock-recipe", recipe = "RU-Behemoth-Transport-Belt" },
          { type = "unlock-recipe", recipe = "RU-Behemoth-Splitter" },
          { type = "unlock-recipe", recipe = "RU-Behemoth-Underground-Belt" },
          { type = "unlock-recipe", recipe = "RU-Behemoth-1x-Loader" },
        },
        prerequisites = {"RU-Logistics-c"},
        unit =
        {
          count = 2000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
          },
          time = 34
        },
        order = "a-f-b"
    },
})