--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Walkable-Beacon",
    hidden = "true",
    enabled = "false",
    ingredients =
    {
      {"beacon", 1},
      {"concrete", 18},
    },
    result = "RU-Walkable-Beacon"
  },
})
--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Walkable-Beacon-Recycle",
    hidden = "true",
    enabled = "false",
    ingredients =
    {
      {"RU-Walkable-Beacon", 1},
    },
    result = "beacon"
  },
})
