--solar panel upgradable
data.raw["solar-panel"]["solar-panel"].next_upgrade = "RU-Basic-Solar-Panel"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
--accumulator upgradable
data.raw["accumulator"]["accumulator"].next_upgrade = "RU-Basic-Accumulator"
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
--substation upgradable
data.raw["electric-pole"]["substation"].next_upgrade = "RU-Basic-Substation"
data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"
--lamp upgradable
data.raw["lamp"]["small-lamp"].next_upgrade = "RU-Basic-Lamp"
data.raw["lamp"]["small-lamp"].fast_replaceable_group = "lamp"
--boiler upgradable
--steam engine upgradable
--nuclear reactor upgradable
--turbine upgradable
--train upgradable
--centifughe upgradable



--WALKABLE BEACONS

--if mods["base"] then
--  table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-Walkable-Big-Beacon"})
--end
if mods["bobmodules"] then
  table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-bob-Walkable-Big-Beacon-2-Recycle"})
  table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-bob-Walkable-Big-Beacon-3-Recycle"})
  table.insert(data.raw["technology"]["RU-walkable-beacon-downgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-bob-Walkable-Big-Beacon-2-Recycle"})
  table.insert(data.raw["technology"]["RU-walkable-beacon-downgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-bob-Walkable-Big-Beacon-3-Recycle"})
end

--disable items / recipes
if settings.startup["RU-AlternativeRecipe"].value == "true" then
  data.raw["recipe"]["offshore-pump"].hidden = false
  data.raw["recipe"]["wood-to-landfill"].hidden = false
  --table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "wood-to-landfill"})
end

if settings.startup["RU-CheatyRecipe"].value == true then
  data.raw["recipe"]["easy-landfill"].hidden = false
  --table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "easy-landfill"})
end

