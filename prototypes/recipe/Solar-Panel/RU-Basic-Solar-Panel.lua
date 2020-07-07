--if settings.startup["RU-Solar-Panel"].value == true then

--recipes
data:extend(
{
  {
    type = "recipe",
    name = "RU-Basic-Solar-Panel",
    enabled = "false",
    ingredients =
    {
      {"solar-panel", 8},
      {"electronic-circuit", 5},
      {"advanced-circuit", 1}
    },
    result = "RU-Basic-Solar-Panel",
  },
}
)

--end
