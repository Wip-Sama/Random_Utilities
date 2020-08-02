--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Big-Solar-Panel",
    hidden = "false" ,
    enabled = "false",
    ingredients =
    {
      {"RU-Medium-Solar-Panel", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Big-Solar-Panel",
  },
}
)

--end
