--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Big-Accumulator",
    hidden = "true",
--    hidden = is_Big_accumulator_hidden ,
    enabled = "false",
    ingredients =
    {
      {"RU-Medium-Accumulator", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Big-Accumulator",
  },
}
)

--end
