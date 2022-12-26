local hit_effects = require ("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local recipes = require("util.recipe_merger")

data:extend({
    {
        type = "technology",
        name = "ru-dummy-logistic-tech",
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
        name = "ru-dummy-logistic-item",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ru-dummy",
        order = "f[logistic]",
        place_result = "stack-inserter",
        stack_size = 50
    },
    {
        type = "transport-belt",
        name = "ru-dummy-transport-belt",
        icon = "__base__/graphics/icons/transport-belt.png",
        icon_size = 64, 
        icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "transport-belt"},
        max_health = 150,
        corpse = "transport-belt-remnants",
        dying_explosion = "transport-belt-explosion",
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = {
            sound = {
                filename = "__base__/sound/transport-belt.ogg",
                volume = 0.17
            },
            persistent = true
        },
        animation_speed_coefficient = 32,
        belt_animation_set = basic_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        related_underground_belt = "underground-belt",
        next_upgrade = "fast-transport-belt",
        speed = 0.03125,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    },
    {
        type = "splitter",
        name = "ru-dummy-splitter",
        icon = "__base__/graphics/icons/splitter.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "splitter"},
        max_health = 170,
        corpse = "splitter-remnants",
        dying_explosion = "splitter-explosion",
        resistances = {
            {
                type = "fire",
                percent = 60
            }
        },

        collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
        selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        animation_speed_coefficient = 32,
        structure_animation_speed_coefficient = 0.7,
        structure_animation_movement_cooldown = 10,
        fast_replaceable_group = "transport-belt",
        next_upgrade = "fast-splitter",
        speed = 0.03125,
        belt_animation_set = basic_belt_animation_set,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.splitter,

        structure = {
            north = {
                filename = "__base__/graphics/entity/splitter/splitter-north.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 82,
                height = 36,
                shift = util.by_pixel(6, 0),
                hr_version = {
                    filename = "__base__/graphics/entity/splitter/hr-splitter-north.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = "extra-high",
                    width = 160,
                    height = 70,
                    shift = util.by_pixel(7, 0),
                    scale = 0.5
                }
            },
            east = {
                filename = "__base__/graphics/entity/splitter/splitter-east.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 46,
                height = 44,
                shift = util.by_pixel(4, 12),
                hr_version = {
                    filename = "__base__/graphics/entity/splitter/hr-splitter-east.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = "extra-high",
                    width = 90,
                    height = 84,
                    shift = util.by_pixel(4, 13),
                    scale = 0.5
                }
            },
            south = {
                filename = "__base__/graphics/entity/splitter/splitter-south.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 82,
                height = 32,
                shift = util.by_pixel(4, 0),
                hr_version = {
                    filename = "__base__/graphics/entity/splitter/hr-splitter-south.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = "extra-high",
                    width = 164,
                    height = 64,
                    shift = util.by_pixel(4, 0),
                    scale = 0.5
                }
            },
            west = {
                filename = "__base__/graphics/entity/splitter/splitter-west.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 46,
                height = 44,
                shift = util.by_pixel(6, 12),
                hr_version = {
                    filename = "__base__/graphics/entity/splitter/hr-splitter-west.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = "extra-high",
                    width = 90,
                    height = 86,
                    shift = util.by_pixel(6, 12),
                    scale = 0.5
                }
            }
        },

        structure_patch = {
            north = util.empty_sprite(),
            east = {
                filename = "__base__/graphics/entity/splitter/splitter-east-top_patch.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 46,
                height = 52,
                shift = util.by_pixel(4, -20),
                hr_version = {
                    filename = "__base__/graphics/entity/splitter/hr-splitter-east-top_patch.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = "extra-high",
                    width = 90,
                    height = 104,
                    shift = util.by_pixel(4, -20),
                    scale = 0.5
                }
            },
            south = util.empty_sprite(),
            west = {
                filename = "__base__/graphics/entity/splitter/splitter-west-top_patch.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 46,
                height = 48,
                shift = util.by_pixel(6, -18),
                hr_version = {
                filename = "__base__/graphics/entity/splitter/hr-splitter-west-top_patch.png",
                frame_count = 32,
                line_length = 8,
                priority = "extra-high",
                width = 90,
                height = 96,
                shift = util.by_pixel(6, -18),
                scale = 0.5
                }
            }
        }
    },
    {
        type = "underground-belt",
        name = "ru-dummy-underground-belt",
        icon = "__base__/graphics/icons/underground-belt.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "underground-belt"},
        max_health = 150,
        corpse = "underground-belt-remnants",
        dying_explosion = "underground-belt-explosion",
        max_distance = 5,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = {
            sound = {
                filename = "__base__/sound/underground-belt.ogg",
                volume = 0.2
            },
            max_sounds_per_type = 2,
            audible_distance_modifier = 0.5,
            persistent = true,
            use_doppler_shift = false
        },
        underground_sprite = {
            filename = "__core__/graphics/arrows/underground-lines.png",
            priority = "high",
            width = 64,
            height = 64,
            x = 64,
            scale = 0.5
        },
        underground_remove_belts_sprite = {
            filename = "__core__/graphics/arrows/underground-lines-remove.png",
            priority = "high",
            width = 64,
            height = 64,
            x = 64,
            scale = 0.5
        },
        resistances = {
            {
                type = "fire",
                percent = 60
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        animation_speed_coefficient = 32,
        belt_animation_set = basic_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        next_upgrade = "fast-underground-belt",
        speed = 0.03125,
        structure = {
            direction_in = {
                sheet = {
                    filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
                    priority = "extra-high",
                    width = 96,
                    height = 96,
                    y = 96,
                    hr_version = {
                        filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
                        priority = "extra-high",
                        width = 192,
                        height =192,
                        y = 192,
                        scale = 0.5
                    }
                }
            },
            direction_out = {
                sheet = {
                    filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
                    priority = "extra-high",
                    width = 96,
                    height = 96,
                    hr_version = {
                        filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
                        priority = "extra-high",
                        width = 192,
                        height = 192,
                        scale = 0.5
                    }
                }
            },
            direction_in_side_loading = {
                sheet = {
                    filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
                    priority = "extra-high",
                    width = 96,
                    height = 96,
                    y = 96*3,
                    hr_version = {
                        filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
                        priority = "extra-high",
                        width = 192,
                        height = 192,
                        y = 192*3,
                        scale = 0.5
                    }
                }
            },
            direction_out_side_loading = {
                sheet = {
                    filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
                    priority = "extra-high",
                    width = 96,
                    height = 96,
                    y = 96*2,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
                        priority = "extra-high",
                        width = 192,
                        height = 192,
                        y= 192*2,
                        scale = 0.5
                    },
                }
            },
            back_patch = {
                sheet = {
                    filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
                    priority = "extra-high",
                    width = 96,
                    height = 96,
                    hr_version = {
                        filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
                        priority = "extra-high",
                        width = 192,
                        height = 192,
                        scale = 0.5
                    }
                }
            },
            front_patch = {
                sheet = {
                filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
                priority = "extra-high",
                width = 96,
                height = 96,
                hr_version = {
                    filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
                    priority = "extra-high",
                    width = 192,
                    height = 192,
                    scale = 0.5
                }
                }
            }
        }
    }
})

--mancano le grafiche
local function create_logistics_item(suffix, type, tint, tier)
    local name = "ru-" .. suffix .. "-" .. type
    local item = util.table.deepcopy(data.raw.item["ru-dummy-logistic-item"])
    item.name = name
    item.icon = nil
    item.icons = {
        {
            icon = "__Random_Utilities__/graphics/item/"..type..".png",
            icon_size = 64,
        },
        {
            icon = "__Random_Utilities__/graphics/item/"..type.."-mask.png",
            icon_size = 64,
            tint = tint,
        },
    }

    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local count = 0
    local converter = {
        ["transport-belt"] = 1,
        ["underground-belt"] = 2,
        ["splitter"] = 3,
    }
    count = count+ converter(type)

    item.subgroup = "ru-logistics-"..string.sub(suffix.."-"..type, 1, 3)
    item.order = string.sub(letters, tier).."["..type.."-mk"..tostring(tier).."]-"..tostring(count).."["..name.."]"
    item.place_result = name
    data:extend{item}
end

local function create_logistics_recipe(suffix, type, tier, ing)
    local name = "ru-" .. suffix .. "-" .. type

    local to_add = {
        ((tier>1) and {"ru-mk" .. tier-1 .. "-" .. type, 1} or nil),
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

--da finite/rifare
local function create_logistics_entity(suffix, type, tint, tier)
    local name = "ru-" .. suffix .. "-" .. type

    local entity = util.table.deepcopy(data.raw.inserter["ru-dummy-logistic-entity"])
    entity.name = name
    entity.icon = nil
    entity.icons = {
        {
            icon = "__Random_Utilities__/graphics/item/"..type..".png",
            icon_size = 64,
        },
        {
            icon = "__Random_Utilities__/graphics/item/"..type.."-mask.png",
            icon_size = 64,
            tint = tint,
        },
    }

    --generics
    entity.minable = { mining_time = 0.1, result = name }
    entity.max_health = 320*tier
    entity.corpse = type.."-remnants"
    entity.dying_explosion = type.."-explosion"

    --speed
    entity.extension_speed = 0.1*(tier*(tier+1))
    entity.rotation_speed = 0.05*(tier*(tier+1))

    --graphics

    data:extend{entity}
end

local function create_logistics_techonolgy(suffix, tier, tint, technology)
    local name = "ru-" .. suffix .. "-logistic-technology"
    local tech = util.table.deepcopy(data.raw.technology["ru-dummy-logistic-tech"])
    tech.name = name
    tech.icons = {
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

    local to_add = {
        ((tier>1) and "ru-mk" .. tier-1 .. "-logistic-technology" or nil),
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
            recipe = "ru-" .. suffix .. "-belt"
        },
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. "-underground-belt"
        },
        {
            type = "unlock-recipe",
            recipe = "ru-" .. suffix .. "-long" .. "-splitter"
        },
    }

    data:extend{tech}
end

local function create_logistics(suffix, temp)
    local suffixs = {
        "transport-belt",
        "underground_belt",
        "splitter",
    }

    for _, x in pairs(suffixs) do
        create_logistics_entity(suffix, x, temp.tint, temp.tier)
        create_logistics_item(suffix, x, temp.tint, temp.tier)
        create_logistics_recipe(suffix, x, temp.tier, temp.ingredients)
    end
    create_logistics_techonolgy(suffix, temp.tier, temp.tint, temp.technology)
end

return {
    create_logistics = create_logistics
}