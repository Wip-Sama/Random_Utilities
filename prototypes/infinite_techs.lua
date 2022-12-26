data:extend({
    {
        type = "technology",
        name = "ru-dummy-worker-robot-battery",
        icon = "__base__/graphics/technology/worker-robots-storage.png",
        icon_size = 256, icon_mipmaps = 4,
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.1
            }
        },
        prerequisites = {"robotics"},
        unit = {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        upgrade = true,
        max_level = "3",
        order = "c-k-h-e"
    }
})

local function create_stepped_technology(name, ingredients, prerequisites, max_level, formula, effects)
    local tech = util.table.deepcopy(data.raw.technology["ru-dummy-worker-robot-battery"])
    tech.name = name
    tech.icon = nil
    tech.icons = {
            {
                icon = "__base__/graphics/technology/worker-robots-storage.png",
                icon_size = 256,
                icon_mipmaps = 4
            },
            {
                icon = "__core__/graphics/icons/technology/constants/constant-battery.png",
                icon_size = 128,
                icon_mipmaps = 3,
                shift = {100, 100}
            }
        }
    tech.hidden = false
    tech.prerequisites = prerequisites
    tech.max_level = max_level
    tech.unit = {
        time = 60,
        count_formula = formula,
        ingredients = ingredients
    }
    tech.effects = effects

    data:extend{tech}
end

local function create_tech(step, effects)
    create_stepped_technology(step.name, step.ingredients, step.prerequisites, step.max_level, step.formula, effects)
end

return {
    create_tech = create_tech
}