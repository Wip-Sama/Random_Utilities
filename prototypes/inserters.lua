local hit_effects = require ("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local recipes = require("util.recipe_merger")

--dummy base
data:extend{
    {
        type = "technology",
        name = "ru-dummy-inserter-tech",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fast-inserter.png",
        hidden = true,
        effects = {},
        prerequisites = {},
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
        },
        order = "a-b-c-d"
    },
    {
        type = "item",
        name = "ru-dummy-inserter-item",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ru-dummy",
        order = "f[stack-inserter]",
        place_result = "stack-inserter",
        stack_size = 50
    },
    {
        type = "inserter",
        name = "ru-dummy-inserter-entity",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        minable = { mining_time = 0.1, result = "stack-inserter" },
        max_health = 160,
        corpse = "stack-inserter-remnants",
        dying_explosion = "stack-inserter-explosion",
        
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        
        --generics --don't fuck those up
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        damaged_trigger_effect = hit_effects.entity(),
        pickup_position = {0, -1},
        insert_position = {0, 1.2},

        --consuption
        energy_per_movement = "20KJ",
        energy_per_rotation = "20KJ",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "1kW"
        },

        --speed
        extension_speed = 0.07,
        rotation_speed = 0.04,

        --replacements
        fast_replaceable_group = "inserter",

        --sounds
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.inserter_fast,

        --graphics
        hand_base_picture = {
            {
                filename = "__Random_Utilities__/graphics/entity/stack-inserter/stack-inserter-hand-base.png",
                priority = "extra-high",
                width = 8,
                height = 34,
            },
            hr_version = {
                filename = "__Random_Utilities__/graphics/entity/stack-inserter/hr-stack-inserter-hand-base.png",
                priority = "extra-high",
                width = 32,
                height = 136,
                scale = 0.25
            }
        },
        hand_closed_picture = {
            filename = "__Random_Utilities__/graphics/entity/stack-inserter/stack-inserter-hand-closed.png",
            priority = "extra-high",
            width = 24,
            height = 41,
            hr_version = {
                filename = "__Random_Utilities__/graphics/entity/stack-inserter/hr-stack-inserter-hand-closed.png",
                priority = "extra-high",
                width = 100,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_picture = {
            filename = "__Random_Utilities__/graphics/entity/stack-inserter/stack-inserter-hand-open.png",
            priority = "extra-high",
            width = 32,
            height = 41,
            hr_version = {
                filename = "__Random_Utilities__/graphics/entity/stack-inserter/hr-stack-inserter-hand-open.png",
                priority = "extra-high",
                width = 130,
                height = 164,
                scale = 0.25
            }
        },
        hand_base_shadow = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 8,
            height = 33,
            hr_version = {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
                priority = "extra-high",
                width = 32,
                height = 132,
                scale = 0.25
            }
        },
        hand_closed_shadow = {
            filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 24,
            height = 41,
            hr_version = {
                filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-closed-shadow.png",
                priority = "extra-high",
                width = 100,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_shadow = {
            filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 32,
            height = 41,
            hr_version = {
                filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-open-shadow.png",
                priority = "extra-high",
                width = 130,
                height = 164,
                scale = 0.25
            }
        },
        platform_picture = {
            sheet = {
                filename = "__Random_Utilities__/graphics/entity/stack-inserter/stack-inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = {0.09375, 0},
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/stack-inserter/hr-stack-inserter-platform.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5-1),
                    scale = 0.5
                }
            }
        },

        --circuits
        circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
        circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
}

local function create_inserter_item(suffix, tint, tier, stack, filter, long)
    local name = "ru-" .. suffix .. "-inserter"
    local item = util.table.deepcopy(data.raw.item["ru-dummy-inserter-item"])
    item.name = name
    item.icon = nil
    item.icons = {
        {
            icon = "__Random_Utilities__/graphics/item/inserters/inserter.png",
            icon_size = 64,
        },
        {
            icon = "__Random_Utilities__/graphics/item/inserters/inserter-mask.png",
            icon_size = 64,
            tint = tint,
        },
        filter and {
            icon = "__Random_Utilities__/graphics/item/inserters/filtered.png",
            icon_size = 64,
        } or nil,
        stack and {
            icon = "__Random_Utilities__/graphics/item/inserters/stack.png",
            icon_size = 64,
        } or nil,
        long and {
            icon = "__Random_Utilities__/graphics/item/inserters/long.png",
            icon_size = 64,
        } or nil,
    }

    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local count = 1
    count = count+ (filter and 1 or 0)
    count = count+ (stack and 2 or 0)
    count = count+ (long and 4 or 0)

    item.subgroup = "ru-inserters-"..string.sub(suffix, 1, 3)
    item.order = string.sub(letters, tier).."[inserter-mk"..tostring(tier).."]-"..tostring(count).."["..name.."]"
    item.place_result = name
    data:extend{item}
end

local function create_inserter_recipe(suffix, tier, ing, stack, filter, long)
    local name = "ru-" .. suffix .. "-inserter"

    local to_add = {
        ((tier>1) and {"ru-mk" .. tier-1 .. (long and "-long" or "") .. (stack and "-stack" or "") .. (filter and "-filtered" or "") .. "-inserter", 1} or nil),
    }

    local recipe = {
        type = "recipe",
        name = name,
        enabled = true,
        hidden = false,
        energy_required = 1,
        ingredients = (not to_add == {}) and ing or recipes.merge_ingredients(ing, to_add),
        results = {{name, 1}},
    }

    data:extend{recipe}
end

local function create_inserter_entity(suffix, tint, tier, stack, filter, long)
    local name = "ru-" .. suffix .. "-inserter"

    local entity = util.table.deepcopy(data.raw.inserter["ru-dummy-inserter-entity"])
    entity.name = name
    entity.icon = nil
    entity.icons = {
        {
            icon = "__Random_Utilities__/graphics/item/inserters/inserter.png",
            icon_size = 64,
        },
        {
            icon = "__Random_Utilities__/graphics/item/inserters/inserter-mask.png",
            icon_size = 64,
            tint = tint,
        },
        filter and {
            icon = "__Random_Utilities__/graphics/item/inserters/filtered.png",
            icon_size = 64,
        } or nil,
        stack and {
            icon = "__Random_Utilities__/graphics/item/inserters/stack.png",
            icon_size = 64,
        } or nil,
        long and {
            icon = "__Random_Utilities__/graphics/item/inserters/long.png",
            icon_size = 64,
        } or nil,
    }

    --generics
    local inserter_type = ""
    if stack == true then
        inserter_type = "stack-"
        entity.stack = true
    end
    if filter == true then
        entity.filter_count = 5
    end
    if long == true then
        entity.pickup_position = {0, -2}
        entity.insert_position = {0, 2.2}
        entity.hand_size = 1.5
    end
    entity.minable = { mining_time = 0.1, result = name }
    entity.max_health = 320*tier
    entity.corpse = "stack-inserter-remnants"
    entity.dying_explosion = "stack-inserter-explosion"

    --consuption
    entity.energy_per_movement = tostring(20+tier).."KJ"
    entity.energy_per_rotation = tostring(20+tier).."KJ"
    entity.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        drain = tostring(tier).."kW"
    }

    --speed
    entity.extension_speed = 0.1*(tier*(tier+1))
    entity.rotation_speed = 0.05*(tier*(tier+1))

    --graphics
    entity.hand_base_picture = {
        layers = {
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-base.png",
                priority = "extra-high",
                width = 8,
                height = 34,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-base.png",
                    priority = "extra-high",
                    width = 32,
                    height = 136,
                    scale = 0.25
                }
            },
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-base-mask.png",
                priority = "extra-high",
                width = 8,
                height = 34,
                tint = tint,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-base-mask.png",
                    priority = "extra-high",
                    width = 32,
                    height = 136,
                    scale = 0.25,
                    tint = tint
                }
            }
        }
    }
    entity.hand_closed_picture = {
        layers = {
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-closed.png",
                priority = "extra-high",
                width = 24,
                height = 41,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-closed.png",
                    priority = "extra-high",
                    width = stack and 100 or 72,
                    height = 164,
                    scale = 0.25
                }
            },
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-closed-mask.png",
                priority = "extra-high",
                width = 24,
                height = 41,
                tint = tint,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-closed-mask.png",
                    priority = "extra-high",
                    width = stack and 100 or 72,
                    height = 164,
                    scale = 0.25,
                    tint = tint
                }
            }
        }

    }
    entity.hand_open_picture = {
        layers = {
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-open.png",
                priority = "extra-high",
                width = 32,
                height = 41,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-open.png",
                    priority = "extra-high",
                    width = stack and 130 or 72,
                    height = 164,
                    scale = 0.25

                }
            },
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-open-mask.png",
                priority = "extra-high",
                width = 32,
                height = 41,
                tint = tint,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-open-mask.png",
                    priority = "extra-high",
                    width = stack and 130 or 72,
                    height = 164,
                    scale = 0.25,
                    tint = tint
                }
            }
        }
    }
    entity.platform_picture = {
        sheets = {
            -- Base
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = {0.09375, 0},
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-platform.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5-1),
                    scale = 0.5
                }
            },
            {
                filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-platform-mask.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = {0.09375, 0},
                tint = tint,
                hr_version = {
                    filename = "__Random_Utilities__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-platform-mask.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5-1),
                    scale = 0.5,
                    tint = tint
                }
            }
          }
    }
    if stack == true then
        entity.hand_closed_shadow = {
            filename = "__base__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 24,
            height = 41,
            hr_version = {
                filename = "__base__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-closed-shadow.png",
                priority = "extra-high",
                width = 100,
                height = 164,
                scale = 0.25
            }
        }
        entity.hand_open_shadow = {
            filename = "__base__/graphics/entity/"..inserter_type.."inserter/"..inserter_type.."inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 32,
            height = 41,
            hr_version = {
                filename = "__base__/graphics/entity/"..inserter_type.."inserter/hr-"..inserter_type.."inserter-hand-open-shadow.png",
                priority = "extra-high",
                width = 130,
                height = 164,
                scale = 0.25
            }
        }
    end
    data:extend{entity}