--Substation
if settings.startup["RU-Substation"].value == "nothing" then
  data.raw["recipe"]["RU-Basic-Substation"].hidden = true
  data.raw["recipe"]["RU-Medium-Substation"].hidden = true
  data.raw["recipe"]["RU-Big-Substation"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Substation"].hidden = true
  data.raw["technology"]["RU-Basic-Substation"].hidden = true
  data.raw["technology"]["RU-Medium-Substation"].hidden = true
  data.raw["technology"]["RU-Big-Substation"].hidden = true
  data.raw["technology"]["RU-Behemoth-Substation"].hidden = true
end
if settings.startup["RU-Substation"].value == "basic" then
  data.raw["recipe"]["RU-Medium-Substation"].hidden = true
  data.raw["recipe"]["RU-Big-Substation"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Substation"].hidden = true
  data.raw["technology"]["RU-Medium-Substation"].hidden = true
  data.raw["technology"]["RU-Big-Substation"].hidden = true
  data.raw["technology"]["RU-Behemoth-Substation"].hidden = true
end
if settings.startup["RU-Substation"].value == "medium" then
  data.raw["recipe"]["RU-Big-Substation"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Substation"].hidden = true
  data.raw["technology"]["RU-Big-Substation"].hidden = true
  data.raw["technology"]["RU-Behemoth-Substation"].hidden = true
end
if settings.startup["RU-Substation"].value == "big" then
  data.raw["recipe"]["RU-Behemoth-Substation"].hidden = true
  data.raw["technology"]["RU-Behemoth-Substation"].hidden = true
end
if settings.startup["RU-Substation"].value == "behemoth" then
end

--Accumulator

--local is_Basic_accumulator_hidden = {"false"}
--local is_Medium_accumulator_hidden = {"false"}
--local is_Big_accumulator_hidden = {"false"}
--local is_Behemoth_accumulator_hidden = {"false"}

if settings.startup["RU-Accumulator"].value == "nothing" then
--  table.remove(is_Basic_accumulator_hidden, "false")
--  table.remove(is_Medium_accumulator_hidden, "false")
--  table.remove(is_Big_accumulator_hidden, "false")
--  table.remove(is_Behemoth_accumulator_hidden, "false")
--  table.insert(is_Basic_accumulator_hidden, "true")
--  table.insert(is_Medium_accumulator_hidden, "true")
--  table.insert(is_Big_accumulator_hidden, "true")
--  table.insert(is_Behemoth_accumulator_hidden, "true")
  data.raw["recipe"]["RU-Basic-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Medium-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Big-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-a"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-b"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
end
if settings.startup["RU-Accumulator"].value == "basic" then
--  table.insert(is_Medium_accumulator_hidden, "true")
--  table.insert(is_Big_accumulator_hidden, "true")
--  table.insert(is_Behemoth_accumulator_hidden, "true")
  data.raw["recipe"]["RU-Medium-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Big-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-b"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
end
if settings.startup["RU-Accumulator"].value == "medium" then
--  table.insert(is_Big_accumulator_hidden, "true")
--  table.insert(is_Behemoth_accumulator_hidden, "true")
  data.raw["recipe"]["RU-Big-Accumulator"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
end
if settings.startup["RU-Accumulator"].value == "big" then
--    table.insert(is_Behemoth_accumulator_hidden, "true")
  data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
end
if settings.startup["RU-Accumulator"].value == "behemoth" then
end

--solar Panel
if settings.startup["RU-Solar-Panel"].value == "nothing" then
  data.raw["recipe"]["RU-Basic-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Medium-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Big-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Solar-Panel"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-a"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-b"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-d"].hidden = true
end
if settings.startup["RU-Solar-Panel"].value == "basic" then
  data.raw["recipe"]["RU-Medium-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Big-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Solar-Panel"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-b"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-d"].hidden = true
end
if settings.startup["RU-Solar-Panel"].value == "medium" then
  data.raw["recipe"]["RU-Big-Solar-Panel"].hidden = true
  data.raw["recipe"]["RU-Behemoth-Solar-Panel"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-c"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-d"].hidden = true
end
if settings.startup["RU-Solar-Panel"].value == "big" then
  data.raw["recipe"]["RU-Behemoth-Solar-Panel"].hidden = true
  data.raw["technology"]["RU-Advanced-Solar-Energy-d"].hidden = true
end
if settings.startup["RU-Substation"].value == "behemoth" then
end

--Beacon
if settings.startup["RU-Beacon"].value == "nothing" then
  data.raw["recipe"]["RU-Basic-Beacon"].hidden = true
  data.raw["recipe"]["RU-Medium-Beacon"].hidden = true
  data.raw["recipe"]["RU-Big-Beacon"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Beacon"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-a"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-b"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-c"].hidden = true
--  data.raw["technology"]["RU-advanced-effect-transmission-d"].hidden = true
end
if settings.startup["RU-Beacon"].value == "basic" then
  data.raw["recipe"]["RU-Medium-Beacon"].hidden = true
  data.raw["recipe"]["RU-Big-Beacon"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Beacon"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-b"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-c"].hidden = true
--  data.raw["technology"]["RU-advanced-effect-transmission-d"].hidden = true
end
if settings.startup["RU-Beacon"].value == "medium" then
  data.raw["recipe"]["RU-Big-Beacon"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Beacon"].hidden = true
  data.raw["technology"]["RU-advanced-effect-transmission-c"].hidden = true
--  data.raw["technology"]["RU-advanced-effect-transmission-d"].hidden = true
end
if settings.startup["RU-Beacon"].value == "big" then
--  data.raw["recipe"]["RU-Behemoth-Beacon"].hidden = true
--  data.raw["technology"]["RU-advanced-effect-transmission-d"].hidden = true
end
--if settings.startup["RU-Substation"].value == "behemoth" then
--end

--Lamp
if settings.startup["RU-Lamp"].value == "nothing" then
  data.raw["recipe"]["RU-Basic-Lamp"].hidden = true
  data.raw["recipe"]["RU-Medium-Lamp"].hidden = true
  data.raw["recipe"]["RU-Big-Lamp"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Lamp"].hidden = true
  data.raw["technology"]["RU-Basic-Lamp"].hidden = true
  data.raw["technology"]["RU-Medium-Lamp"].hidden = true
  data.raw["technology"]["RU-Big-Lamp"].hidden = true
--  data.raw["technology"]["RU-Behemoth-Lamp"].hidden = true
end
if settings.startup["RU-Lamp"].value == "basic" then
  data.raw["recipe"]["RU-Medium-Lamp"].hidden = true
  data.raw["recipe"]["RU-Big-Lamp"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Lamp"].hidden = true
  data.raw["technology"]["RU-Medium-Lamp"].hidden = true
  data.raw["technology"]["RU-Big-Lamp"].hidden = true
--  data.raw["technology"]["RU-Behemoth-Lamp"].hidden = true
end
if settings.startup["RU-Lamp"].value == "medium" then
  data.raw["recipe"]["RU-Big-Lamp"].hidden = true
--  data.raw["recipe"]["RU-Behemoth-Lamp"].hidden = true
  data.raw["technology"]["RU-Big-Lamp"].hidden = true
--  data.raw["technology"]["RU-Behemoth-Lamp"].hidden = true
end
if settings.startup["RU-Lamp"].value == "big" then
--  data.raw["recipe"]["RU-Behemoth-Lamp"].hidden = true
--  data.raw["technology"]["RU-Behemoth-Lamp"].hidden = true
end
--if settings.startup["RU-Lamp"].value == "behemoth" then
--end

--electric pole range
data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = settings.startup["small-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = settings.startup["small-electric-pole-supply-area-distance"].value / 2  -- (5x5) make this divide by 2
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = settings.startup["medium-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = settings.startup["medium-electric-pole-supply-area-distance"].value / 2  -- (7x7) make this divide by 2
data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = settings.startup["big-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = settings.startup["big-electric-pole-supply-area-distance"].value / 2  -- (4x4) make this divide by 2
data.raw["electric-pole"]["substation"].maximum_wire_distance = settings.startup["substation-max-wire-distance"].value
data.raw["electric-pole"]["substation"].supply_area_distance = settings.startup["substation-supply-area-distance"].value / 2 -- (18x18) make this divide by 2


--Inventory size OK
if settings.startup["ru-inventory-size"] then
   data.raw.character["character"].inventory_size = settings.startup["ru-inventory-size"].value
end

--Reach distance OK
if settings.startup["ru-reach-distance"] then
   data.raw.character["character"].build_distance = settings.startup["ru-reach-distance"].value
   data.raw.character["character"].reach_distance = settings.startup["ru-reach-distance"].value
end

--Mining speed OK
if settings.startup["ru-mining-speed"] then
   data.raw.character["character"].mining_speed = data.raw.character["character"].mining_speed * settings.startup["ru-mining-speed"].value
end

--Mining reach OK
if settings.startup["ru-mine-reach"] then
   data.raw.character["character"].reach_resource_distance = settings.startup["ru-mine-reach"].value
end

--Stack size OK
local itemStackSizeMultiplier = settings.startup["RU-Stack-Size"].value
local max, min = math.max, math.min

--Angel Warehouse Size OK
if mods["angelsaddons-warehouses"] then
	data.raw.container["angels-warehouse"].inventory_size = settings.startup["RU-angels-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-passive-provider"].inventory_size = settings.startup["RU-angels-warehouse-passive-provider"].value
	data.raw["logistic-container"]["angels-warehouse-active-provider"].inventory_size = settings.startup["RU-angels-warehouse-active-provider"].value
	data.raw["logistic-container"]["angels-warehouse-storage"].inventory_size = settings.startup["RU-angels-warehouse-storage"].value
	data.raw["logistic-container"]["angels-warehouse-requester"].inventory_size = settings.startup["RU-angels-warehouse-requester"].value
	data.raw["logistic-container"]["angels-warehouse-buffer"].inventory_size = settings.startup["RU-angels-warehouse-buffer"].value
end
--Angel PressureTank Size OK
if mods["angelsaddons-pressuretanks"] then
	data.raw["storage-tank"]["angels-pressure-tank-1"]["fluid_box"].base_area = settings.startup["Ru-Angel-Pressuretank"].value
end

if mods["Krastorio2"] then
  data.raw.container["kr-medium-container"].inventory_size = settings.startup["Ru-Krastorio2-medium-container"].value
  data.raw["logistic-container"]["kr-medium-passive-provider-container"].inventory_size = settings.startup["RU-Krastorio2-medium-passive-provider-container"].value
  data.raw["logistic-container"]["kr-medium-active-provider-container"].inventory_size = settings.startup["RU-Krastorio2-medium-active-provider-container"].value
  data.raw["logistic-container"]["kr-medium-storage-container"].inventory_size = settings.startup["RU-Krastorio2-medium-storage-container"].value
  data.raw["logistic-container"]["kr-medium-requester-container"].inventory_size = settings.startup["RU-Krastorio2-medium-requester-container"].value
  data.raw["logistic-container"]["kr-medium-buffer-container"].inventory_size = settings.startup["RU-Krastorio2-medium-buffer-container"].value

  data.raw.container["kr-big-container"].inventory_size = settings.startup["Ru-Krastorio2-big-container"].value
  data.raw["logistic-container"]["kr-big-passive-provider-container"].inventory_size = settings.startup["Ru-Krastorio2-big-passive-provider-container"].value
  data.raw["logistic-container"]["kr-big-active-provider-container"].inventory_size = settings.startup["Ru-Krastorio2-big-active-provider-container"].value
  data.raw["logistic-container"]["kr-big-storage-container"].inventory_size = settings.startup["Ru-Krastorio2-big-storage-container"].value
  data.raw["logistic-container"]["kr-big-requester-container"].inventory_size = settings.startup["Ru-Krastorio2-big-requester-container"].value
  data.raw["logistic-container"]["kr-big-buffer-container"].inventory_size = settings.startup["Ru-Krastorio2-big-buffer-container"].value

	data.raw["storage-tank"]["kr-fluid-storage-1"]["fluid_box"].base_area = settings.startup["Ru-kr-fluid-storage-1"].value
	data.raw["storage-tank"]["kr-fluid-storage-2"]["fluid_box"].base_area = settings.startup["Ru-kr-fluid-storage-2"].value
end


--noxy staksize itemStackSizeMultiplier

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

for _, dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" then
			if not ignore[item.type] and (item.stackable == nil or item.stackable) then
				item.stack_size = max(1, min(2147483647, item.stack_size * itemStackSizeMultiplier))
			end
		end
	end
end


--stack size Contruction Robot OK
if settings.startup["RU-Stack-Size-CRobot"].value then
	for _,v in pairs(data.raw["construction-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end
--stack size Logistic Robot OK
if settings.startup["RU-Stack-Size-LRobot"].value then
	for _,v in pairs(data.raw["logistic-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end
--No Crafting Time OK
if settings.startup["RU-No-Crafting-Time"].value then
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

--change bot speed
data.raw["construction-robot"]["construction-robot"].speed = settings.startup["RU-botspeed-base-bot-speed"].value
data.raw["logistic-robot"]["logistic-robot"].speed = settings.startup["RU-botspeed-base-bot-speed"].value


--collision box tree OK
if settings.startup["ru-trees"].value then
   for _, tree in pairs(data.raw["tree"]) do
      tree.collision_box = {{-0.03, -0.03}, {0.03, 0.03}}
   end
end

--Powerful Lamp Setting OK
if settings.startup["ru-powerful-lamp"] then
   data.raw.character["character"].light = {
      {minimum_darkness = 0.3, intensity = 0.9, size = settings.startup["ru-powerful-lamp"].value}
   }
end

--Assembler Impu-output
if settings.startup["RU-Assembler-liquid-Imput-Output"].value then
  --[[
      Do all the changes in data-final-fixes.lua, in case other mods have modified the assemblers
      1. Add "input throughput" pipes on N/S plane
      2. Add "output throughput" pipes on E/W plane
  ]]
  for j_index, j in pairs(data.raw['assembling-machine']) do
    if j.fluid_boxes and not appmod.blacklist[j.name] then
      log('Adding fluid boxes to ' .. j.name)
      if (j.name == 'chemical-plant' or j.name == 'oil-refinery') then
        log(serpent.block(data.raw['assembling-machine'][j.name].fluid_boxes))
      end
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
      if (j.name == 'chemical-plant' or j.name == 'oil-refinery') then
        log(serpent.block(data.raw['assembling-machine'][j.name].fluid_boxes))
      end
    end
  end
 elseif mods['omnimatter_fluid'] then
   do
 end
end

--Wire Shortcuts
local is_wire_surrogate = settings.startup["wire-shortcuts-is-retain-wire-crafting"].value

if data.raw["recipe"]["red-wire"] and data.raw["recipe"]["green-wire"] then
    data.raw["recipe"]["red-wire"].hidden = true
    data.raw["recipe"]["red-wire"].enabled = false
    data.raw["recipe"]["green-wire"].hidden = true
    data.raw["recipe"]["green-wire"].enabled = false
end

if data.raw["item"]["red-wire"] and data.raw["item"]["green-wire"] then
    data.raw["item"]["red-wire"].flags = { "hidden" }
    data.raw["item"]["green-wire"].flags = { "hidden" }
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
