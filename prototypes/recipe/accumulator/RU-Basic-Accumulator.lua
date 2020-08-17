--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Basic-Accumulator",
    hidden = "true",
--    hidden = is_Basic_accumulator_hidden ,
    enabled = "false",
    ingredients =
    {
      {"accumulator", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Basic-Accumulator",
  },
}
)

--end