end

local function create_inserter_techonolgy(suffix, stack, tier, tint, technology)
    local name = "ru-" .. suffix .. (stack and "-stack" or "") .. "-inserter-technology"

    local tech = util.table.deepcopy(data.raw.technology["ru-dummy-inserter-tech"])
    tech.name = name
    tech.icons = stack and {
                            {
                                icon = "__Random_Utilities__/graphics/technology/stack-inserter.png",
                                icon_size = 256,
                            },
                            {
                                icon = "__Random_Utilities__/graphics/technology/stack-inserter-mask.png",
                                icon_size = 256,
                                tint = tint,
                            }
                        }
                        or {
                            {
                                icon = "__Random_Utilities__/graphics/technology/inserter.png",
                                icon_size = 256,
                            },
                            {
                                icon = "__Random_Utilities__/graphics/technology/inserter-1-mask.png",
                                icon_size = 256,
                                tint = tint,
                            },
                            {
                                icon = "__Random_Utilities__/graphics/technology/inserter-2-mask.png",
                                icon_size = 256,
                                tint = tint,
                            }
                        }

    local to_add = {
        (stack and "stack-inserter" or nil),
        ((tier>1) and "ru-mk" .. tier-1 .. (stack and "-stack" or "") .. "-inserter-technology" or nil),
    }

    tech.hidden = false
    tech.prerequisites = recipes.merge_prerequisites(technology.prerequisites, to_add)
    tech.unit = {
        time = 60,
        count = tier*1000-(200*tier-1)-1,
        ingredients = technology.ingredients
    }
    tech.effects = {
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. (stack and "-stack" or "") .. "-inserter"
        },
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. (stack and "-stack" or "") .. "-filtered-inserter"
        },
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. "-long" .. (stack and "-stack" or "") .. "-inserter"
        },
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. "-long" .. (stack and "-stack" or "") .. "-filtered-inserter"
        },
    }

    data:extend{tech}
end

local function create_inserters(suffix, temp)
    local suffixs = {
        --                                  stack   filter  long
        {suffix,                            false,  false,  false},
        {suffix.."-filtered",               false,  true,   false},
        {suffix.."-stack",                  true,   false,  false},
        {suffix.."-stack-filtered",         true,   true,   false},
        {suffix.."-long",                   false,  false,  true},
        {suffix.."-long-filtered",          false,  true,   true},
        {suffix.."-long-stack",             true,   false,  true},
        {suffix.."-long-stack-filtered",    true,   true,   true},
    }

    for _, x in pairs(suffixs) do
        create_inserter_entity(x[1], temp.tint, temp.tier, x[2], x[3], x[4])
        create_inserter_item(x[1], temp.tint, temp.tier, x[2], x[3], x[4])
        create_inserter_recipe(x[1], temp.tier, temp.ingredients, x[2], x[3], x[4])
    end
    create_inserter_techonolgy(suffix, false, temp.tier, temp.tint, temp.technology)
    create_inserter_techonolgy(suffix, true, temp.tier, temp.tint, temp.technology)
end

return {
    create_inserters = create_inserters
}