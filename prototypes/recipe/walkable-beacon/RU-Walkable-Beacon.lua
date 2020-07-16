--Recipe
data:extend(
{
  {
    type = "recipe",
    name = "RU-Walkable-Beacon",
    hidden = "false" ,
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
    hidden = "false" ,
    enabled = "false",
    ingredients =
    {
      {"RU-Walkable-Beacon", 1},
    },
    result = "beacon"
  },
})
