--if settings.startup["RU-Accumulator"].value == true then

--item
data:extend(
{
  {
    type = "item",
    name = "RU-Medium-Accumulator",
    icons = {{icon = "__base__/graphics/icons/accumulator.png", tint = {r=202, g=154, b=152}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator3]-a[accumulator3]",
    place_result = "RU-Medium-Accumulator",
    stack_size = 50
  },
}
)

--end
