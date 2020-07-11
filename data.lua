--if settings.startup["RU-Substation"].value == true then
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
  --Big Substation
  require "prototypes.item.substation.RU-Big-Substation"
  require "prototypes.entity.substation.RU-Big-Substation"
  require "prototypes.recipe.substation.RU-Big-Substation"
  require "prototypes.technology.substation.RU-Big-Substation"
  --Behemoth Substation
  require "prototypes.item.substation.RU-Behemoth-Substation"
  require "prototypes.entity.substation.RU-Behemoth-Substation"
  require "prototypes.recipe.substation.RU-Behemoth-Substation"
  require "prototypes.technology.substation.RU-Behemoth-Substation"
--end

--if settings.startup["RU-Solar-Panel"].value == true then
  --Basic Solar-Panel
  require "prototypes.item.Solar-Panel.RU-Basic-Solar-Panel"
  require "prototypes.entity.Solar-Panel.RU-Basic-Solar-Panel"
  require "prototypes.recipe.Solar-Panel.RU-Basic-Solar-Panel"
  require "prototypes.technology.Solar-Panel.RU-Basic-Solar-Panel"
  --Medium Solar-Panel
  require "prototypes.item.Solar-Panel.RU-Medium-Solar-Panel"
  require "prototypes.entity.Solar-Panel.RU-Medium-Solar-Panel"
  require "prototypes.recipe.Solar-Panel.RU-Medium-Solar-Panel"
  require "prototypes.technology.Solar-Panel.RU-Medium-Solar-Panel"
  --Big Solar-Panel
  require "prototypes.item.Solar-Panel.RU-Big-Solar-Panel"
  require "prototypes.entity.Solar-Panel.RU-Big-Solar-Panel"
  require "prototypes.recipe.Solar-Panel.RU-Big-Solar-Panel"
  require "prototypes.technology.Solar-Panel.RU-Big-Solar-Panel"
  --Behemoth Solar-Panel
  require "prototypes.item.Solar-Panel.RU-Behemoth-Solar-Panel"
  require "prototypes.entity.Solar-Panel.RU-Behemoth-Solar-Panel"
  require "prototypes.recipe.Solar-Panel.RU-Behemoth-Solar-Panel"
  require "prototypes.technology.Solar-Panel.RU-Behemoth-Solar-Panel"
--end

--if settings.startup["RU-Accumulator"].value == true then
  --animations
  require"prototypes.entity.accumulator.RU-basic-accumulator-animations"
  require"prototypes.entity.accumulator.RU-medium-accumulator-animations"
  require"prototypes.entity.accumulator.RU-big-accumulator-animations"
  require"prototypes.entity.accumulator.RU-behemoth-accumulator-animations"
  --Basic Accumulator
  require "prototypes.item.accumulator.RU-Basic-Accumulator"
  require "prototypes.entity.accumulator.RU-Basic-Accumulator"
  require "prototypes.recipe.accumulator.RU-Basic-Accumulator"
  require "prototypes.technology.accumulator.RU-Basic-Accumulator"
  --Medium Accumulator
  require "prototypes.item.accumulator.RU-Medium-Accumulator"
  require "prototypes.entity.accumulator.RU-Medium-Accumulator"
  require "prototypes.recipe.accumulator.RU-Medium-Accumulator"
  require "prototypes.technology.accumulator.RU-Medium-Accumulator"
  --Big Accumulator
  require "prototypes.item.accumulator.RU-Big-Accumulator"
  require "prototypes.entity.accumulator.RU-Big-Accumulator"
  require "prototypes.recipe.accumulator.RU-Big-Accumulator"
  require "prototypes.technology.accumulator.RU-Big-Accumulator"
  --Behemoth Accumulator
  require "prototypes.item.accumulator.RU-Behemoth-Accumulator"
  require "prototypes.entity.accumulator.RU-Behemoth-Accumulator"
  require "prototypes.recipe.accumulator.RU-Behemoth-Accumulator"
  require "prototypes.technology.accumulator.RU-Behemoth-Accumulator"
--end

--if settings.startup["RU-Lamp"].value == true then
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
  --Big lamp
  require "prototypes.item.lamp.RU-Big-Lamp"
  require "prototypes.entity.lamp.RU-Big-Lamp"
  require "prototypes.recipe.lamp.RU-Big-Lamp"
  require "prototypes.technology.lamp.RU-Big-Lamp"
--end

--if settings.startup["RU-Beacon"].value then
  --basic beacon
  require "prototypes.item.beacon.RU-Basic-Beacon"
  require "prototypes.entity.beacon.RU-Basic-Beacon"
  require "prototypes.recipe.beacon.RU-Basic-Beacon"
  require "prototypes.technology.beacon.RU-Basic-Beacon"
  --basic beacon
  require "prototypes.item.beacon.RU-Medium-Beacon"
  require "prototypes.entity.beacon.RU-Medium-Beacon"
  require "prototypes.recipe.beacon.RU-Medium-Beacon"
  require "prototypes.technology.beacon.RU-Medium-Beacon"
  --basic beacon
  require "prototypes.item.beacon.RU-Big-Beacon"
  require "prototypes.entity.beacon.RU-Big-Beacon"
  require "prototypes.recipe.beacon.RU-Big-Beacon"
  require "prototypes.technology.beacon.RU-Big-Beacon"
--end

--if settings.startup["RU-AlternativeRecipe"].value == true then
  require "prototypes.recipe.AlternativeRecipe"
--end

--if settings.startup["RU-CheatyRecipe"].value == true then
  require "prototypes.recipe.CheatyRecipe"
--end

--Wire Shortcuts
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


--Assembler Imput-Output--

-- to add an item to the blacklist, add the name of the assembling machine to the table using:
-- appmod.blacklist['entity-name'] = true
-- please insert this during your data-updates stage
if not appmod then
  appmod = {}
end
if not appmod.blacklist then
  appmod.blacklist = {}
end
