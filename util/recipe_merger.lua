local function tablelength(list)
    local count = 0
    if list == nil then
        return 0
    end
    for _ in pairs(list) do
        count = count + 1
    end
    return count
end

local function IsNumber(value)
    return tonumber(value) and true or false
end

local function value_exist(list, value)
    for x, y in pairs(list) do
        if y.type == value.type and y.name == value.name then
            return { true, y, x }
        end
    end
    return { false }
end

local function prerequisite_exist(list, value)
    if tablelength(list) <= 0 then
        return false
    end
    for x, y in pairs(list) do
        if y == value then
            return true
        end
    end
    return false
end

local function validate_recipe_entry(list)
    local list_lenght = tablelength(list)
    if list.type and list.name and list.amount then
        return list
    else
        local tmp = {}

        if list.type then
            tmp.type = list.type
        else
            if list_lenght < 3 then
                tmp.type = "item"
            else
                for x, y in pairs(list) do
                    if y == "fluid" or y == "item" then
                        tmp.type = y
                        table.remove(list, x)
                    end
                end
            end
        end

        local y1_number = IsNumber(list[1])

        if list.name then
            tmp.name = list.name
        else
            tmp.name = y1_number and list[2] or list[1]
        end

        if list.amount then
            tmp.amount = list.amount
        else
            tmp.amount = y1_number and list[1] or list[2]
        end

        return tmp
    end
end

local function merge_ingredients(actual_ingredients, to_add)
    local original = {}

    for _, y in pairs(actual_ingredients or {}) do
        table.insert(original, y)
    end

    for x, _ in pairs(original) do
        print(x)
        original[x] = validate_recipe_entry(original[x])
    end

    for _, y in pairs(to_add) do
        y = validate_recipe_entry(y)

        local z = value_exist(original, y)

        if z[1] then
            if z[2].amount < y.amount then
                table.remove(original, z[3])
                table.insert(original, y)
            end
        else
            table.insert(original, y)
        end
    end

    return original
end

local function merge_prerequisites(actual_prerequisites, to_add)
    local out = {}

    for _, y in pairs(actual_prerequisites or {}) do
        table.insert(out, y)
    end

    for _, y in pairs(to_add) do
        if not prerequisite_exist(out, y) then
            table.insert(out, y)
        end
    end

    return out
end

return {
    merge_ingredients = merge_ingredients,
    merge_prerequisites = merge_prerequisites,
}
