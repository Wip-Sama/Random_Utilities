--space exploration beacon balance
if mods["space-exploration"] then
    --basic
    data.raw["beacon"]["RU-Basic-Beacon"]["module_specification"] = {module_slots = 10, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Basic-Beacon"].energy_usage = "75MW"
    data.raw["beacon"]["RU-Walkable-Basic-Beacon"]["module_specification"] = {module_slots = 10, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Walkable-Basic-Beacon"].energy_usage = "75MW"
    --medium
    data.raw["beacon"]["RU-Medium-Beacon"]["module_specification"] = {module_slots = 20, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Medium-Beacon"].energy_usage = "375MW"
    data.raw["beacon"]["RU-Walkable-Medium-Beacon"]["module_specification"] = {module_slots = 20, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Walkable-Medium-Beacon"].energy_usage = "375MW"
    --big
    data.raw["beacon"]["RU-Big-Beacon"]["module_specification"] = {module_slots = 30, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Big-Beacon"].energy_usage = "1875MW"
    data.raw["beacon"]["RU-Walkable-Big-Beacon"]["module_specification"] = {module_slots = 30, module_info_icon_shift = {0, 0}, module_info_multi_row_initial_height_modifier = -0.3, module_info_max_icons_per_row = 2,}
    data.raw["beacon"]["RU-Walkable-Big-Beacon"].energy_usage = "1875MW"
end

--substation
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
  if settings.startup["RU-Accumulator"].value == "nothing" then
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
    data.raw["recipe"]["RU-Medium-Accumulator"].hidden = true
    data.raw["recipe"]["RU-Big-Accumulator"].hidden = true
    data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-b"].hidden = true
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = true
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
  end
  if settings.startup["RU-Accumulator"].value == "medium" then
    data.raw["recipe"]["RU-Big-Accumulator"].hidden = true
    data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = true
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = true
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = true
  end
  if settings.startup["RU-Accumulator"].value == "big" then
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
  
  --Beacon
  if settings.startup["RU-Walkable-Beacon"].value == "nothing" then
    data.raw["recipe"]["RU-Walkable-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Basic-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Medium-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Big-Beacon"].hidden = true
  --  data.raw["recipe"]["RU-Walkable-Behemoth-Beacon"].hidden = true
    data.raw["technology"]["RU-walkable-beacon-upgrade"].hidden = true
    data.raw["technology"]["RU-walkable-beacon-downgrade"].hidden = true
  end
  if settings.startup["RU-Walkable-Beacon"].value == "vanilla" then
  --  data.raw["recipe"]["RU-Walkable-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Basic-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Medium-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Big-Beacon"].hidden = true
  --  data.raw["recipe"]["RU-Walkable-Behemoth-Beacon"].hidden = true
  end
  if settings.startup["RU-Walkable-Beacon"].value == "basic" then
    data.raw["recipe"]["RU-Walkable-Medium-Beacon"].hidden = true
    data.raw["recipe"]["RU-Walkable-Big-Beacon"].hidden = true
  --  data.raw["recipe"]["RU-Walkable-Behemoth-Beacon"].hidden = true
  end
  if settings.startup["RU-Walkable-Beacon"].value == "medium" then
    data.raw["recipe"]["RU-Walkable-Big-Beacon"].hidden = true
  --  data.raw["recipe"]["RU-Walkable-Behemoth-Beacon"].hidden = true
  end
  if settings.startup["RU-Walkable-Beacon"].value == "big" then
  --  data.raw["recipe"]["RU-Walkable-Behemoth-Beacon"].hidden = true
  end
  --if settings.startup["RU-Walkable-Beacon"].value == "behemoth" then
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

  --disable items / recipes
if settings.startup["RU-AlternativeRecipe"].value == "true" then
  data.raw["recipe"]["ru-offshore-pump"].hidden = "false"
  data.raw["recipe"]["wood-to-landfill"].hidden = "false"
  --table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "wood-to-landfill"})
end

if settings.startup["RU-CheatyRecipe"].value == "true" then
  data.raw["recipe"]["easy-landfill"].hidden = "false"
  --table.insert(data.raw["technology"]["landfill"].effects, { type = "unlock-recipe", recipe = "easy-landfill"})
end

if settings.startup["RU-CheatyRecipe"].value == "true" or settings.startup["RU-AlternativeRecipe"].value == "true" then
  data.raw["technology"]["landfill-2"].hidden = "false"
end

--WALKABLE BEACONS
--if mods["base"] then
--  table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-Walkable-Big-Beacon"})
--end

--[[
--beacon  productivity
if settings.startup["RU-Beacon-Productivity"].value == false then
  --beacon 
  table.remove(data.raw["beacon"]["RU-Basic-Beacon"].allowed_effects,{"productivity"})
  table.remove(data.raw["beacon"]["RU-Medium-Beacon"].allowed_effects,{"productivity"})
  table.remove(data.raw["beacon"]["RU-Big-Beacon"].allowed_effects,{"productivity"})
  --walkable beacon 
  table.remove(data.raw["beacon"]["RU-Walkable-Basic-Beacon"].allowed_effects,{"productivity"})
  table.remove(data.raw["beacon"]["RU-Walkable-Medium-Beacon"].allowed_effects,{"productivity"})
  table.remove(data.raw["beacon"]["RU-Walkable-Big-Beacon"].allowed_effects,{"productivity"})
end--]]