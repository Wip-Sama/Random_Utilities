local ciao = {
    {"ciao1",3}
}

local to_add = {
    {"ciao1",1},
    {type="fluid", "ciao1", 5},
    {type="fluid", "ciao2", 2},
    {type="item", "ciao2", 2},
    {type="fluid", "ciao2", 4},
    {"ciao3",6}
}

local function tablelength(list)
    local count = 0
    for _ in pairs(list) do
        count = count + 1 end
    return count
end

local function IsNumber(value)
    return tonumber(value) and true or false
end

local function value_exist(list, value)
    for x, y in pairs(list) do
        if y.type == value.type and y.name == value.name then
            return {true, y, x}
        end
    end
    return {false}
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

local function merge_ingredients(presents, to_add)
    local original = presents
    local adding = to_add

    for x, _ in pairs(original) do
        original[x] = validate_recipe_entry(original[x])
    end

    for _, y in pairs(adding) do
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

ciao = merge_ingredients(ciao, to_add)
for x,y in pairs(ciao) do
    print(y.type, y.name, y.amount)
end