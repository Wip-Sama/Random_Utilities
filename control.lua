
-- Quick Start
local kits = {}
local kitsEquip = {}

kits["Nothing"] = {}
kits["Nothing"]["items"] = {}
kits["Nothing"]["quickbar"] = {}

kits["Basic"] = {}
kits["Basic"]["items"] = {
	["iron-plate"] = 100,--changed
	["copper-plate"] = 100,--changed
	["transport-belt"] = 250,
	["inserter"] = 55,
	["splitter"] = 25,--changed
	["underground-belt"] = 26,--changed
	["lab"] = 2,
	["steam-engine"] = 20,
	["boiler"] = 10,
	["offshore-pump"] = 2,
	["burner-mining-drill"] = 10,--changed
	["stone-furnace"] = 10,--changed
	["coal"] = 100,
}

kits["Basic"]["quickbar"] = {
	{1, "transport-belt"},
	{2, "underground-belt"},
	{3, "splitter"},
	{4, "inserter"},
	{5, "medium-electric-pole"},
  	{6, "burner-mining-drill"},
  	{7, "stone-furnace"},
	{10, "car"}
}

	
kits["Medium"] = {}
kits["Medium"]["items"] = {
	["transport-belt"] = 500,
	["inserter"] = 150,--changed
	["splitter"] = 50,
	["underground-belt"] = 50,
	["small-electric-pole"] = 50,
	["electric-mining-drill"] = 20,
	["lab"] = 2,
	["steam-engine"] = 20,
	["boiler"] = 10,
	["offshore-pump"] = 2,
	["stone-furnace"] = 20,--changed
	["coal"] = 200,--changed
	["copper-plate"] = 200,--changed
	["iron-plate"] = 200,--changed
	["steel-plate"] = 100,--changed
	["pipe"] = 50,--changed
	["iron-gear-wheel"] = 100,--changed
	["electronic-circuit"] = 100,--changed
	["assembling-machine-1"] = 10,--changed
	["long-handed-inserter"] = 50,--changed
	["car"] = 1,--changed
}

kits["Medium"]["quickbar"] = {
	{1, "transport-belt"},
	{2, "underground-belt"},
	{3, "splitter"},
	{4, "inserter"},
	{5, "medium-electric-pole"},
    {6, "electric-mining-drill"},
    {7, "stone-furnace"},
	{10, "car"}
}


kits["Big"] = {}
kits["Big"]["items"] = {
	["car"] = 1,--changed
	["transport-belt"] = 1000,
	["inserter"] = 300,
	["splitter"] = 100,
	["underground-belt"] = 100,
	["medium-electric-pole"] = 100,
	["big-electric-pole"] = 50,
	["rail"] = 1000,
	["locomotive"] = 5,
	["cargo-wagon"] = 10,
	["fluid-wagon"] = 10,
	["electric-mining-drill"] = 150,
	["lab"] = 10,--changed
	["steam-engine"] = 60,--changed
	["boiler"] = 30,--changed
	["offshore-pump"] = 10,--changed
	["steel-furnace"] = 100,
	["coal"] = 400,--changed
	["copper-plate"] = 400,--changed
	["iron-plate"] = 400,--changed
	["steel-plate"] = 200,--changed
	["pipe"] = 100,--changed
	["iron-gear-wheel"] = 200,--changed
	["electronic-circuit"] = 200,--changed
	["assembling-machine-1"] = 20,--changed
	["long-handed-inserter"] = 100,--changed
}

