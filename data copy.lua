local ru_more_miniloaders = {}

local function convert_belt_speed(speed)
    return math.floor(speed * 480 * 100 + 0.5) / 100
end

local function tint_sprites(sheets, tint)
    for _, sheet in ipairs(sheets) do
        if sheet.tint then
            sheet.tint = tint
            sheet.hr_version.tint = tint
        end
    end
end

local function get_recipe_multiplier()
    if settings.startup["miniloader-double-recipes"].value then return 2 else return 1 end
end

local function create_miniloader_prototypes(miniloader_def, miniloader_type, ingredients, order)
    local tint = util.color(miniloader_def.color)
    local underground_belt = nil
    
    if miniloader_def.underground_belt then
        underground_belt = data.raw["underground-belt"][miniloader_def.underground_belt]
    else
        underground_belt = data.raw["underground-belt"][miniloader_def.name .. "-underground-belt"]
    end
    
    local miniloader_name = miniloader_def.name .. "-" .. miniloader_type
    
    local miniloader = table.deepcopy(data.raw["loader-1x1"][miniloader_type .. "-loader"])
    miniloader.name = miniloader_name .. "-loader"
    miniloader.localised_name = {"entity-name." .. miniloader_name}
    miniloader.animation_speed_coefficient = underground_belt.animation_speed_coefficient
    miniloader.speed = underground_belt.speed
    tint_sprites(miniloader.structure.direction_in.sheets, tint)
    tint_sprites(miniloader.structure.direction_out.sheets, tint)
    tint_sprites(miniloader.structure.back_patch.sheets, tint)
    tint_sprites(miniloader.structure.front_patch.sheets, tint)
    miniloader.belt_animation_set = table.deepcopy(underground_belt.belt_animation_set)
    
    local inserter = table.deepcopy(data.raw["inserter"][miniloader_type .. "-inserter"])
    inserter.name = miniloader_name .. "-inserter"
    inserter.localised_name = {"entity-name." .. miniloader_name}
    inserter.icons[2].tint = tint
    inserter.minable.result = miniloader_name
    inserter.localised_description[5] = convert_belt_speed(underground_belt.speed)
    if miniloader_def.next_upgrade then
        if miniloader_def.next_upgrade == "" then
            inserter.next_upgrade = miniloader_type .. "-inserter"
        else
            inserter.next_upgrade = miniloader_def.next_upgrade .. "-" .. miniloader_type .. "-inserter"
        end
    else
        inserter.next_upgrade = nil
    end
    tint_sprites(inserter.platform_picture.sheets)
    
    local item = table.deepcopy(data.raw["item"][miniloader_type])
    item.name = miniloader_name
    item.localised_name = {"entity-name." .. miniloader_name}
    item.place_result = miniloader_name .. "-inserter"
    item.icons[2].tint = tint
    if miniloader_def.underground_belt then
        item.order = data.raw["item"][miniloader_def.underground_belt].order:gsub("^b%[underground%-belt%]", order)
    else
        item.order = data.raw["item"][miniloader_def.name .. "-underground-belt"].order:gsub("^b%[underground%-belt%]", order)
    end
    
    local recipe_multiplier = get_recipe_multiplier()
    
    local recipe = {
        type = "recipe",
        name = miniloader_name,
        --hidden = true,
        enabled = false,
        energy_required = 1,
        ingredients = {},
        result = miniloader_name,
        result_count = recipe_multiplier
    }
    
    for _, ingredient in ipairs(ingredients) do
        table.insert(recipe.ingredients, {ingredient[1], ingredient[2] * recipe_multiplier})
    end
    
    data:extend({miniloader, inserter, item, recipe})
    
    return {loader = miniloader, inserter = inserter, item = item, recipe = recipe}
end

function ru_more_miniloaders.create_miniloader(miniloader_def)
    local prototypes = {}
    
    prototypes.normal = create_miniloader_prototypes(miniloader_def, "miniloader", miniloader_def.ingredients, "e[miniloader]")
    if miniloader_def.filter_ingredients then
        prototypes.filter = create_miniloader_prototypes(miniloader_def, "filter-miniloader", miniloader_def.filter_ingredients, "f[filter-miniloader]")
    end
    
    local main_tech_prereq = data.raw["technology"][miniloader_def.tech_prereq[1]]
    
    local technology = {
        type = "technology",
        name = miniloader_def.name .. "-miniloader",
        icons = table.deepcopy(data.raw["technology"]["miniloader"].icons),
        effects = {
            {type = "unlock-recipe", recipe = miniloader_def.name .. "-miniloader"}
        },
        prerequisites = miniloader_def.tech_prereq,
        unit = table.deepcopy(main_tech_prereq.unit),
        order = main_tech_prereq.order
    }
    
    technology.icons[2].tint = util.color(miniloader_def.color)
    if miniloader_def.filter_ingredients then
        table.insert(technology.effects, {type = "unlock-recipe", recipe = miniloader_def.name .. "-filter-miniloader"})
    end
    
    prototypes.technology = technology
    
    data:extend({technology})
    
    return prototypes
end

local function set_recipe_ingredients(miniloader_name, miniloader_type, ingredients)
    local recipe = data.raw["recipe"][miniloader_name .. "-" .. miniloader_type]
    local recipe_multiplier = get_recipe_multiplier()
    recipe.ingredients = {}
    for _, ingredient in ipairs(ingredients) do
        table.insert(recipe.ingredients, {ingredient[1], ingredient[2] * recipe_multiplier})
    end
end

function ru_more_miniloaders.modify_miniloader(miniloader_def)
    if miniloader_def.ingredients then
        set_recipe_ingredients(miniloader_def.name, "miniloader", miniloader_def.ingredients)
    end
    if miniloader_def.filter_ingredients then
        set_recipe_ingredients(miniloader_def.name, "filter-miniloader", miniloader_def.filter_ingredients)
    end
    if miniloader_def.tech_prereq then
        local tech = data.raw["technology"][miniloader_def.name .. "-miniloader"]
        tech.prerequisites = miniloader_def.tech_prereq
        tech.unit = table.deepcopy(data.raw["technology"][miniloader_def.tech_prereq[1]].unit)
    end
    if miniloader_def.next_upgrade then
        data.raw["inserter"][miniloader_def.name .. "-miniloader-inserter"].next_upgrade = miniloader_def.next_upgrade .. "-miniloader-inserter"
        local filter = data.raw["inserter"][miniloader_def.name .. "-filter-miniloader-inserter"]
        if filter then filter.next_upgrade = miniloader_def.next_upgrade .. "-filter-miniloader-inserter" end
    end
    if miniloader_def.fix_speed then
        local speed = data.raw["underground-belt"][miniloader_def.name .. "-underground-belt"].speed
        data.raw["loader-1x1"][miniloader_def.name .. "-miniloader-loader"].speed = speed
        local filter = data.raw["loader-1x1"][miniloader_def.name .. "-filter-miniloader-loader"]
        if filter then filter.speed = speed end
    end
    if miniloader_def.fix_description then
        local speed = convert_belt_speed(data.raw["underground-belt"][miniloader_def.name .. "-underground-belt"].speed)
        data.raw["inserter"][miniloader_def.name .. "-miniloader-inserter"].localised_description[5] = speed
        local filter = data.raw["inserter"][miniloader_def.name .. "-filter-miniloader-inserter"]
        if filter then filter.localised_description[5] = speed end
    end
end 

return ru_more_miniloaders
