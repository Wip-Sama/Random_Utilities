function setupQsMenu()
    
    qsMenu = {}
--Each one of these is a new frame
qsMenu["Mining"] = {}
qsMenu["Logistics"] = {}
qsMenu["Machines"] = {}
qsMenu["Storage"] = {}
qsMenu["Railway"] = {}
qsMenu["Vehicle"] = {}
qsMenu["Furnace"] = {}
qsMenu["Power"] = {}
qsMenu["Ammu-Nation"] = {}
qsMenu["Equipment"] = {}
qsMenu["Robots"] = {}
qsMenu["Misc-Items"] = {}
end

function str_replace(haystack, needle, thread)
    return string.gsub(haystack, needle, thread)
end

function str_starts(str,prefix)
	if not str or not prefix then return false end
	return string.sub(str,1,string.len(prefix))==prefix
end
  
function str_ends(str,suffix)
	if not str or not suffix then return false end
	return suffix=='' or string.sub(str,-string.len(suffix))==suffix
end

function str_find(str, q)
    return string.find(str, q)
end

function addItemToMenu(cat, item)
    local name = item.name
    if not searchIndex[name] then
        searchIndex[name] = {cat, item.stack_size, item.localised_name}
        table.insert(qsMenu[cat], {name})
    end
end

--build a list of all items in the game, that we wish to include in our menu
function getGameItemList()
    setupQsMenu()
    if not game then return end
    local name, type
    searchIndex = {}

    --Loop all game items
    for _, item_prototype in pairs(game.item_prototypes) do
        name = item_prototype.name
        type = item_prototype.type
        --if item isnt flagged hidden and has a recipe
        if not item_prototype.has_flag("hidden") and game.recipe_prototypes[name] then
            searchIndex[name] = false

            --armor or equipment
            if type == "armor" or item_prototype.place_as_equipment_result then
                addItemToMenu("Equipment", item_prototype)
            end

            --robots
            if str_find(name, "robo")
                or str_find(name, "logistic") and str_find(name, "zone")
            then
                addItemToMenu("Robots", item_prototype)
            end

            --mining
            if str_find(name, "mining") 
                or str_find(name, "pump") and type == "item" 
                or str_find(name, "pipe") 
                or name == "oil_rig" 
                or str_find(name, "water") and str_find(name, "mine") 
            then
                addItemToMenu("Mining", item_prototype)
            end

            --logistics
            if str_find(name, "inserter") 
                or str_find(name, "loader") 
                or str_find(name, "transport") and str_find(name, "belt")
                or str_find(name, "underground") and str_find(name, "belt")
                or str_find(name, "splitter") 
            then
                addItemToMenu("Logistics", item_prototype)
            end

            --storage
            if str_find(name, "chest") 
                or str_find(name, "storage") 
                or str_find(name, "warehouse") 
                or str_find(name, "storehouse")
                or str_find(name, "factory%-building")
                or item_prototype.subgroup.name == "factorissimo2"

            then
                addItemToMenu("Storage", item_prototype)
            end

            --rails
            if str_find(name, "rail")
                or name == "port"
                or str_find(name, "track")
                or str_find(name, "train")
                or str_find(name, "junk")
                or str_find(name, "ltn")
                or str_find(name, "buoy")
                or str_find(name, "boat")
                or str_find(name, "ship")
                or str_find(name, "tanker")
                or name == "water-way"
                or name == "bridge_base"
                or str_find(name, "rail") and str_find(name, "signal")
                or str_find(name, "train") and str_find(name, "stop")
                or str_find(name, "wagon") and str_find(name, "cargo") 
                or str_find(name, "wagon") and str_find(name, "fluid") 
                or str_find(name, "wagon") and str_find(name, "artillery")
                or str_find(name, "locomotive")
            then
                if name ~= "gunship" then
                    addItemToMenu("Railway", item_prototype)
                end
            end

            --cars
            if str_find(name, "car")
                or str_find(name, "tank")
                or str_find(name, "cab")
                or name == "dark"
                or name == "jet"
                or name == "gunship"
                or name == "cargo-plane"
                or name == "flying-fortress"
                or str_find(item_prototype.subgroup.name, "transport")
            then
                if type == "item-with-entity-data" then
                    addItemToMenu("Vehicle", item_prototype)
                end 
            end

            --furnace
            if str_find(name, "furnace") or name == "chemical-boiler" then
                addItemToMenu("Furnace", item_prototype)
            end

            --power
            if  str_find(name, "wind")
                or str_find(name, "electric") and str_find(name, "pole") 
                or str_find(name, "turbine")
                or str_starts(name, "solar")
                or str_find(name, "boiler")
                or str_find(name, "substation")
                or str_find(name, "steam") and str_find(name, "engine")
                or str_find(name, "steam") and str_find(name, "turbine")
                or str_find(name, "heat")
                or str_find(name, "reactor")
                or str_find(name, "accumulator")
                or str_find(item_prototype.subgroup.name, "bob%-energy")
            then
                addItemToMenu("Power", item_prototype)
            end

            --Machines
            if str_find(name, "plant") 
                or str_find(name, "assembling")
                or str_find(name, "refinery")
                or str_find(name, "lab")
                or str_find(name, "distillery")
                or str_find(name, "centrifuge")
                or str_find(name, "electrolyser")
                or str_find(name, "crusher")
                or str_find(name, "electrolyser")
                or str_find(name, "facility")
                or str_find(name, "crack")
                or str_find(name, "facility")
                or str_find(name, "liquifier")
                or str_find(name, "processing") and name ~= "processing-unit"
                or str_find(name, "mixer")
                or str_find(name, "machine") and not str_find(name, "gun")
                or str_find(name, "press")
                or str_find(name, "beacon")
                or str_find(name, "beacon")
                or str_find(name, "silo")
                or str_find(name, "radar")
                or str_find(name, "air") and str_find(name, "filter")
                or str_find(item_prototype.subgroup.name, "refining%-buildings")
                or str_find(item_prototype.subgroup.name, "refinery")
                or str_find(item_prototype.subgroup.name, "ore")
            then
                addItemToMenu("Machines", item_prototype)
            end
            
            --guns and ammo
            if type == "gun" 
                or type == "ammo" 
                or str_find(name, "turret") 
                or str_find(name, "capsule")
                or str_find(name, "explosive")
                or str_find(name, "grenade")
                or str_find(name, "remote")
                or str_find(name, "mine") and str_find(name, "land")
            then
                addItemToMenu("Ammu-Nation", item_prototype)
            end

            addItemToMenu("Misc-Items", item_prototype)
        end --end recipe


        --non craftable items
        if type == "gun" or type == "ammo" then
            addItemToMenu("Ammu-Nation", item_prototype)
        end

        if str_find(name, "science") or str_find(name, "barrel") then
            if not str_find(name, "tagicon") and not str_find(name, "logicarts") then
                addItemToMenu("Misc-Items", item_prototype)
            end
        end
        
        --ore and stone
        if str_find(name, "ore")
            or str_find(name, "stone")
            or str_find(name, "uranium")
            or name == "coal"
            or name == "wood"            
        then
            if not str_find(name, "tagicon") and not str_find(name, "logicarts") then
                addItemToMenu("Mining", item_prototype)
            end
        end
        if not searchIndex[name] and type ~= "mining-tool" then
            addItemToMenu("Misc-Items", item_prototype)
        end
    end
end

function processAllItems(player)
    local frame, amt, insert
    for fName, iData in pairs(qsMenu) do
        frame = getTablePane(getFrame(player, fName), fName)
        --frame = player.gui.top[makeFrameName(fName)]["qsMenu-scroll"]["qsMenu-table-main"]
        for __, item in pairs(iData) do
            amt = frame["qsMenu-amount-" .. item[1]].text
            insert = frame["qsMenu-checkbox-" .. item[1]].state
            --user didnt supply a valid number, just give em a stack
            if insert and not tonumber(amt) then
                amt = game.item_prototypes[item[1]].stack_size
            end
            --insert if we can, exit with message if not
            if insert and player.can_insert{name = item[1], count = amt} then
                player.insert{name = item[1], count = amt}
            else 
                if insert then
                    game.print("player inventory full!")
                    return
                end
            end
        end
    end
end

function message(p, m)
    if p.valid then
    p.print(m)
    end
end