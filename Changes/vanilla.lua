--Inventory size 
if settings.startup["ru-inventory-size"] then
    data.raw.character["character"].inventory_size = settings.startup["ru-inventory-size"].value
end

--Reach distance
if settings.startup["ru-reach-distance"] then
    data.raw.character["character"].build_distance = settings.startup["ru-reach-distance"].value
    data.raw.character["character"].reach_distance = settings.startup["ru-reach-distance"].value
end

--Mining reach
if settings.startup["ru-mine-reach"] then
    data.raw.character["character"].reach_resource_distance = settings.startup["ru-mine-reach"].value
end

--Mining speed 
if settings.startup["ru-mining-speed"] then
    data.raw.character["character"].mining_speed = data.raw.character["character"].mining_speed * settings.startup["ru-mining-speed"].value
end

--Running speed
if settings.startup["ru-runnning-speed"] then
    data.raw.character["character"].running_speed = data.raw.character["character"].running_speed * settings.startup["ru-running-speed"].value
end

--Hp
if settings.startup["ru-hp"] then
    data.raw.character["character"].health = settings.startup["ru-hp"].value
end

--Hp recovery
if settings.startup["ru-hp-recovery"] then
    data.raw.character["character"].healing_per_tick = data.raw.character["character"].healing_per_tick * settings.startup["ru-hp-recovery"].value
end
