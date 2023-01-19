local logistic_templates = {
    --Don't skip a tier, the mod is not ready for that and will break
    ["mk1"] = {
        tier = 1,
        ingredients = {
            {"iron-gear-wheel", 15},
            {"advanced-circuit", 2}
        },
        technology = {
            prerequisites = {"fast-inserter", "advanced-electronics"},
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            }
        },
        tint = {202, 183, 93},
    },

    ["mk2"] = {
        tier = 2,
        ingredients = {
            {"iron-gear-wheel", 15},
            {"advanced-circuit", 2}
        },
        technology = {
            prerequisites = {},
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            }
        },
        tint = {170, 50, 60},
    },

    ["mk3"] = {
        tier = 3,
        ingredients = {
            {"iron-gear-wheel", 15},
            {"advanced-circuit", 2}
        },
        technology = {
            prerequisites = {"advanced-electronics-2"},
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
            }
        },
        tint = {67, 192, 250},
    },

    ["mk4"] = {
        tier = 4,
        ingredients = {
            {"iron-gear-wheel", 15},
            {"processing-unit", 2}
        },
        technology = {
            prerequisites = {"speed-module-3"},
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            }
        },
        tint = {158, 46, 166},
    },
}

local function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

for y, x in pairs(logistic_templates) do
    x.objects = tablelength(logistic_templates)
    print(x.objects)
end