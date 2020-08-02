--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Behemoth-Accumulator",
    hidden = "false" ,
--    hidden = is_Behemoth_accumulator_hidden ,
    enabled = "false",
    ingredients =
    {
      {"RU-Big-Accumulator", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Behemoth-Accumulator",
  },
}
)

--end
