--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Big-Accumulator",
    enabled = "false",
    ingredients =
    {
      {"RU-Medium-Accumulator", 8},
      {"electronic-circuit", 15},
      {"advanced-circuit", 5},
      {"low-density-structure", 40},
      {"processing-unit", 3}
    },
    result = "RU-Big-Accumulator",
  },
}
)

--end
