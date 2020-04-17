if settings.startup["RU-Substation"].value == true then
  --Basic Substation
  require "prototypes.item.substation.RU-Basic-Substation"
  require "prototypes.entity.substation.RU-Basic-Substation"
  require "prototypes.recipe.substation.RU-Basic-Substation"
  require "prototypes.technology.substation.RU-Basic-Substation"
  --Medium Substation
  require "prototypes.item.substation.RU-Medium-Substation"
  require "prototypes.entity.substation.RU-Medium-Substation"
  require "prototypes.recipe.substation.RU-Medium-Substation"
  require "prototypes.technology.substation.RU-Medium-Substation"
end

if settings.startup["RU-AlternativeRecipe"].value == true then
  require "prototypes.recipe.AlternativeRecipe"
end

if settings.startup["RU-CheatyRecipe"].value == true then
  require "prototypes.recipe.CheatyRecipe"
end


if settings.startup["RU-Lamp"].value == true then
  --Basic Lamp
  require "prototypes.item.lamp.RU-Basic-Lamp"
  require "prototypes.entity.lamp.RU-Basic-Lamp"
  require "prototypes.recipe.lamp.RU-Basic-Lamp"
  require "prototypes.technology.lamp.RU-Basic-Lamp"
  --Medium lamp
  require "prototypes.item.lamp.RU-Medium-Lamp"
  require "prototypes.entity.lamp.RU-Medium-Lamp"
  require "prototypes.recipe.lamp.RU-Medium-Lamp"
  require "prototypes.technology.lamp.RU-Medium-Lamp"
end

if settings.startup["RU-Enable-Wire-Shortcuts"].value then
  --Wire Shortcuts
  require "prototypes.wireshotrcuts.input"
  require "prototypes.wireshotrcuts.shortcut"
  --Wire Shortcuts Crafting
  if settings.startup["wire-shortcuts-is-retain-wire-crafting"].value then
    require "prototypes.wireshotrcuts.fake-item"
    require "prototypes.wireshotrcuts.fake-recipe"
  end
end

if settings.startup["RU-Beacon"].value then
  --basic beacon
  require "prototypes.item.beacon.RU-Basic-Beacon"
  require "prototypes.entity.beacon.RU-Basic-Beacon"
  require "prototypes.recipe.beacon.RU-Basic-Beacon"
  require "prototypes.technology.beacon.RU-Basic-Beacon"
end



--Assembler Imput-Output--

  --to add an item to the blacklist, add the name of the assembling machine to the table using:
  --appmod.blacklist['entity-name'] = true
  --please insert this during your data-updates stage
if not appmod then appmod = {} end
if not appmod.blacklist then appmod.blacklist = {} end

data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = settings.startup["small-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = settings.startup["small-electric-pole-supply-area-distance"].value / 2  -- (5x5) make this divide by 2
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = settings.startup["medium-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = settings.startup["medium-electric-pole-supply-area-distance"].value / 2  -- (7x7) make this divide by 2
data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = settings.startup["big-electric-pole-max-wire-distance"].value
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = settings.startup["big-electric-pole-supply-area-distance"].value / 2  -- (4x4) make this divide by 2
data.raw["electric-pole"]["substation"].maximum_wire_distance = settings.startup["substation-max-wire-distance"].value
data.raw["electric-pole"]["substation"].supply_area_distance = settings.startup["substation-supply-area-distance"].value / 2 -- (18x18) make this divide by 2
