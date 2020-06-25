--Quick Start
script.on_event(
  defines.events.on_player_created,
  function(event)
    local atStart = {}
    atStart["items"] = {}
    atStart["tech"] = {}
    atStart["equip"] = {}
    --Items
    if settings.startup["ru-quick-start"].value == "Small amount" then
      atStart["items"] = {
        {"transport-belt", 250},
        {"inserter", 55},
        {"splitter", 22},
        {"underground-belt", 22},
        {"lab", 2},
        {"steam-engine", 20},
        {"boiler", 10},
        {"offshore-pump", 2},
        {"burner-mining-drill", 6},
        {"stone-furnace", 6},
        {"coal", 100}
      }
    elseif settings.startup["ru-quick-start"].value == "Medium amount" then
      atStart["items"] = {
        {"transport-belt", 500},
        {"inserter", 150},
        {"splitter", 50},
        {"underground-belt", 50},
        {"small-electric-pole", 50},
        {"electric-mining-drill", 20},
        {"lab", 2},
        {"steam-engine", 20},
        {"boiler", 10},
        {"offshore-pump", 2},
        {"stone-furnace", 10},
        {"coal", 100},
        {"copper-plate", 100},
        {"iron-plate", 100},
        {"steel-plate", 75}
      }
    elseif settings.startup["ru-quick-start"].value == "Big amount" then
      atStart["items"] = {
        {"transport-belt", 1000},
        {"inserter", 300},
        {"splitter", 100},
        {"underground-belt", 100},
        {"medium-electric-pole", 100},
        {"big-electric-pole", 50},
        {"rail", 1000},
        {"locomotive", 5},
        {"cargo-wagon", 10},
        {"fluid-wagon", 10},
        {"electric-mining-drill", 150},
        {"lab", 1},
        {"steam-engine", 40},
        {"boiler", 20},
        {"offshore-pump", 2},
        {"steel-furnace", 100},
        {"coal", 100},
        {"copper-plate", 100},
        {"iron-plate", 92},
        {"steel-plate", 100}
      }
    elseif settings.startup["ru-quick-start"].value == "Huge amount" then
      atStart["items"] = {
        {"transport-belt", 1000},
        {"inserter", 300},
        {"splitter", 100},
        {"underground-belt", 100},
        {"medium-electric-pole", 100},
        {"big-electric-pole", 50},
        {"rail", 1000},
        {"locomotive", 5},
        {"cargo-wagon", 10},
        {"fluid-wagon", 10},
        {"electric-mining-drill", 150},
        {"roboport", 10},
        {"logistic-chest-passive-provider", 50},
        {"logistic-chest-active-provider", 50},
        {"logistic-chest-storage", 50},
        {"logistic-chest-buffer", 50},
        {"logistic-chest-requester", 50},
        {"construction-robot", 150},
        {"logistic-robot", 150},
        {"lab", 1},
        {"steam-engine", 40},
        {"boiler", 20},
        {"offshore-pump", 2},
        {"steel-furnace", 100},
        {"coal", 100},
        {"copper-plate", 100},
        {"iron-plate", 92},
        {"steel-plate", 100}
      }
    end
    local player = game.players[event.player_index]
    for _, item in pairs(atStart["items"]) do
      player.insert {name = item[1], count = item[2]}
    end
    atStart["items"] = {}
    --Tecnologies
    if settings.startup["ru-train-technology"].value then
      atStart["tech"] = {
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
    end
    if atStart["tech"] ~= nil then
      for _, tech in pairs(atStart["tech"]) do
        player.force.technologies[tech[1]].researched = true
      end
    end
    atStart["tech"] = {}
    if settings.startup["ru-robot-technology"].value then
      atStart["tech"] = {
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
    end
    if atStart["tech"] ~= nil then
      for _, tech in pairs(atStart["tech"]) do
        player.force.technologies[tech[1]].researched = true
      end
    end
    --Equipment
    if settings.startup["ru-armor-quick-start"].value == "Modular armor" then
      atStart["equip"] = {
        {"solar-panel-equipment", 15},
        {"battery-equipment", 1},
        {"personal-roboport-equipment", 2}
      }
      atStart["items"] = {
        {"modular-armor", 1},
        {"construction-robot", 20},
      }
    elseif settings.startup["ru-armor-quick-start"].value == "Power armor" then
      atStart["equip"] = {
        {"fusion-reactor-equipment", 1},
        {"battery-equipment", 3},
        {"personal-roboport-equipment", 5}
      }
      atStart["items"] = {
        {"power-armor", 1},
        {"construction-robot", 50},
      }
    elseif settings.startup["ru-armor-quick-start"].value == "Power armor MK2" then
      atStart["equip"] = {
        {"fusion-reactor-equipment", 2},
        {"battery-equipment", 4},
        {"exoskeleton-equipment", 2},
        {"personal-roboport-equipment", 11}
      }
      atStart["items"] = {
        {"power-armor-mk2", 1},
        {"construction-robot", 110},
      }
    elseif settings.startup["ru-armor-quick-start"].value == "Power armor MK3" then
      atStart["equip"] = {
        {"fusion-reactor-equipment", 4},
        {"battery-equipment", 6},
        {"exoskeleton-equipment", 3},
        {"personal-roboport-equipment", 14}
      }
      atStart["items"] = {
        {"power-armor-mk3", 1},
        {"construction-robot", 160},
      }
    elseif settings.startup["ru-armor-quick-start"].value == "Power armor MK4" then
      atStart["equip"] = {
        {"fusion-reactor-equipment", 10},
        {"battery-equipment", 10},
        {"exoskeleton-equipment", 6},
        {"personal-roboport-equipment", 18}
      }
      atStart["items"] = {
        {"power-armor-mk4", 1},
        {"construction-robot", 220},
      }
    end
    local player = game.players[event.player_index]
    for _, item in pairs(atStart["items"]) do
      player.insert {name = item[1], count = item[2]}
    end
    local player = game.players[event.player_index]
    for _, equip in pairs(atStart["equip"]) do
      player.insert {name = equip[1], count = equip[2]}
    end
  end
)

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
