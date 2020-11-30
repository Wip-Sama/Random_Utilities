--if not mods["miniloader"] then
data:extend({
    {
        type = "item",
        name = "RU-Basic-1x-Loader",
        icons = {{icon = "__Random_Utilities__/graphics/icons/loader/loader-1x/loader-icon-base.png", tint = {r=178, g=173, b=100}}},
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "RU-Loader-1x",
        order = "a",
        place_result = "RU-Basic-1x-Loader",
        stack_size = 200
    },
})
--end