kits["Big"]["quickbar"] = {
	{1, "transport-belt"},
	{2, "underground-belt"},
	{3, "splitter"},
	{4, "inserter"},
	{5, "medium-electric-pole"},
	{6, "electric-mining-drill"},
	{7, "steel-furnace"},
	{10, "car"}
}
--[[
kits["Big"]["technologies"] = {
	{"automation"},
	{"steel-processing"},
	{"automation-2"},
	{"oil-processing"},
	{"plastics"},
	{"advanced-electronics"},
	{"sulfur-processing"},
	{"battery"},
	{"electronics"},
	{"engine"},
	{"electric-engine"},
	{"logistic-science-pack"},
	{"fluid-handling"},
	{"lubricant"},
	{"robotics"},
	{"logistic-robotics"},
	{"construction-robotics"},
	{"utility-science-pack"},
	{"chemical-science-pack"},
	{"advanced-electronics-2"},
	{"low-density-structure"},
	{"advanced-material-processing"},
	{"logistic-system"}
}
--]]
kits["Huge"] = {}
kits["Huge"]["items"] = {
	["car"] = 1,--changed
	["pipe"] = 200,--changed
	["iron-gear-wheel"] = 200,--changed
	["electronic-circuit"] = 200,--changed
	["assembling-machine-1"] = 20,--changed
	["long-handed-inserter"] = 100,--changed
	["transport-belt"] = 1500,--changed
	["inserter"] = 500,--changed
	["splitter"] = 200,--changed
	["underground-belt"] = 200,
	["medium-electric-pole"] = 200,--changed
	["big-electric-pole"] = 100,--changed
	["rail"] = 1500,--changed
	["locomotive"] = 10,--changed
	["cargo-wagon"] = 20,--changed
	["fluid-wagon"] = 20,--changed
	["electric-mining-drill"] = 200,--changed
	["roboport"] = 10,
	["logistic-chest-passive-provider"] = 50,
	["logistic-chest-active-provider"] = 50,
	["logistic-chest-storage"] = 50,
	["logistic-chest-buffer"] = 50,
	["logistic-chest-requester"] = 50,
	["construction-robot"] = 150,
	["logistic-robot"] = 150,
	["lab"] = 20,--changed
	["steam-engine"] = 80,--changed
	["boiler"] = 40,--changed
	["offshore-pump"] = 20,--changed
	["steel-furnace"] = 200,--changed
	["coal"] = 500,--changed
	["copper-plate"] = 800,--changed
	["iron-plate"] = 800,--changed
	["steel-plate"] = 400,--changed
}

kits["Huge"]["quickbar"] = {
	{1, "transport-belt"},
	{2, "underground-belt"},
	{3, "splitter"},
	{4, "inserter"},
	{5, "medium-electric-pole"},
	{6, "electric-mining-drill"},
	{7, "steel-furnace"},
	{10, "car"}
}
kits["Behemoth"] = {}
kits["Behemoth"]["items"] = {
	["advanced-circuit"] = 200,
	["assembling-machine-2"] = 100,
	["steel-chest"] = 50,
	["logistic-chest-requester"] =  100,
	["logistic-chest-passive-provider"] =  100,
	["pipe-to-ground"] = 100,
	["chemical-plant"] = 20,
	["oil-refinery"] = 10,
	["roboport"] = 20,
	["logistic-robot"] = 200,
	["car"] = 1,
	["transport-belt"] = 2000,
	["inserter"] = 800,
	["splitter"] = 300,
	["underground-belt"] = 400,
	["medium-electric-pole"] = 400,
	["big-electric-pole"] = 200,
	["rail"] = 2000,
	["locomotive"] = 20,
	["cargo-wagon"] = 40,
	["fluid-wagon"] = 40,
	["electric-mining-drill"] = 300,
	["lab"] = 20,
	["steam-engine"] = 60,
	["boiler"] = 30,
	["offshore-pump"] = 10,
	["steel-furnace"] = 100,
	["coal"] = 1000,
	["copper-plate"] = 1000,
	["iron-plate"] = 1000,
	["steel-plate"] = 500,
	["pipe"] = 400,
	["iron-gear-wheel"] = 400,
	["electronic-circuit"] = 400,
	["assembling-machine-1"] = 20,
	["long-handed-inserter"] = 100,
}

kits["Behemoth"]["quickbar"] = {
	{1, "transport-belt"},
	{2, "underground-belt"},
	{3, "splitter"},
	{4, "inserter"},
	{5, "medium-electric-pole"},
	{6, "electric-mining-drill"},
	{7, "steel-furnace"},
	{10, "car"}
}

kitsEquip["Nothing"] = {}
kitsEquip["Nothing"]["items"] = {}

