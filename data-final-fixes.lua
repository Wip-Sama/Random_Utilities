--setting e mod modifier
require "prototypes.setting-mod-modifier.aai-industry"
require "prototypes.setting-mod-modifier.angel"
require "prototypes.setting-mod-modifier.armor"
require "prototypes.setting-mod-modifier.krastorio2"
require "prototypes.setting-mod-modifier.random-utilities"
require "prototypes.setting-mod-modifier.space-exploration"
require "prototypes.setting-mod-modifier.base"
require "prototypes.setting-mod-modifier.juicy-mods"

if settings.startup[""] then
  if mods["spidertrontiers"] and mods["bobvehicleequipment"] then
    local grid_lists = {
      "spidertron-equipment-grid",
      "spidertron-mk-1-equipment-grid",
      "spidertron-mk0-equipment-grid",
      "spidertron-mk2-equipment-grid",
      "spidertron-mk3-equipment-grid",
      "prototype-spidertron-equipment-grid",
      "assault-spidertron-mk1-equipment-grid",
      "assault-spidertron-mk2-equipment-grid",
      "bulwark-spidertron-mk1-equipment-grid",
      "bulwark-spidertron-mk2-equipment-grid",
      "scout-spidertron-mk1-equipment-grid",
      "scout-spidertron-mk2-equipment-grid",
      "voyage-spidertron-mk1-equipment-grid",
      "voyage-spidertron-mk2-equipment-grid",
    }
  end

  for _, grid in pairs(grid_lists) do
    if not (data.raw["equipment-grid"][grid].equipment_categories == "armor") then
      table.insert(data.raw["equipment-grid"][grid].equipment_categories, "armor")
    end
  end
end

if settings.startup["ru-force-chemical-fuel"].value == true then

  local entity_list = {
    "locomotive",
    "car",
    "inserter",
    "mining-drill",
    "boiler",
    "furnace",
    "reactor",
  }
  --[
  if mods["Krastorio2"] then
    table.insert(entity_list, "generator-equipment")
    table.insert(entity_list, "spider-vehicle")
  end
--]]

  for _, entity in pairs(entity_list) do

    local function ChangeTable(name)

      if data.raw[entity][name] and data.raw[entity][name].burner then
        if data.raw[entity][name].burner.fuel_category then
          data.raw[entity][name].burner.fuel_categories = {data.raw[entity][name].burner.fuel_category, "chemical"}
          data.raw[entity][name].burner.fuel_category = nil
        end

        local fuelissimi1 = {}

        if mods["InfiniteFuel"] then
          table.insert(fuelissimi1, "IF")
        end

        for _, fuels1 in pairs(fuelissimi1) do
          if data.raw[entity][name].burner.fuel_categories then
            table.insert(data.raw[entity][name].burner.fuel_categories, fuels1)
          end
        end
      end

      if data.raw[entity][name] and data.raw[entity][name].energy_source then
        if data.raw[entity][name].energy_source.fuel_category then
          data.raw[entity][name].energy_source.fuel_categories = {data.raw[entity][name].energy_source.fuel_category, "chemical"}
          data.raw[entity][name].energy_source.fuel_category = nil
        end

        local fuelissimi2 = {}

        if mods["InfiniteFuel"] then
          table.insert(fuelissimi2, "IF")
        end

        for _, fuels2 in pairs(fuelissimi2) do
          if data.raw[entity][name].energy_source.fuel_categories then
            table.insert(data.raw[entity][name].energy_source.fuel_categories, fuels2)
          end
        end
      end
    end

    for _, list in pairs(data.raw[entity]) do
      for _, name in pairs(list) do
        ChangeTable(name)
      end
    end

  end
end

--enable beacons productivity (global)
if settings.startup["ru-beacon-Productivity"].value == true then
  if data.raw.beacon.allowed_effects ~= "productivity" then
    for _, beacon in pairs(data.raw.beacon) do
      table.insert(beacon.allowed_effects, "productivity")
    end
  end
end

--disable beacons productivity (global)
if settings.startup["ru-beacon-Productivity"].value == false then
  if data.raw.beacon.allowed_effects == "productivity" then
    for _, beacon in pairs(data.raw.beacon) do
      table.remove(beacon.allowed_effects, "productivity")
    end
  end
end

local entity_list = {
  "module"
}
for _, entity in pairs(entity_list) do
  local function RemoveProductivity(name)
    if data.raw[entity][name] and data.raw[entity][name].limitation then
      if settings.startup["ru-Disable-Productivity-Limitation"].value == true then
        if data.raw[entity][name].limitation ~= nil then
        data.raw[entity][name].limitation = nil
        end
      end
    end
  end
  for _, list in pairs(data.raw[entity]) do
    for _, name in pairs(list) do
      RemoveProductivity(name)
    end
  end
