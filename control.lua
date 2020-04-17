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
        {"transport-belt", 200},
        {"inserter", 50},
        {"splitter", 20},
        {"underground-belt", 20},
        {"lab", 1},
        {"steam-engine", 20},
        {"boiler", 10},
        {"offshore-pump", 1},
        {"burner-mining-drill", 5},
        {"stone-furnace", 5},
        {"coal", 50}
      }
    elseif settings.startup["ru-quick-start"].value == "Medium amount" then
      atStart["items"] = {
        {"transport-belt", 500},
        {"inserter", 150},
        {"splitter", 50},
        {"underground-belt", 50},
        {"small-electric-pole", 50},
        {"electric-mining-drill", 20},
        {"lab", 1},
        {"steam-engine", 20},
        {"boiler", 10},
        {"offshore-pump", 1},
        {"stone-furnace", 10},
        {"coal", 100},
        {"copper-plate", 100},
        {"iron-plate", 100},
        {"steel-plate", 50}
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
        player.clean_cursor()
        player.cursor_stack.set_stack({ name = wire_type, count = 200 })
    else
        player.print({ "message.no-map-mode" })
    end
end

function give_copper(player_index)
    local player = game.players[player_index]
    if player.render_mode == defines.render_mode.game then
        player.clean_cursor()
        local inv = game.players[player_index].get_main_inventory()
        if inv and inv.valid then
            local wire = inv.find_item_stack("copper-cable")
            if wire then
                player.cursor_stack.swap_stack(wire)
            else
                player.cursor_stack.set_stack({ name = "copper-cable", count = 1 })
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

local function remove_wire(event)
    local inv = game.players[event.player_index].get_main_inventory()
    if inv and inv.valid then
        inv.remove("red-wire")
        inv.remove("green-wire")
    end
end

script.on_event(defines.events.on_lua_shortcut, handle_shortcut)
script.on_event(defines.events.on_player_main_inventory_changed, remove_wire)

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
