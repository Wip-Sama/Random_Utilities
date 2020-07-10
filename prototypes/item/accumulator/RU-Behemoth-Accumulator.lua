--if settings.startup["RU-Accumulator"].value == true then

--item
data:extend(
{
  {
    type = "item",
    name = "RU-Behemoth-Accumulator",
    icons = {{icon = "__base__/graphics/icons/accumulator.png", tint = {r=80, g=80, b=80}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator5]-a[accumulator5]",
    place_result = "RU-Behemoth-Accumulator",
    stack_size = 50
  },
}
)

--end
