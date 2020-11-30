--if not mods["miniloader"] then
data:extend({
    {
        type = "recipe",
        name = "RU-Medium-1x-Loader",
        hidden = "true",
        enabled = "false",
        ingredients =
        {
          {"iron-gear-wheel", 20},
          {"RU-Medium-Transport-Belt", 2},
          {"RU-Medium-Stack-Inserter", 1},
          {"electronic-circuit", 4}
        },
        result = "RU-Medium-1x-Loader",
        result_count = 1,
      },
})
--end