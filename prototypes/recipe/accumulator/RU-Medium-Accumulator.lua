--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Medium-Accumulator",
    enabled = false,
    ingredients =
    {
      {"RU-Basic-Accumulator", 8},
      {"electronic-circuit", 10},
      {"advanced-circuit", 3},
      {"low-density-structure", 20},
      {"processing-unit", 2},
    },
    result = "RU-Medium-Accumulator",
  },
}
)

--end