kitsEquip["Modular armor"] = {}
kitsEquip["Modular armor"]["items"] = {
	["solar-panel-equipment"] = 15,
	["battery-equipment"] = 1,
	["personal-roboport-equipment"] = 2,
	["modular-armor"] = 1,
	["construction-robot"] = 20,
}
kitsEquip["Power armor"] = {}
kitsEquip["Power armor"]["items"] = {
	["fusion-reactor-equipment"] = 1,
	["battery-equipment"] = 3,
	["personal-roboport-equipment"] = 5,
	["power-armor"] = 1,
	["construction-robot"] = 50,
}
kitsEquip["Power armor MK2"] = {}
kitsEquip["Power armor MK2"]["items"] = {
	["fusion-reactor-equipment"] = 2,
	["battery-equipment"] = 4,
	["exoskeleton-equipment"] = 2,
	["personal-roboport-equipment"] = 11,
	["power-armor-mk2"] = 1,
	["construction-robot"] = 110,
}
kitsEquip["Power armor MK3"] = {}
kitsEquip["Power armor MK3"]["items"] = {
	["fusion-reactor-equipment"] = 4,
	["battery-equipment"] = 6,
	["exoskeleton-equipment"] = 3,
	["personal-roboport-equipment"] = 14,
	["power-armor-mk3"] = 1,
	["construction-robot"] = 160,
}
kitsEquip["Power armor MK4"] = {}
kitsEquip["Power armor MK4"]["items"] = {
	["fusion-reactor-equipment"] = 10,
	["battery-equipment"] = 10,
	["exoskeleton-equipment"] = 6,
	["personal-roboport-equipment"] = 18,
	["power-armor-mk4"] = 1,
	["construction-robot"] = 220,
}


local Spidetron = {
	["spidertron"] = 1,
	["spidertron-remote"] = 1,
	["construction-robot"] = 200,
	["fusion-reactor-equipment"] = 1,
	["personal-roboport-equipment"] = 5,
	["battery-equipment"] = 3,
}

local TrainTech = {
	{"automation"},
	{"automation-2"},
	{"logistics"},
	{"logistics-2"},
	{"steel-processing"},
	{"engine"},
	{"railway"},
	{"automated-rail-transportation"},
	{"rail-signals"},
	{"fluid-wagon"}
}

local RobotTech = {
	{"oil-processing"},
	{"plastics"},
	{"advanced-electronics"},
	{"sulfur-processing"},
	{"battery"},
	{"electronics"},
	{"engine"},
	{"electric-engine"},
	{"robotics"},
	{"logistic-robotics"},
	{"construction-robotics"},
	{"logistic-system"}
}


function on_init()
	if not remote.interfaces["freeplay"] then return end

	local kitSetting = settings.startup["ru-quick-start"].value
	local kit = kits[kitSetting]
	if kit == nil then
		kit = kits["Nothing"]
	end

	local kitSettingEquip = settings.startup["ru-armor-quick-start"].value
	local kitEquip = kitsEquip[kitSettingEquip]
	if kitEquip == nil then
		kitEquip = kitsEquip["Nothing"]
	end

	-- Add items
	local created_items = remote.call("freeplay", "get_created_items")
	for k,v in pairs(kit["items"]) do
		created_items[k] = (created_items[k] or 0) + v
	end

	--Add equip
	for k,v in pairs(kitEquip["items"]) do
		created_items[k] = (created_items[k] or 0) + v
	end

	-- If spidertron is selected, add more items for it
	if settings.startup["ru-quick-start-spidetron"].value == true then
		for k,v in pairs(Spidetron) do
			created_items[k] = (created_items[k] or 0) + v
		end	
	end

	remote.call("freeplay", "set_created_items", created_items)

end

function on_player_created(event)
	if not remote.interfaces["freeplay"] then return end

	local kitSetting = settings.startup["ru-quick-start"].value
	local kit = kits[kitSetting]
	if kit == nil then
		kit = kits["Nothing"]
	end

	local kitSettingEquip = settings.startup["ru-armor-quick-start"].value
	local kitEquip = kitsEquip[kitSettingEquip]
	if kitEquip == nil then
		kitEquip = kitsEquip["Nothing"]
	end

	local player = game.players[event.player_index]
	-- Unlock technologies
	--if kitTech["technologies"] ~= nil then
	--	for k,v in pairs(kitTech["technologies"]) do
	--		player.force.technologies[v[1]].researched = true
	--	end
	--end

	-- Unlock Train technologies
	if settings.startup["ru-train-technology"].value == true then
		for k,v in pairs(TrainTech) do
			player.force.technologies[v[1]].researched = true
		end
	end

	-- Unlock Robot technologies
	if settings.startup["ru-robot-technology"].value == true then
		for k,v in pairs(RobotTech) do
			player.force.technologies[v[1]].researched = true
		end
	end

	-- Setup quickbar favorites
	for k,v in pairs(kit["quickbar"]) do
		player.set_quick_bar_slot(v[1], v[2])
	end
