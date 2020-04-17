table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "easy-landfill"})

data:extend({

  {
    type = "recipe",
    name = "easy-landfill",
    energy_required = 0.5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"stone", 1}
    },
    result = "landfill",
    result_count = 1
  }
})
