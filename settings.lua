local selectable_armors = {"Nothing", "Modular armor", "Power armor", "Power armor MK2"}

-- Power Armor MK3
if mods["Power Armor MK3"] then
    table.insert(selectable_armors, "Power armor MK3")
    table.insert(selectable_armors, "Power armor MK4")
end

data:extend({
  --Boiler
  {
    type = "string-setting",
    name = "RU-Boiler",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --Steam Engine
  {
    type = "string-setting",
    name = "RU-Steam-Engine",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --Solar panel
  {
    type = "string-setting",
    name = "RU-Solar-Panel",
    order = "",
    setting_type = "startup",
    default_value = "behemoth",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --Accumulator
  {
    type = "string-setting",
    name = "RU-Accumulator",
    order = "",
    setting_type = "startup",
    default_value = "behemoth",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --substation
  {
    type = "string-setting",
    name = "RU-Substation",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --lamp
  {
    type = "string-setting",
    name = "RU-Lamp",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
--      "behemoth"
    },
  },
  --beacon
  {
    type = "string-setting",
    name = "RU-Beacon",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
--      "behemoth"
    },
  },
  --walkable beacon
  {
    type = "string-setting",
    name = "RU-Walkable-Beacon",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
--      "behemoth"
    },
  },    
  --logistic = belt/splitter/underground
  {
    type = "string-setting",
    name = "RU-Logistic",
    order = "",
    setting_type = "startup",
    default_value = "big",
    allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },
  --Inserter
  {
  type = "string-setting",
  name = "RU-Inserter",
  order = "",
  setting_type = "startup",
  default_value = "big",
  allowed_values =
    {
      "nothing",
      "basic",
      "medium",
      "big",
      "behemoth"
    },
  },

  --beacon Productivity
  {
    type = "bool-setting",
    name = "RU-Beacon-Productivity",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },

  --Inventory size
  {
    type = "int-setting",
    name = "ru-inventory-size",
    order = "",
    setting_type = "startup",
    default_value = 60,
    minimum_value = 20,
    maximum_value = 2000,
  },
  --reach distance
  {
    type = "int-setting",
    name = "ru-reach-distance",
    order = "",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 1000,
  },
  --Mining reach
  {
    type = "int-setting",
    name = "ru-mine-reach",
    order = "",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 1000,
  },
  --Mining speed
  {
    type = "double-setting",
    name = "ru-mining-speed",
    order = "",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0.01,
    maximum_value = 1000,
  },
  --hp
  {
    type = "int-setting",
    name = "RU-hp",
    order = "",
    setting_type = "startup",
    default_value = 250,
    minimum_value = 1,
    maximum_value = 250000,
  },
  --hp recovery
  {
    type = "double-setting",
    name = "RU-hp-recovery",
    order = "",
    setting_type = "startup",
    default_value = 0.15,
    minimum_value = 0.1,
    maximum_value = 1500,
  },
  --bot speed
  {
    type = "double-setting",
    name = "RU-botspeed-base-bot-speed",
    order = "",
    setting_type = "startup",
    default_value = 0.1,
    minimum_value = 0.06,
    maximum_value = 1,
  },
  --No Crafting Time
  {
    type = "bool-setting",
    name = "RU-No-Crafting-Time",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU Better Cable Visibility
  {
    type = "bool-setting",
    name = "RU-Better-Cable-Visibility",
    order = "bj",
    setting_type = "startup",
    default_value = "true",
  },
  --Enable wire Shortcuts
  {
    type = "bool-setting",
    name = "RU-Enable-Wire-Shortcuts",
    order = "bla",
    setting_type = "startup",
    default_value = "true",
  },
  --mantain Wire crafting
  {
    type = "bool-setting",
    name = "wire-shortcuts-is-retain-wire-crafting",
    order = "blb",
    setting_type = "startup",
    default_value = false,
  },
  --collision box tree
  {
    type = "bool-setting",
    name = "ru-trees",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --AlternativeRecipe DISABLED
  {
    type = "bool-setting",
    name = "RU-AlternativeRecipe",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --CheatyRecipe DISABLED
  {
    type = "bool-setting",
    name = "RU-CheatyRecipe",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Assembler-liquid-Imput-Output
  {
    type = "bool-setting",
    name = "RU-Assembler-liquid-Imput-Output",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Assembling-Machine-Imput-Output
  {
      type = "bool-setting",
      name = "RU-Assembling-Machine-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Chemical-Plant-Imput-Output
  {
      type = "bool-setting",
      name = "RU-Chemical-Plant-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Oil-Refineries-Imput-Output
  {
      type = "bool-setting",
      name = "RU-Oil-Refineries-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },


  --small electric pole wire reach
  {
    type = "double-setting",
    name = "small-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    default_value = 7.5,
    minimum_value = 2.5,
  },
  --small electric pole supply area
  {
    type = "double-setting",
    name = "small-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    default_value = 5,
    minimum_value = 3,
  },
  --medium electric pole wire reach
  {
    type = "double-setting",
    name = "medium-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    default_value = 9,
    minimum_value = 2.5,
  },
  --medium electric pole supply area
  {
    type = "double-setting",
    name = "medium-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    default_value = 7,
    minimum_value = 3,
  },
  --big electric pole wire reach
  {
    type = "double-setting",
    name = "big-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    default_value = 30,
    minimum_value = 3,
  },
  --big electric pole supply area
  {
    type = "double-setting",
    name = "big-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 4,
  },
  --vanilla substation wire reach
  {
    type = "double-setting",
    name = "substation-max-wire-distance",
    order = "",
    setting_type = "startup",
    default_value = 18,
    minimum_value = 3,
  },
  --vanilla substation supply area
  {
    type = "double-setting",
    name = "substation-supply-area-distance",
    order = "",
    setting_type = "startup",
    default_value = 18,
    minimum_value = 4,
  },

  --stack size multiplier
  {
    type = "double-setting",
    name = "RU-Stack-Size",
    order = "",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 2147483647,
  },
  --enable stack size Contruction Robot
  {
    type = "bool-setting",
    name = "RU-Stack-Size-CRobot",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --enable stack size Logistic Robot
  {
    type = "bool-setting",
    name = "RU-Stack-Size-LRobot",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --Quick Start
  {
    type = "string-setting",
    name = "ru-quick-start",
    order = "",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = {"Nothing", "Small amount", "Medium amount", "big amount", "Huge amount"},
  },
  --Quick Start Modular Armor
  {
    type = "string-setting",
    name = "ru-armor-quick-start",
    order = "",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = selectable_armors,
  },
  --Quick Start Train technology
  {
    type = "bool-setting",
    name = "ru-train-technology",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --Quick Start Robot technology
  {
    type = "bool-setting",
    name = "ru-robot-technology",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },

  --space exploration integration
  {
    type = "bool-setting",
    name = "Ru-space-exploration-integrations",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },

  --angel warehouse 
  {
    type = "int-setting",
    name = "RU-angels-warehouse",
    hidden = "true",
    order = "a",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --angel logistic warehouse 
  {
    type = "int-setting",
    name = "RU-angels-logistic-warehouse",
    hidden = "true",
    order = "ab",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --krastorio2 medium container
  {
    type = "int-setting",
    name = "Ru-Krastorio2-medium-container",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
  },
  --krastorio2 medium logistic container
  {
    type = "int-setting",
    name = "Ru-Krastorio2-medium-logistic-container",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
  },
  --krastorio2 big container
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-container",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --krastorio2 big logistic container
  {
    type = "int-setting",
    name = "Ru-Krastorio2-big-logistic-container",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },

  --angel pressuretank
  {
    type = "int-setting",
    name = "Ru-Angel-Pressuretank",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
  --Krastorio2 big fluid storage
  {
    type = "int-setting",
    name = "Ru-kr-fluid-storage-1",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 1000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
  --Krastorio2 huge fluid storage
  {
    type = "int-setting",
    name = "Ru-kr-fluid-storage-2",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
})