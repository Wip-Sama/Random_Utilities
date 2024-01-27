local inserter_templates = {
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
    }
}

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

local infinite_techs_templates = {
    ["bot_storage"] = {
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.1
            }
        },

        {
            name = "ru-worker-robot-storage-4",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
            },
            max_level = "infinite",
            prerequisites = {"worker-robots-storage-3"},
            formula = "10000*2^(L-3)"
        },
    },

    ["bot_battery"] = {
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.1
            }
        },

        {
            name = "ru-worker-robot-battery-1",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            max_level = "4",
            prerequisites = {"robotics"},
            formula = "100*L"
        },

        {
            name = "ru-worker-robot-battery-5",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            max_level = "8",
            prerequisites = {"ru-worker-robot-battery-1"},
            formula = "100*L"
        },

        {
            name = "ru-worker-robot-battery-9",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
            },
            max_level = "11",
            prerequisites = {"ru-worker-robot-battery-5"},
            formula = "200*L"
        },

        {
            name = "ru-worker-robot-battery-12",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
            },
            max_level = "infinite",
            prerequisites = {"ru-worker-robot-battery-9"},
            formula = "10000*2^(L-11)"
        },
    },

    ["inserter_capacity"] = {
        effects = {
            {
                type = "inserter-stack-size-bonus",
                modifier = 0.5
            },
            {
                type = "stack-inserter-capacity-bonus",
                modifier = 2
            }
        },

        {
            name = "ru-inserter-capacity-bonus-8",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
            },
            max_level = "infinite",
            prerequisites = {"inserter-capacity-bonus-7"},
            formula = "10000*2^(L-3)"
        }
    }
}

return {
    --FATTI 3/15
    inserter_templates = inserter_templates,                --inserters
    infinite_techs_templates = infinite_techs_templates,    --
    logistic_templates = logistic_templates,                --belt, underground, splitter
    --fluid_logistic_templates = xxxx,          --pipe, pump, offshure-pump, oil-pump   +/waterwell
    --steam_templates = xxxx,                   --boiler, steam-engine
    --nuclear_templates = xxxx,                 --nuclear-reactor, centrifuge
    --processing_templates = xxxx,              --assembler, chemical-plant, refinery   +/idk... something
    --solar_templates = xxxx,                   --solar-panel, accumulator
    --beacon_templates = xxxx,                  --beacon                                +/walkable beacon
    --storage_templates = xxxx,                 --chests, robot chests                  +/warehouse and something
    --fluid_storage_templates = xxxx,           --tank                                  +/more tanks
    --robot_templates = xxxx,                   --logistic/construction robot, roboport
    --train_tempates = xxxx,                    --trains, item/fluid wagon              +/rails
    --floor_templates = xxxx,                   --floors... idk
    --defense_templates = xxxx,                 --walls, magazines, shells              ?/turrets are hard to balance so maybe with some more enemies
}