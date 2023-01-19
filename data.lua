require("lib.item-goups")
local templates = require("prototypes.templates")
local inserter = require("prototypes.inserters")
local logistic = require("prototypes.logistics")
local infinite_tech = require("prototypes.infinite_techs")
local util = require("util.logic_operations")

local function generate_subgroup(tb, name)
    for y, x in pairs(tb) do
        local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        data:extend{
            {
                type = "item-subgroup",
                name = "ru-"..name.."-"..y,
                group = "ru",
                order = string.sub(letters, x.tier)
            }
        }
    end
end

generate_subgroup(templates.inserter_templates, "inserters")
for y, x in pairs(templates.inserter_templates) do
    inserter.create_inserters(y, x)
end

generate_subgroup(templates.logistic_templates, "logistics")
for y, x in pairs(templates.logistic_templates) do
    x.objects = util.tablelength(templates.logistic_templates)
    logistic.create_logistics(y, x)
end

for _, x in pairs(templates.infinite_techs_templates.bot_battery) do
    if x ~= templates.infinite_techs_templates.bot_battery.effects then
        infinite_tech.create_tech(x, templates.infinite_techs_templates.bot_battery.effects)
    end
end

for _, x in pairs(templates.infinite_techs_templates.bot_storage) do
    if x ~= templates.infinite_techs_templates.bot_storage.effects then
        infinite_tech.create_tech(x, templates.infinite_techs_templates.bot_storage.effects)
    end
end

for _, x in pairs(templates.infinite_techs_templates.inserter_capacity) do
    if x ~= templates.infinite_techs_templates.inserter_capacity.effects then
        infinite_tech.create_tech(x, templates.infinite_techs_templates.inserter_capacity.effects)
    end
end