--if settings.startup["RU-Accumulator"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Basic-Accumulator",
    enabled = "false",
    ingredients =
    {
      {"accumulator", 8},
      {"electronic-circuit", 5},
      {"advanced-circuit", 1}
    },
    result = "RU-Basic-Accumulator",
  },
}
)

--end
