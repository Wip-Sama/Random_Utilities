--if settings.startup["RU-Accumulator"].value == true then

--item
data:extend(
{
  {
    type = "item",
    name = "RU-Basic-Accumulator",
    icons = {{icon = "__base__/graphics/icons/accumulator.png", tint = {r=178, g=173, b=100}}},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "RU-Accumulator",
    order = "a",
    place_result = "RU-Basic-Accumulator",
    stack_size = 50
  },
}
)

--end