end

--botspeed
if settings.startup["ru-botspeed"].value then
    for _, crobot in pairs(data.raw["construction-robot"]) do
      crobot.speed = crobot.speed + settings.startup["ru-botspeed"].value
    end
    for _, lrobot in pairs(data.raw["logistic-robot"]) do
      lrobot.speed = lrobot.speed + settings.startup["ru-botspeed"].value
    end
end

-- mini equipment
local equip_list = {
  "energy-shield-equipment",
  "solar-panel-equipment",
  "generator-equipment",
  "battery-equipment",
  "roboport-equipment",
  "night-vision-equipment",
  "movement-bonus-equipment",
  "active-defense-equipment",
}
for _, entity in pairs(equip_list) do
  local function MiniEquipment(name)
    if data.raw[entity][name] and data.raw[entity][name].shape then
      if settings.startup["ru-MiniEquipment"].value == true then
        if data.raw[entity][name].shape ~= nil then
          if data.raw[entity][name].shape ~= {width = 1, height = 1, type = "full"} then
            data.raw[entity][name].shape = {width = 1, height = 1, type = "full"}
          end
        end
      end
    end
  end
  for _, list in pairs(data.raw[entity]) do
    for _, name in pairs(list) do
      MiniEquipment(name)
    end
  end
end

--noxy staksize itemStackSizeMultiplier
--Stack size OK
local itemStackSizeMultiplier = settings.startup["ru-stack-Size"].value
local max, min = math.max, math.min
local ignore = {
	["blueprint"]           = true,
	["blueprint-book"]      = true,
	["deconstruction-item"] = true,
	["selection-tool"]      = true,
	["copy-paste-tool"]     = true,
	["item-with-inventory"] = true,
	["upgrade-item"]        = true,
	["armor"]               = true,
}

local function is_stackable(item)
	if not item.flags then return true end
	if type(item.flags) ~= "table" then return true end
	for _,v in pairs(item.flags) do
		if v == "not-stackable" then return false end
	end
	return true
end

for _, dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and is_stackable(item) then
			if not ignore[item.type] and (item.stackable == nil or item.stackable) then
				item.stack_size = max(1, min(2147483647, item.stack_size * itemStackSizeMultiplier))
			end
		end
	end
end

--stack size Contruction Robot OK
if settings.startup["ru-stack-Size-CRobot"].value then
	for _,v in pairs(data.raw["construction-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end

--stack size Logistic Robot OK
if settings.startup["ru-stack-Size-LRobot"].value then
	for _,v in pairs(data.raw["logistic-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end

--No Crafting Time OK
if settings.startup["ru-No-Crafting-Time"].value then
local function get_recipe(name)
  local items = data.raw["recipe"]
    if recipes then
      return recipes[name]
    end
  return nil
end

local function modify_energy(name, recipe)
 if recipe.normal or recipe.expensive then
    if recipe.normal then
       data.raw["recipe"][recipe.name].normal.energy_required = 0.0011
    end
    if recipe.expensive then
       data.raw["recipe"][recipe.name].expensive.energy_required = 0.0011
    end
 else
    data.raw["recipe"][recipe.name].energy_required = 0.0011
  end
end

local function get_zero(name, recipe)
  local existing_item = get_recipe(name)
  return modify_energy(name, recipe)
end

local function process_recipe(recipe)
  for name,recipe in pairs(recipe) do
      local recipe_item = get_zero(recipe_name, recipe)
    end
end

  process_recipe(data.raw["recipe"])
end

--collision box tree DISABLED
--[[if settings.startup["ru-trees"].value then
   for _, tree in pairs(data.raw["tree"]) do
      tree.collision_box = {{-0.03, -0.03}, {0.03, 0.03}}
   end
end--]]

--Powerful Lamp Setting OK
if settings.startup["ru-powerful-lamp"] then
   data.raw.character["character"].light = {
      {minimum_darkness = 0.3, intensity = 0.9, size = settings.startup["ru-powerful-lamp"].value}
   }
end

--Assembler Impu-output
if settings.startup["ru-Machine-liquid-Imput-Output"].value and not mods['omnimatter_fluid'] then
  --[[
      Do all the changes in data-final-fixes.lua, in case other mods have modified the assemblers
      1. Add "input throughput" pipes on N/S plane
      2. Add "output throughput" pipes on E/W plane
  ]]
  for j_index, j in pairs(data.raw['assembling-machine']) do
    if j.fluid_boxes and not appmod.blacklist[j.name] then
      log('Adding fluid boxes to ' .. j.name)
      for pipe_index, pipe in ipairs(j.fluid_boxes) do -- ipairs because array with a boolean on the end
        local connections_to_add = {}
        if pipe.production_type == 'input' then
          -- input pipe
          -- data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].production_type = 'input-output'
          -- pipes must be input or output
          for connection_index, connection in ipairs(pipe.pipe_connections) do
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].pipe_connections[connection_index].type = 'input-output'
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].base_level = -1
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].height = 2
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].base_area = 0.5
            table.insert(
              connections_to_add,
              {
                position = {connection.position[1], connection.position[2] * -1},
                type = 'input-output'
              }
            )
          end
        elseif pipe.production_type == 'output' then
          -- output pipe
          -- data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].production_type = 'input-output'
          -- pipes must be input or output
          for connection_index, connection in ipairs(pipe.pipe_connections) do
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].pipe_connections[connection_index].type = 'input-output'
            data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].pipe_connections[connection_index].position = {
              connection.position[2],
              connection.position[1]
            }
            table.insert(
              connections_to_add,
              {
                position = {connection.position[1] * -1, connection.position[2]},
                type = 'input-output'
              }
            )
          end
        else
          -- input/output pipe
          return
        end
        -- add the pipes.
        for _, to_add in pairs(connections_to_add) do
          table.insert(data.raw['assembling-machine'][j.name].fluid_boxes[pipe_index].pipe_connections, to_add)
        end
      end
    end
  end
