
-- In questa lista sono presenti i valori che sicuramente apparterrano a questa tabella
local selectable_armors = {"Nothing", "Modular armor", "Power armor", "Power armor MK2"}
-- -- Valori opzionali
-- Power Armor MK3
if mods["Power Armor MK3"] then
    table.insert(selectable_armors, "Power armor MK3") -- aggiunge alla fine della tabella selectable_armors la stringa "Power armor MK3"
    table.insert(selectable_armors, "Power armor MK4")
end
-- MicroFurnaceWipMod
--if mods["MicroFurnaceWipMod"] then
--    table.insert(selectable_armors, "banane")
--end

--if mods["angelsaddons-warehouses"] then
  --Angel Warehouse Size
  --Angel Warehouse
  data:extend({
  {
    type = "int-setting",
    name = "RU-angels-warehouse",
    order = "bca",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel warehouse storage",
  },
  --Angel Passive Provider Warehouse
  {
    type = "int-setting",
    name = "RU-angels-warehouse-passive-provider",
    order = "bcb",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} passive provider Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel Passive Provider warehouse storage",
  },
  --Angel Active provider Warehouse
  {
    type = "int-setting",
    name = "RU-angels-warehouse-active-provider",
    order = "bcc",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} active provider Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel Active provider warehouse storage",
  },
  --Angel storage Warehouse
  {
    type = "int-setting",
    name = "RU-angels-warehouse-storage",
    order = "bcd",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} storage Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel storage warehouse storage",
  },
  --Angel requester Warehouse
  {
    type = "int-setting",
    name = "RU-angels-warehouse-requester",
    order = "bce",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} requester Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel requester warehouse storage",
  },
  --Angel buffer Warehouse
  {
    type = "int-setting",
    name = "RU-angels-warehouse-buffer",
    order = "bcf",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Angel} buffer Warehouse storage",
    localised_description = "{Item}  by default the value is 1800, change angel buffer warehouse storage",
  },
})
--end

--if mods["angelsaddons-pressuretanks"] then
  --Angel PressureTank Size OK?
  data:extend({
    {
    type = "int-setting",
    name = "Ru-Angel-Pressuretank",
    order = "bcg",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
    localised_name = "{Anngel} Pressure tank storage",
    localised_description = "{Item}  by default the value is 100000, change angel pressure tank storage",
  },
})
--end

--if mods["Krastorio2"] then
  --Angel PressureTank Size OK?
  --Krastorio2 medium container
  data:extend({
  {
    type = "int-setting",
    name = "Ru-Krastorio2-medium-container",
    order = "bch",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium container",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  {
    type = "int-setting",
    name = "RU-Krastorio2-medium-passive-provider-container",
    order = "bci",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium passive provider container ",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  {
    type = "int-setting",
    name = "RU-Krastorio2-medium-active-provider-container",
    order = "bcj",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium active provider container ",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  {
    type = "int-setting",
    name = "RU-Krastorio2-medium-storage-container",
    order = "bck",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium storage container ",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  {
    type = "int-setting",
    name = "RU-Krastorio2-medium-requester-container",
    order = "bcl",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium requester container ",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  {
    type = "int-setting",
    name = "RU-Krastorio2-medium-buffer-container",
    order = "bcm",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
    localised_name = "{Krastorio2} Medium buffer container ",
    localised_description = "{Item} by default the value is 400, change Krastorio2 Medium container storage",
  },
  --Krastorio2 big container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-container",
    order = "bcn",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big container storage",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 big container storage",
  },
  --Krastorio2 big container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-passive-provider-container",
    order = "bco",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big passive provider container ",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 big container storage",
  },
  --Krastorio2 medium container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-active-provider-container",
    order = "bcp",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big active provider container ",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 big container storage",
  },
  --Krastorio2 medium container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-storage-container",
    order = "bcq",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big storage container ",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 big container storage",
  },
  --Krastorio2 medium container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-requester-container",
    order = "bcr",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big requester container ",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 big container storage",
  },
  --Krastorio2 medium container OK
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-buffer-container",
    order = "bcs",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
    localised_name = "{Setting} Krastorio2 big buffer container storage",
    localised_description = "{Item} by default the value is 1800, change Krastorio2 bih container storage",
  },
  --Krastorio2 big fluid storage OK
  {
    type = "int-setting",
    name = "Ru-kr-fluid-storage-1",
    order = "bct",
    setting_type = "startup",
    default_value = 1000,
    minimum_value = 1,
    maximum_value = 100000000,
    localised_name = "{Setting} Krastorio2 big fluid storage",
    localised_description = "{Item}  by default the value is 1000 (*100), change Krastorio2 fluid storage storage",
  },
  --Krastorio2 huge fluid storage OK
  {
    type = "int-setting",
    name = "Ru-kr-fluid-storage-2",
    order = "bcu",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
    localised_name = "{Setting} Krastorio2 huge fluid storage",
    localised_description = "{Item}  by default the value is 100000 (*100), change Krastorio2 fluid storage storage",
  },
})
--end

