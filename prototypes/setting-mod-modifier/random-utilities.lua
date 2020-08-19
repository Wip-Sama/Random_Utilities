--[[function setting_accumulator ()
  setting_accumulator = settings.startup["RU-Accumulator"].value
end--]]

--Substation
if settings.startup["RU-Substation"].value == "basic" or settings.startup["RU-Substation"].value == "medium" or settings.startup["RU-Substation"].value == "big" or settings.startup["RU-Substation"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Substation"].hidden = false
  data.raw["technology"]["RU-Basic-Substation"].hidden = false
  if settings.startup["RU-Substation"].value == "medium" or settings.startup["RU-Substation"].value == "big" or settings.startup["RU-Substation"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Substation"].hidden = false
    data.raw["technology"]["RU-Medium-Substation"].hidden = false
    if settings.startup["RU-Substation"].value == "big" or settings.startup["RU-Substation"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Substation"].hidden = false
      data.raw["technology"]["RU-Big-Substation"].hidden = false
      if settings.startup["RU-Substation"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Substation"].hidden = false
        data.raw["technology"]["RU-Behemoth-Substation"].hidden = false
      end
    end
  end
end

--Accumulator
if settings.startup["RU-Accumulator"].value == "basic" or settings.startup["RU-Accumulator"].value == "medium" or settings.startup["RU-Accumulator"].value == "big" or settings.startup["RU-Accumulator"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Accumulator"].hidden = false
  data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-a"].hidden = false
  if settings.startup["RU-Accumulator"].value == "medium" or settings.startup["RU-Accumulator"].value == "big" or settings.startup["RU-Accumulator"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Accumulator"].hidden = false
    data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-b"].hidden = false
    if settings.startup["RU-Accumulator"].value == "big" or settings.startup["RU-Accumulator"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Accumulator"].hidden = false
      data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-c"].hidden = false
      if settings.startup["RU-Accumulator"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Accumulator"].hidden = false
        data.raw["technology"]["RU-Advanced-Electric-Energy-Accumulators-d"].hidden = false
      end
    end
  end
end

--Belt
if settings.startup["RU-Belt"].value == "basic" or settings.startup["RU-Belt"].value == "medium" or settings.startup["RU-Belt"].value == "big" or settings.startup["RU-Belt"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Transport-Belt"].hidden = false
  data.raw["technology"]["RU-Logistics-4"].hidden = false
  if settings.startup["RU-Belt"].value == "medium" or settings.startup["RU-Belt"].value == "big" or settings.startup["RU-Belt"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Transport-Belt"].hidden = false
    data.raw["technology"]["RU-Logistics-5"].hidden = false
    if settings.startup["RU-Belt"].value == "big" or settings.startup["RU-Belt"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Transport-Belt"].hidden = false
      data.raw["technology"]["RU-Logistics-6"].hidden = false
      if settings.startup["RU-Belt"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Transport-Belt"].hidden = false
        data.raw["technology"]["RU-Logistics-7"].hidden = false
      end
    end
  end
end

--Inserter 
if settings.startup["RU-Inserter"].value == "basic" or settings.startup["RU-Inserter"].value == "medium" or settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Inserter"].hidden = false
  data.raw["technology"]["RU-Basic-Inserter"].hidden = false
  if settings.startup["RU-Inserter"].value == "medium" or settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Inserter"].hidden = false
    data.raw["technology"]["RU-Medium-Inserter"].hidden = false
    if settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Inserter"].hidden = false
      data.raw["technology"]["RU-Big-Inserter"].hidden = false
      if settings.startup["RU-Inserter"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Inserter"].hidden = false
        data.raw["technology"]["RU-Behemoth-Inserter"].hidden = false
      end
    end
  end
end

--solar Panel
if settings.startup["RU-Solar-Panel"].value == "basic" or settings.startup["RU-Solar-Panel"].value == "medium" or settings.startup["RU-Solar-Panel"].value == "big" or settings.startup["RU-Solar-Panel"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Solar-Panel"].hidden = false
  data.raw["technology"]["RU-Advanced-Solar-Energy-a"].hidden = false
  if settings.startup["RU-Solar-Panel"].value == "medium" or settings.startup["RU-Solar-Panel"].value == "big" or settings.startup["RU-Solar-Panel"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Solar-Panel"].hidden = false
    data.raw["technology"]["RU-Advanced-Solar-Energy-b"].hidden = false
    if settings.startup["RU-Solar-Panel"].value == "big" or settings.startup["RU-Solar-Panel"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Solar-Panel"].hidden = false
      data.raw["technology"]["RU-Advanced-Solar-Energy-c"].hidden = false
      if settings.startup["RU-Solar-Panel"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Solar-Panel"].hidden = false
        data.raw["technology"]["RU-Advanced-Solar-Energy-d"].hidden = false
      end
    end
  end
end

--Beacon
if settings.startup["RU-Beacon"].value == "basic" or settings.startup["RU-Beacon"].value == "medium" or settings.startup["RU-Beacon"].value == "big" then
  data.raw["recipe"]["RU-Basic-Beacon"].hidden = false
  data.raw["technology"]["RU-advanced-effect-transmission-a"].hidden = false
  if settings.startup["RU-Beacon"].value == "medium" or settings.startup["RU-Beacon"].value == "big" then
    data.raw["recipe"]["RU-Medium-Beacon"].hidden = false
    data.raw["technology"]["RU-advanced-effect-transmission-b"].hidden = false
    if settings.startup["RU-Beacon"].value == "big" then
      data.raw["recipe"]["RU-Big-Beacon"].hidden = false
      data.raw["technology"]["RU-advanced-effect-transmission-c"].hidden = false
    end
  end
end

--Walkable Beacon
if settings.startup["RU-Walkable-Beacon"].value == "vanilla" or settings.startup["RU-Walkable-Beacon"].value == "basic" or settings.startup["RU-Walkable-Beacon"].value == "medium" or settings.startup["RU-Walkable-Beacon"].value == "big" then
  data.raw["recipe"]["RU-Walkable-Beacon"].hidden = false
  data.raw["technology"]["RU-walkable-beacon-upgrade"].hidden = false
  data.raw["technology"]["RU-walkable-beacon-downgrade"].hidden = false
  if settings.startup["RU-Walkable-Beacon"].value == "basic" or settings.startup["RU-Walkable-Beacon"].value == "medium" or settings.startup["RU-Walkable-Beacon"].value == "big" then
    data.raw["recipe"]["RU-Walkable-Basic-Beacon"].hidden = false
    table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Basic-Beacon",})
    table.insert(data.raw["technology"]["RU-walkable-beacon-downgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Basic-Beacon-Recycle",})
    if settings.startup["RU-Walkable-Beacon"].value == "medium" or settings.startup["RU-Walkable-Beacon"].value == "big" then
      data.raw["recipe"]["RU-Walkable-Medium-Beacon"].hidden = false
      table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Medium-Beacon",})
      table.insert(data.raw["technology"]["RU-walkable-beacon-downgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Medium-Beacon-Recycle",})
      if settings.startup["RU-Walkable-Beacon"].value == "big" then
        data.raw["recipe"]["RU-Walkable-Big-Beacon"].hidden = false
        table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Big-Beacon",})
        table.insert(data.raw["technology"]["RU-walkable-beacon-downgrade"].effects, {type = "unlock-recipe", recipe = "RU-Walkable-Big-Beacon-Recycle",})
      end
    end
  end
end

--Lamp
if settings.startup["RU-Lamp"].value == "basic" or settings.startup["RU-Walkable-Beacon"].value == "medium" or settings.startup["RU-Walkable-Beacon"].value == "big" then
  data.raw["recipe"]["RU-Basic-Lamp"].hidden = false
  data.raw["technology"]["RU-Basic-Lamp"].hidden = false
  if settings.startup["RU-Lamp"].value == "medium" or settings.startup["RU-Walkable-Beacon"].value == "big" then
    data.raw["recipe"]["RU-Medium-Lamp"].hidden = false
    data.raw["technology"]["RU-Medium-Lamp"].hidden = false
    if settings.startup["RU-Lamp"].value == "big" then
      data.raw["recipe"]["RU-Big-Lamp"].hidden = false
      data.raw["technology"]["RU-Big-Lamp"].hidden = false
    end
  end
end


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