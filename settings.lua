local selectable_armors = {"Nothing", "Modular armor", "Power armor", "Power armor MK2"}

-- Power Armor MK3
if mods["Power Armor MK3"] then
    table.insert(selectable_armors, "Power armor MK3")
    table.insert(selectable_armors, "Power armor MK4")
end

data:extend({
  --Boiler OK
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
  --Steam Engine OK
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
  --Solar panel OK
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
  --Accumulator OK
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
  --substation OK
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
  --lamp OK
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
  --beacon OK
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
  --walkable beacon OK
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
  --logistic = belt/splitter/underground OK
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
  --Inserter OK
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

  --beacon Productivity OK
  {
    type = "bool-setting",
    name = "RU-Beacon-Productivity",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },

  --Inventory size OK
  {
    type = "int-setting",
    name = "ru-inventory-size",
    order = "",
    setting_type = "startup",
    default_value = 60,
    minimum_value = 20,
    maximum_value = 2000,
  },
  --stack size multiplier OK
  {
    type = "double-setting",
    name = "RU-Stack-Size",
    order = "",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 2147483647,
  },
  --enable stack size Contruction Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-CRobot",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --enable stack size Logistic Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-LRobot",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --reach distance OK
  {
    type = "int-setting",
    name = "ru-reach-distance",
    order = "",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 1000,
  },
  --Mining reach OK
  {
    type = "int-setting",
    name = "ru-mine-reach",
    order = "",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 1000,
  },
  --Mining speed OK
  {
    type = "double-setting",
    name = "ru-mining-speed",
    order = "",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0.01,
    maximum_value = 1000,
  },
  --hp OK
  {
    type = "int-setting",
    name = "RU-hp",
    order = "",
    setting_type = "startup",
    default_value = 250,
    minimum_value = 1,
    maximum_value = 250000,
  },
  --hp recovery OK
  {
    type = "double-setting",
    name = "RU-hp-recovery",
    order = "",
    setting_type = "startup",
    default_value = 0.15,
    minimum_value = 0.1,
    maximum_value = 1500,
  },
  --bot speed OK?
  {
    type = "double-setting",
    name = "RU-botspeed",
    order = "",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 1,
  },
  --No Crafting Time OK
  {
    type = "bool-setting",
    name = "RU-No-Crafting-Time",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU Better Cable Visibility OK
  {
    type = "bool-setting",
    name = "RU-Better-Cable-Visibility",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --Enable wire Shortcuts OK
  {
    type = "bool-setting",
    name = "RU-Enable-Wire-Shortcuts",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --mantain Wire crafting OK
  {
    type = "bool-setting",
    name = "wire-shortcuts-is-retain-wire-crafting",
    order = "",
    setting_type = "startup",
    default_value = false,
  },
  --AlternativeRecipe DISABLED NO
  {
    type = "bool-setting",
    name = "RU-AlternativeRecipe",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --CheatyRecipe DISABLED NO
  {
    type = "bool-setting",
    name = "RU-CheatyRecipe",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Machine-liquid-Imput-Output OK
  {
    type = "bool-setting",
    name = "RU-Machine-liquid-Imput-Output",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Assembling-Machine-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Assembling-Machine-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Chemical-Plant-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Chemical-Plant-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Oil-Refineries-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Oil-Refineries-Imput-Output",
      order = "",
      setting_type = "startup",
      default_value = "true",
  },

  --small electric pole wire reach OK
  {
    type = "double-setting",
    name = "small-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 7.5,
    minimum_value = 2.5,
  },
  --small electric pole supply area OK
  {
    type = "double-setting",
    name = "small-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 5,
    minimum_value = 3,
  },
  --medium electric pole wire reach OK
  {
    type = "double-setting",
    name = "medium-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 9,
    minimum_value = 2.5,
  },
  --medium electric pole supply area OK
  {
    type = "double-setting",
    name = "medium-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 7,
    minimum_value = 3,
  },
  --big electric pole wire reach OK
  {
    type = "double-setting",
    name = "big-electric-pole-max-wire-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 30,
    minimum_value = 3,
  },
  --big electric pole supply area OK
  {
    type = "double-setting",
    name = "big-electric-pole-supply-area-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 4,
    minimum_value = 4,
  },
  --vanilla substation wire reach OK
  {
    type = "double-setting",
    name = "substation-max-wire-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 18,
    minimum_value = 3,
  },
  --vanilla substation supply area OK
  {
    type = "double-setting",
    name = "substation-supply-area-distance",
    order = "",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 18,
    minimum_value = 4,
  },

  --Quick Start OK
  {
    type = "string-setting",
    name = "ru-quick-start",
    order = "",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = {"Nothing", "Small amount", "Medium amount", "big amount", "Huge amount"},
  },
  --Quick Start Armor OK
  {
    type = "string-setting",
    name = "ru-armor-quick-start",
    order = "",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = selectable_armors,
  },
  --Quick Start Train technology OK
  {
    type = "bool-setting",
    name = "ru-train-technology",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },
  --Quick Start Robot technology OK
  {
    type = "bool-setting",
    name = "ru-robot-technology",
    order = "",
    setting_type = "startup",
    default_value = "false",
  },

  --space exploration integration OK
  {
    type = "bool-setting",
    name = "Ru-space-exploration-integrations",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },
  --angel integration OK
  {
    type = "bool-setting",
    name = "RU-angel-integrations",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = "true",
  },

  --angel warehouse OK
  {
    type = "int-setting",
    name = "RU-angels-warehouse",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --angel logistic warehouse OK
  {
    type = "int-setting",
    name = "RU-angels-logistic-warehouse",
    hidden = "true",
    order = "",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --krastorio2 medium container OK
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
  --krastorio2 medium logistic container OK
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
  --krastorio2 big container OK
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
  --krastorio2 big logistic container OK
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

  --angel pressuretank OK
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
  --Krastorio2 big fluid storage OK
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
  --Krastorio2 huge fluid storage OK
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