end

--Wire Shortcuts
local is_wire_surrogate = settings.startup["ru-wire-shortcuts-is-retain-wire-crafting"].value

if data.raw["recipe"]["red-wire"] and data.raw["recipe"]["green-wire"] then
  data.raw["recipe"]["red-wire"].hidden = true
  data.raw["recipe"]["red-wire"].enabled = false
  data.raw["recipe"]["green-wire"].hidden = true
  data.raw["recipe"]["green-wire"].enabled = false
end

if data.raw["item"]["red-wire"] and data.raw["item"]["green-wire"] then
  data.raw["item"]["red-wire"].flags = {"only-in-cursor"}
  data.raw["item"]["green-wire"].flags = {"only-in-cursor"}
end

if data.raw["technology"]["circuit-network"] then
  local tech_effects = data.raw["technology"]["circuit-network"].effects
  for i = (#tech_effects), 1, -1 do
      if tech_effects[i].type == "unlock-recipe" then
          if tech_effects[i].recipe == "red-wire" or tech_effects[i].recipe == "green-wire" then
              if is_wire_surrogate then
                  tech_effects[i].recipe = "fake-" .. tech_effects[i].recipe
              else
                  table.remove(tech_effects, i)
              end
          end
      end
  end
end

function remove_or_replace_wire(ingredients)
  for i = (#ingredients), 1, -1 do
      if ingredients[i] then
          if ingredients[i][1] == "green-wire" or
                  ingredients[i][1] == "red-wire" then
              if is_wire_surrogate then
                  ingredients[i][1] = "fake-" .. ingredients[i][1]
              else
                  table.remove(ingredients, i)
              end
          elseif ingredients[i].name and (ingredients[i].name == "green-wire" or ingredients[i].name == "red-wire") then
              if is_wire_surrogate then
                  ingredients[i].name = "fake-" .. ingredients[i].name
              else
                  table.remove(ingredients, i)
              end
          end
      end
  end
end

for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.ingredients then
      remove_or_replace_wire(recipe.ingredients)
  end
  if recipe.expensive and recipe.expensive.ingredients then
      remove_or_replace_wire(recipe.expensive.ingredients)
  end
  if recipe.normal and recipe.normal.ingredients then
      remove_or_replace_wire(recipe.normal.ingredients)
  end
end

if is_wire_surrogate then
  data.raw["item"]["fake-red-wire"].flags = {}
  data.raw["item"]["fake-green-wire"].flags = {}
  data.raw["recipe"]["fake-red-wire"].hidden = false
  data.raw["recipe"]["fake-green-wire"].hidden = false
  if data.raw["recipe"]["red-wire"] and data.raw["recipe"]["green-wire"] then
      data.raw["recipe"]["fake-red-wire"].ingredients = data.raw["recipe"]["red-wire"].ingredients
      data.raw["recipe"]["fake-green-wire"].ingredients = data.raw["recipe"]["green-wire"].ingredients
  end
end