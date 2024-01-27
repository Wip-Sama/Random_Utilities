local templates = require("prototypes.templates")

local inserter_tiers = { "None" }
for y, _ in pairs(templates.inserter_templates) do
    table.insert(inserter_tiers, y)
end

local logistic_tiers = { "None" }
for y, _ in pairs(templates.logistic_templates) do
    table.insert(logistic_tiers, y)
end

local player_settings = {
    {
        type = "int-setting",
        name = "ru-reach-distance",
        setting_type = "startup",
        default_value = 6,
        minimum_value = 1,
        maximum_value = 100000
    },
    {
        type = "int-setting",
        name = "ru-mine-reach",
        setting_type = "startup",
        default_value = 6,
        minimum_value = 1,
        maximum_value = 100000
    },
    {
        type = "double-setting",
        name = "ru-mining-speed",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.01,
        maximum_value = 1000
    },
    {
        type = "double-setting",
        name = "ru-running-speed",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.01,
        maximum_value = 1000
    },
    {
        type = "int-setting",
        name = "ru-hp",
        setting_type = "startup",
        default_value = 250,
        minimum_value = 1,
        maximum_value = 250000
    },
    {
        type = "double-setting",
        name = "ru-hp-recovery",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.01,
        maximum_value = 1000
    },
    {
        type = "int-setting",
        name = "ru-inventory-size",
        setting_type = "startup",
        default_value = 80,
        minimum_value = 20,
        maximum_value = 2000
    }
}

local entity_settings = {
    {
        type = "string-setting",
        name = "ru-inserters-tiers",
        setting_type = "startup",
        default_value = inserter_tiers[1],
        allowed_values = inserter_tiers
    },
    mods["Smart_Inserters"] and {
        type = "bool-setting",
        name = "ru-disable-long-inserters",
        setting_type = "startup",
        default_value = true,
    } or nil,
    {
        type = "string-setting",
        name = "ru-logistics-tiers",
        setting_type = "startup",
        default_value = logistic_tiers[1],
        allowed_values = logistic_tiers
    }
}

local game_settings = {
    -- beacon Productivity
    {
        type = "bool-setting",
        name = "ru-beacon-productivity",
        setting_type = "startup",
        default_value = "false"
    },
    -- beacon Productivity
    {
        type = "bool-setting",
        name = "ru-disable-productivity-limitation",
        setting_type = "startup",
        default_value = "false"
    },
}

local ui_changes = {
    mods["DeadlockBlackRubberBelts"] and {
        type = "bool-setting",
        name = "ru-black-rubber-belts",
        setting_type = "startup",
        default_value = true
    } or nil
}

local joint_tables = {}

for index, item in pairs(player_settings) do
    local to_add = item
    to_add.order = "a" .. tostring(index - 1)
    table.insert(joint_tables, to_add)
end

for index, item in pairs(entity_settings) do
    local to_add = item
    to_add.order = "b" .. tostring(index - 1)
    table.insert(joint_tables, to_add)
end

for index, item in pairs(game_settings) do
    local to_add = item
    to_add.order = "c" .. tostring(index - 1)
    table.insert(joint_tables, to_add)
end

for index, item in pairs(ui_changes) do
    local to_add = item
    to_add.order = "d" .. tostring(index - 1)
    table.insert(joint_tables, to_add)
end

data:extend(joint_tables)
