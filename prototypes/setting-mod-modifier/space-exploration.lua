require "prototypes.game-modifier.armor"

--armor
if mods["space-exploration"] and settings.startup["Ru-space-exploration-integrations"].value == true then
    data.raw.armor["se-thruster-suit"].equipment_grid   = "RU-01-equipment-grid"
    data.raw.armor["se-thruster-suit-2"].equipment_grid   = "RU-02-equipment-grid"
    data.raw.armor["se-thruster-suit-3"].equipment_grid   = "RU-03-equipment-grid"
    data.raw.armor["se-thruster-suit-4"].equipment_grid   = "RU-04-equipment-grid"
    if mods["Krastorio2"] then
      --table.insert(data.raw["technology"]["RU-walkable-beacon-upgrade"]["effects"],{type = "unlock-recipe",  recipe = "RU-bob-Walkable-Big-Beacon-2-Recycle"})
      table.insert(data.raw["equipment-grid"]["RU-01-equipment-grid"].equipment_categories,  "universal-equipment")
      table.insert(data.raw["equipment-grid"]["RU-01-equipment-grid"].equipment_categories,  "robot-interaction-equipment")
      table.insert(data.raw["equipment-grid"]["RU-02-equipment-grid"].equipment_categories,  "universal-equipment")
      table.insert(data.raw["equipment-grid"]["RU-02-equipment-grid"].equipment_categories,  "robot-interaction-equipment")
      table.insert(data.raw["equipment-grid"]["RU-03-equipment-grid"].equipment_categories,  "universal-equipment")
      table.insert(data.raw["equipment-grid"]["RU-03-equipment-grid"].equipment_categories,  "robot-interaction-equipment")
      table.insert(data.raw["equipment-grid"]["RU-04-equipment-grid"].equipment_categories,  "universal-equipment")
      table.insert(data.raw["equipment-grid"]["RU-04-equipment-grid"].equipment_categories,  "robot-interaction-equipment")
    end
  end