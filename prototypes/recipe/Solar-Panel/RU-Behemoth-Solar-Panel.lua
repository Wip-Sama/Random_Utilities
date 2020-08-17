--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Behemoth-Solar-Panel",
    hidden = "true",
    enabled = "false",
    ingredients =
    {
      {"RU-Big-Solar-Panel", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Behemoth-Solar-Panel",
  },
}
)

--end