end

script.on_init(on_init)
script.on_event(defines.events.on_player_created, on_player_created)

--Wire Shortcuts
function handle_shortcut(event)
    if event.prototype_name == "WireShortcuts-give-red" then
        give_wire(event.player_index, "red-wire")
    elseif event.prototype_name == "WireShortcuts-give-green" then
        give_wire(event.player_index, "green-wire")
    elseif event.prototype_name == "WireShortcuts-give-copper" then
        give_copper(event.player_index)
    end
end

function give_wire(player_index, wire_type)
    local player = game.players[player_index]
    if player.render_mode == defines.render_mode.game then
        if clear_cursor_discard_wire(player) then
            player.cursor_stack.set_stack({ name = wire_type, count = 200 })
        else
            player.print({ "message.cannot-clean-cursor" })
        end
    else
        player.print({ "message.no-map-mode" })
    end
end

function give_copper(player_index)
    local player = game.players[player_index]
    if player.render_mode == defines.render_mode.game then

        local inv = game.players[player_index].get_main_inventory()
        if inv and inv.valid then
            local wire = inv.find_item_stack("copper-cable")
            if wire then
                player.cursor_stack.swap_stack(wire)
            elseif clear_cursor_discard_wire(player) then
                player.cursor_stack.set_stack({ name = "copper-cable", count = 1 })
            else
                player.print({ "message.cannot-clean-cursor" })
            end
        end
    else
        player.print({ "message.no-map-mode" })
    end
end

function switch_wire(player_index)
    local player = game.players[player_index]
    if player.render_mode == defines.render_mode.game then
        if player.cursor_stack.valid_for_read then
            if player.cursor_stack.name == "red-wire" then
                give_wire(player_index, "green-wire")
            elseif player.cursor_stack.name == "green-wire" then
                give_wire(player_index, "red-wire")
            end
        end
    else
        player.print({ "message.no-map-mode" })
    end
end

function clear_cursor_discard_wire(player)
    if player.cursor_stack.valid_for_read then
        return (player.cursor_stack.name == "red-wire" or player.cursor_stack.name == "green-wire" or player.clean_cursor())
    else
        return player.clean_cursor()
    end
end

local function remove_wire_inventory(event)
    local inv = game.players[event.player_index].get_main_inventory()
    if inv and inv.valid then
        inv.remove("red-wire")
        inv.remove("green-wire")
    end
end

local function remove_wire_trash(event)
    local inv_trash = game.players[event.player_index].get_inventory(defines.inventory.character_trash)
    if inv_trash and inv_trash.valid then
        inv_trash.remove("red-wire")
        inv_trash.remove("green-wire")
    end
end

local function remove_wire_ground(event)
    local item_on_ground = event.entity
    if item_on_ground and item_on_ground.valid and item_on_ground.stack then
        local item_name = item_on_ground.stack.name
        if item_name == "red-wire" or item_name == "green-wire" then
            item_on_ground.destroy()
        end
    end
end

script.on_event(defines.events.on_lua_shortcut, handle_shortcut)
script.on_event(defines.events.on_player_main_inventory_changed, remove_wire_inventory)
script.on_event(defines.events.on_player_trash_inventory_changed, remove_wire_trash)
script.on_event(defines.events.on_player_dropped_item, remove_wire_ground)

script.on_event("WireShortcuts-give-red", function(event)
    give_wire(event.player_index, "red-wire")
end)

script.on_event("WireShortcuts-give-green", function(event)
    give_wire(event.player_index, "green-wire")
end)

script.on_event("WireShortcuts-give-copper", function(event)
    give_copper(event.player_index)
end)

script.on_event("WireShortcuts-switch-wire", function(event)
    switch_wire(event.player_index)
end)

--miniloader
script.on_configuration_changed(function(data)
    for _, force in pairs(game.forces) do
        local recipes = force.recipes
                               
        if recipes["chute-miniloader"] then
            recipes["chute-miniloader"].enabled = false
        end
    end
end)