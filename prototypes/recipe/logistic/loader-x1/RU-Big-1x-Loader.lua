--if not mods["miniloader"] then
data:extend({
    {
        type = "recipe",
        name = "RU-Big-1x-Loader",
        hidden = "true",
        enabled = "false",
        ingredients =
        {
          {"iron-gear-wheel", 20},
          {"RU-Big-Transport-Belt", 2},
          {"RU-Big-Stack-Inserter", 1},
          {"RU-Medium-miniloader", 1},
          {"advanced-circuit", 4}
        },
        result = "RU-Big-1x-Loader",
        result_count = 1,
      },
})
--end