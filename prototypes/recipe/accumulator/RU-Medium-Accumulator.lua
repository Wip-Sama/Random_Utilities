--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Medium-Accumulator",
    hidden = "true",
--    hidden = is_Medium_accumulator_hidden ,
    enabled = false,
    ingredients =
    {
      {"RU-Basic-Accumulator", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Medium-Accumulator",
  },
}
)

--end