data:extend(
{
  --substation OK
  {
    type = "bool-setting",
    name = "RU-Substation",
    order = "aa",
    setting_type = "startup",
    default_value = true,
    localised_name = "Substation",
    localised_description = "{Item} Enable Substations",
  },
  --lamp OK
  {
    type = "bool-setting",
    name = "RU-Lamp",
    order = "aba",
    setting_type = "startup",
    default_value = true,
    localised_name = "Lamp",
    localised_description = "{Item} Enable Lamps",
  },
  --beacon
  {
    type = "bool-setting",
    name = "RU-Beacon",
    order = "abb",
    setting_type = "startup",
    default_value = true,
    localised_name = "Beacons",
    localised_description = "{Item} Enable Beacons",
  },
  --Solar panel
  {
    type = "bool-setting",
    name = "RU-Solar-Panel",
    order = "abc",
    setting_type = "startup",
    default_value = true,
    localised_name = "Solar Panel",
    localised_description = "{Item} Enable Solar Panels",
  },
  --Accumulator
  {
    type = "bool-setting",
    name = "RU-Accumulator",
    order = "abd",
    setting_type = "startup",
    default_value = true,
    localised_name = "Accumulator",
    localised_description = "{Item} Enable Accumulators",
  },
  --Inventory size OK
  {
    type = "int-setting",
    name = "ru-inventory-size",
    order = "ba",
    setting_type = "startup",
    default_value = 60,
    minimum_value = 20,
    maximum_value = 2000,
    localised_name = "{Setting} Inventory Size",
    localised_description = "{Info} by default the inventory is 60, change inventory size",
  },
  --stack size OK
  {
    type = "double-setting",
    name = "RU-Stack-Size",
    order = "bb",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 2147483647,
    localised_name = "{Setting} Items Stack Size",
    localised_description = "{Info} by default the value is 1, increase stack size (vanilla value * setting)",
  },
  --stack size Contruction Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-CRobot",
    order = "bc",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Item Stack Size Construction Robot",
    localised_description = "{Item}  by default the value is true, allow stack multiplier work on construcion robot",
  },
  --stack size Logistic Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-LRobot",
    order = "bd",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Item Stack Size Logistic Robot",
    localised_description = "{Item} by default the value is true, allow stack multiplier work on logistic robot",
  },
  --No Crafting Time OK
  {
    type = "bool-setting",
    name = "RU-No-Crafting-Time",
    order = "bea",
    setting_type = "startup",
    default_value = false,
    localised_name = "{Setting} Disable crafting Time",
    localised_description = "{Item} by default the value is false, work with machine recipe too",
  },
  --AlternativeRecipe OK
  {
    type = "bool-setting",
    name = "RU-AlternativeRecipe",
    order = "beb",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Alternative Recipes",
    localised_description = "{Item} by default the value is true, enable alternative recipes",
  },
  --AlternativeRecipe OK
  {
    type = "bool-setting",
    name = "RU-CheatyRecipe",
    order = "bec",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Cheaty Recipes",
    localised_description = "{Item} by default the value is true, enable Cheaty recipes",
  },
  --reach distance OK
  {
    type = "int-setting",
    name = "ru-reach-distance",
    order = "bf",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 1000,
    localised_name = "{Setting} Reach Distance",
    localised_description = "{Info} by default the reach is 6, increase the distance to pick and place item",
  },
  --Mining reach OK
  {
      type = "int-setting",
      name = "ru-mine-reach",
      order = "bg",
      setting_type = "startup",
      default_value = 6,
      minimum_value = 1,
      maximum_value = 1000,
      localised_name = "{Setting} Mining Reach",
      localised_description = "{Info} by default the reach is 6, Mine Items at longer distances",
  },
  --Mining speed OK
  {
    type = "double-setting",
    name = "ru-mining-speed",
    order = "bh",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0.01,
    maximum_value = 1000,
    localised_name = "{Setting} Mining Speed",
    localised_description = "{Info} by default the value is 1, Base mining value * value",
  },
  --collision box tree OK
  {
    type = "bool-setting",
    name = "ru-trees",
    order = "bi",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Reduce tree Collision Box",
    localised_description = "{Info} by default the value is true (not vanilla), decrease the collision box of the tree by 0.03",
  },
  --RU Better Cable Visibility OK
  {
    type = "bool-setting",
    name = "RU-Better-Cable-Visibility",
    order = "bj",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Enhance Cable Visibility",
    localised_description = "{Info} By default the value is true",
  },
  --RU-Assembler-liquid-Imput-Output OK
  {
    type = "bool-setting",
    name = "RU-Assembler-liquid-Imput-Output",
    order = "bk",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} allow liquid to pass throught general",
    localised_description = "{Info} By default the value is true",
  },
  --RU-Assembling-Machine-Imput-Output OK
  {
      type = 'bool-setting',
      name = 'RU-Assembling-Machine-Imput-Output',
      order = "bka",
      setting_type = 'startup',
      default_value = true,
      localised_name = "{Setting} allow liquid to pass throught the assembler",
      localised_description = "{Info} By default the value is true",
  },
  --RU-Chemical-Plant-Imput-Output OK
  {
      type = 'bool-setting',
      name = 'RU-Chemical-Plant-Imput-Output',
      order = "bkb",
      setting_type = 'startup',
      default_value = true,
      localised_name = "{Setting} allow liquid to pass throught the chemical plant",
      localised_description = "{Info} By default the value is true",
  },
  --RU-Oil-Refineries-Imput-Output OK
  {
      type = 'bool-setting',
      name = 'RU-Oil-Refineries-Imput-Output',
      order = "bkc",
      setting_type = 'startup',
      default_value = true,
      localised_name = "{Setting} allow liquid to pass throught the oil refinery",
      localised_description = "{Info} By default the value is true",
  },
  --Enable Shortcuts OK
  {
    type = 'bool-setting',
    name = "RU-Enable-Wire-Shortcuts",
    order = "bla",
    setting_type = "startup",
    default_value = true,
    localised_name = "{Setting} Enable Wire Shortcuts",
    localised_description = "{Info} By default the value is true",
  },
  --Enable Wire Shortcuts OK
  {
    type = 'bool-setting',
    name = "wire-shortcuts-is-retain-wire-crafting",
    order = "blb",
    setting_type = "startup",
    default_value = false,
    localised_name = "{Setting} Keep Enabled Wire Crafting",
    localised_description = "{Info} By default the value is false, it's better to leave this value false",
  },
  {
   type = "double-setting",
   name = "small-electric-pole-max-wire-distance",
   order = "bma",
   setting_type = "startup",
   default_value = 7.5,
   minimum_value = 2.5,
   localised_name = "{Setting} small electric pole wire distance",
   localised_description = "{Info} change small electric pole wire distance",
  },
  {
   type = "double-setting",
   name = "small-electric-pole-supply-area-distance",
   order = "bmb",
   setting_type = "startup",
   default_value = 5,
   minimum_value = 3,
   localised_name = "{Setting} small electric pole supply area",
   localised_description = "{Info} change small electric pole supply area",
  },
  {
   type = "double-setting",
   name = "medium-electric-pole-max-wire-distance",
   order = "bmc",
   setting_type = "startup",
   default_value = 9,
   minimum_value = 2.5,
   localised_name = "{Setting} medium electric pole wire distance",
   localised_description = "{Info} medium big electric pole wire distance",
  },
  {
   type = "double-setting",
   name = "medium-electric-pole-supply-area-distance",
   order = "bmd",
   setting_type = "startup",
   default_value = 7,
   minimum_value = 3,
   localised_name = "{Setting} medium electric pole supply area",
   localised_description = "{Info} change medium electric pole supply area",
  },
  {
   type = "double-setting",
   name = "big-electric-pole-max-wire-distance",
   order = "bme",
   setting_type = "startup",
   default_value = 30,
   minimum_value = 3,
   localised_name = "{Setting} big electric pole wire distance",
   localised_description = "{Info} change big electric pole wire distance",
 },
 {
   type = "double-setting",
   name = "big-electric-pole-supply-area-distance",
   order = "bmf",
   setting_type = "startup",
   default_value = 4,
   minimum_value = 4,
   localised_name = "{Setting} big electric pole supply area",
   localised_description = "{Info} change big electric pole supply area",
  },
  {
   type = "double-setting",
   name = "substation-max-wire-distance",
   order = "bmg",
   setting_type = "startup",
   default_value = 18,
   minimum_value = 3,
   localised_name = "{Setting} substation wire distance",
   localised_description = "{Info} change substation wire distance",
  },
  {
   type = "double-setting",
   name = "substation-supply-area-distance",
   order = "bmh",
   setting_type = "startup",
   default_value = 18,
   minimum_value = 4,
   localised_name = "{Setting} substation supply area",
   localised_description = "{Info} change substation supply area",
  },
  --Quick Start OK
  {
    type = "string-setting",
    name = "ru-quick-start",
    order = "cb",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = {"Nothing", "Small amount", "Medium amount", "Big amount", "Huge amount"},
    localised_name = "{Quick-Start} Select the amount of item to start the game",
    localised_description = "{Info} by default the value is nothing, set how much item you recive at the start",
  },
