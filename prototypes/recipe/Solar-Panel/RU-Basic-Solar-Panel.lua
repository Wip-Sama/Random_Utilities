--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Basic-Solar-Panel",
    hidden = "false" ,
    enabled = "false",
    ingredients =
    {
      {"solar-panel", 8},
      {"low-density-structure", 8},
      {"processing-unit", 3},
    },
    result = "RU-Basic-Solar-Panel",
  },
}
)

--end
