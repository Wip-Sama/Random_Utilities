--if not mods["miniloader"] then
data:extend({
    {
        type = "recipe",
        name = "RU-Behemoth-1x-Loader",
        hidden = "true",
        enabled = "false",
        ingredients =
        {
          {"iron-gear-wheel", 20},
          {"RU-Behemoth-Transport-Belt", 2},
          {"RU-Behemoth-Stack-Inserter", 1},
          {"processing-unit", 4}
        },
        result = "RU-Behemoth-1x-Loader",
        result_count = 1,
      },
})
--end