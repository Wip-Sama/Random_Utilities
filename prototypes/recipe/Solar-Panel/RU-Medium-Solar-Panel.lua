--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Medium-Solar-Panel",
    enabled = false,
    ingredients =
    {
      {"RU-Basic-Solar-Panel", 8},
      {"electronic-circuit", 10},
      {"advanced-circuit", 3},
      {"low-density-structure", 20},
      {"processing-unit", 2},
    },
    result = "RU-Medium-Solar-Panel",
  },
}
)

--end