--Quick Start Modular Armor OK
  {
    type = "string-setting",
    name = "ru-armor-quick-start",
    order = "cc",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = selectable_armors,
    localised_name = "{Quick-Start} Armor",
    localised_description = "{Info} by default the value is nothing, select an armor to start the game",
  },
--Train technology OK
  {
    type = "bool-setting",
    name = "ru-train-technology",
    order = "cd",
    setting_type = "startup",
    default_value = false,
    per_user = false,
    localised_name = "{Quick-Start} Unlock Train Technology",
    localised_description = "{Info} by default the value is false",
  },
--Robot technology OK
  {
    type = "bool-setting",
    name = "ru-robot-technology",
    order = "ce",
    setting_type = "startup",
    default_value = false,
    per_user = false,
    localised_name = "{Quick-Start} Unlock Robot Technology",
    localised_description = "{Info} by default the value is false",
  },
--bot speed / robot speed OK
  {
    type = "double-setting",
    name = "RU-botspeed-base-bot-speed",
    order = "cf",
    setting_type = "startup",
    default_value = 0.1,
    minimum_value = 0.06,
    maximum_value = 1,
    localised_name = "{Setting} Change bot speed",
    localised_description = "{Info} by default the value is 0.1 (vanilla : 0.05 logistic, 0.06 construction)",
  },
}
)
