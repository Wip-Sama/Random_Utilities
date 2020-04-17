table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "wood-to-landfill"})

data:extend({

  {
    type = "recipe",
    name = "wood-to-landfill",
    energy_required = 0.5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"wood", 20}
    },
    result = "landfill",
    result_count = 1
  }
})
