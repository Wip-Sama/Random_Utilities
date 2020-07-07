--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Behemut-Accumulator",
    enabled = "false",
    ingredients =
    {
      {"RU-Big-Accumulator", 8},
      {"electronic-circuit", 40},
      {"advanced-circuit", 15},
      {"low-density-structure", 100},
      {"processing-unit", 5}
    },
    result = "RU-Behemut-Accumulator",
  },
}
)

--end
