
--Boiler
if settings.startup["RU-Boiler"].value == "basic" or settings.startup["RU-Boiler"].value == "medium" or settings.startup["RU-Boiler"].value == "big" or settings.startup["RU-Boiler"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Boiler"].hidden = false
  data.raw["technology"]["RU-Basic-Boiler"].hidden = false
  if settings.startup["RU-Boiler"].value == "medium" or settings.startup["RU-Boiler"].value == "big" or settings.startup["RU-Boiler"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Boiler"].hidden = false
    data.raw["technology"]["RU-Medium-Boiler"].hidden = false
    if settings.startup["RU-Boiler"].value == "big" or settings.startup["RU-Boiler"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Boiler"].hidden = false
      data.raw["technology"]["RU-Big-Boiler"].hidden = false
      if settings.startup["RU-Boiler"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Boiler"].hidden = false
        data.raw["technology"]["RU-Behemoth-Boiler"].hidden = false
      end
    end
  end
end

--Steam Engine
if settings.startup["RU-Steam-Engine"].value == "basic" or settings.startup["RU-Steam-Engine"].value == "medium" or settings.startup["RU-Steam-Engine"].value == "big" or settings.startup["RU-Steam-Engine"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Steam-Engine"].hidden = false
  data.raw["technology"]["RU-Basic-Steam-Engine"].hidden = false
  if settings.startup["RU-Steam-Engine"].value == "medium" or settings.startup["RU-Steam-Engine"].value == "big" or settings.startup["RU-Steam-Engine"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Steam-Engine"].hidden = false
    data.raw["technology"]["RU-Medium-Steam-Engine"].hidden = false
    if settings.startup["RU-Steam-Engine"].value == "big" or settings.startup["RU-Steam-Engine"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Steam-Engine"].hidden = false
      data.raw["technology"]["RU-Big-Steam-Engine"].hidden = false
      if settings.startup["RU-Steam-Engine"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Steam-Engine"].hidden = false
        data.raw["technology"]["RU-Behemoth-Steam-Engine"].hidden = false
      end
    end
  end
end

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
        data.raw["recipe"]["RU-Junction-Pole"].hidden = false
        table.insert(data.raw["technology"]["RU-Behemoth-Substation"].effects, {type = "unlock-recipe", recipe = "RU-Junction-Pole"})
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

--Belt / splitter / underground belt / loader-1x
if settings.startup["RU-Logistic"].value == "basic" or settings.startup["RU-Logistic"].value == "medium" or settings.startup["RU-Logistic"].value == "big" or settings.startup["RU-Logistic"].value == "behemoth" then
  data.raw["transport-belt"]["express-transport-belt"].speed = 0.125
  data.raw["underground-belt"]["express-underground-belt"].speed = 0.125
  data.raw["splitter"]["express-splitter"].speed = 0.125
  data.raw["recipe"]["RU-Basic-Transport-Belt"].hidden = false
  data.raw["recipe"]["RU-Basic-Underground-Belt"].hidden = false
  data.raw["recipe"]["RU-Basic-Splitter"].hidden = false
  data.raw["recipe"]["RU-Basic-1x-Loader"].hidden = false
  data.raw["technology"]["RU-Logistics-a"].hidden = false
  if settings.startup["RU-Logistic"].value == "medium" or settings.startup["RU-Logistic"].value == "big" or settings.startup["RU-Logistic"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Transport-Belt"].hidden = false
    data.raw["recipe"]["RU-Medium-Underground-Belt"].hidden = false
    data.raw["recipe"]["RU-Medium-Splitter"].hidden = false
    data.raw["recipe"]["RU-Medium-1x-Loader"].hidden = false
    data.raw["technology"]["RU-Logistics-b"].hidden = false
    if settings.startup["RU-Logistic"].value == "big" or settings.startup["RU-Logistic"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Transport-Belt"].hidden = false
      data.raw["recipe"]["RU-Big-Underground-Belt"].hidden = false
      data.raw["recipe"]["RU-Big-Splitter"].hidden = false
      data.raw["recipe"]["RU-Big-1x-Loader"].hidden = false
      data.raw["technology"]["RU-Logistics-c"].hidden = false
      if settings.startup["RU-Logistic"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Transport-Belt"].hidden = false
        data.raw["recipe"]["RU-Behemoth-Underground-Belt"].hidden = false
        data.raw["recipe"]["RU-Behemoth-Splitter"].hidden = false
        data.raw["recipe"]["RU-Behemoth-1x-Loader"].hidden = false
        data.raw["technology"]["RU-Logistics-d"].hidden = false
      end
    end
  end
end

--Inserter / Stack Inserter
if settings.startup["RU-Inserter"].value == "basic" or settings.startup["RU-Inserter"].value == "medium" or settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
  data.raw["recipe"]["RU-Basic-Inserter"].hidden = false
  data.raw["technology"]["RU-Basic-Inserter"].hidden = false
  data.raw["recipe"]["RU-Basic-Stack-Inserter"].hidden = false
  data.raw["technology"]["RU-Basic-Stack-Inserter"].hidden = false
  if settings.startup["RU-Inserter"].value == "medium" or settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
    data.raw["recipe"]["RU-Medium-Inserter"].hidden = false
    data.raw["technology"]["RU-Medium-Inserter"].hidden = false
    data.raw["recipe"]["RU-Medium-Stack-Inserter"].hidden = false
    data.raw["technology"]["RU-Medium-Stack-Inserter"].hidden = false
    if settings.startup["RU-Inserter"].value == "big" or settings.startup["RU-Inserter"].value == "behemoth" then
      data.raw["recipe"]["RU-Big-Inserter"].hidden = false
      data.raw["technology"]["RU-Big-Inserter"].hidden = false
      data.raw["recipe"]["RU-Big-Stack-Inserter"].hidden = false
      data.raw["technology"]["RU-Big-Stack-Inserter"].hidden = false
      if settings.startup["RU-Inserter"].value == "behemoth" then
        data.raw["recipe"]["RU-Behemoth-Inserter"].hidden = false
        data.raw["technology"]["RU-Behemoth-Inserter"].hidden = false
        data.raw["recipe"]["RU-Behemoth-Stack-Inserter"].hidden = false
        data.raw["technology"]["RU-Behemoth-Stack-Inserter"].hidden = false
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

--Lamp
--[[if settings.startup["RU-Lamp"].value then
  local lampname = settings.startup["RU-Lamp"].value
  for _,lamp in pairs(data.raw["recipe"]) do
    if lampname == "basic" and lampname == "medium" and lampname == "big" then
      lamp.lampname.hidden = false
    elseif lampname == "basic" and lampname == "medium" then
      lamp.lampname.hidden = false
    elseif lampname == "basic" then
      lamp.lampname.hidden = false
    end
  for _,lamp in pairs(data.raw["technology"]) do
    if lampname == "basic" and lampname == "medium" and lampname == "big" then
      lamp.lampname.hidden = false
    elseif lampname == "basic" and lampname == "medium" then
      lamp.lampname.hidden = false
    elseif lampname == "basic" then
      lamp.lampname.hidden = false
    end
  end
end--]]

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