--if settings.startup["RU-Accumulator"].value == true then

--item
data:extend(
{
  {
    type = "item",
    name = "RU-Big-Accumulator",
    icons = {{icon = "__base__/graphics/icons/accumulator.png", tint = {r=132, g=180, b=181}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator4]-a[accumulator4]",
    place_result = "RU-Big-Accumulator",
    stack_size = 50
  },
}
)

--end
