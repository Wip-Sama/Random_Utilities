--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Behemut-Solar-Panel",
    enabled = "false",
    ingredients =
    {
      {"RU-Big-Solar-Panel", 8},
      {"electronic-circuit", 40},
      {"advanced-circuit", 15},
      {"low-density-structure", 100},
      {"processing-unit", 5}
    },
    result = "RU-Behemut-Solar-Panel",
  },
}
)

--end
