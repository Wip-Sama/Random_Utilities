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
    order = "aa",
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
    order = "ab",
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
    order = "ag",
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
  --Accumulator OK
  {
    type = "string-setting",
    name = "RU-Accumulator",
    order = "ah",
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
  --substation OK
  {
    type = "string-setting",
    name = "RU-Substation",
    order = "ai",
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
    order = "aj",
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
    order = "al",
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
    order = "am",
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
    order = "an",
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
  order = "ao",
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
  --Infinite Repairer OK
  {
    type = "bool-setting",
    name = "RU-Infinite-Repairer",
    order = "as",
    setting_type = "startup",
    default_value = "true",
  },

  --beacon Productivity
  {
    type = "bool-setting",
    name = "RU-Beacon-Productivity",
    order = "ba",
    setting_type = "startup",
    default_value = "true",
  },
  --beacon Productivity
  {
    type = "bool-setting",
    name = "RU-Disable-Productivity-Limitation",
    order = "bb",
    setting_type = "startup",
    default_value = "true",
  },
  --behemoth logistics tweaks
  {
    type = "string-setting",
    name = "ru-behemoth-logistics-tweaks",
    order = "bc",
    setting_type = "startup",
    default_value = "360",
    allowed_values =
    {
      "360",
      "640",
      "1280",
    },
  },


  --Inventory size OK
  {
    type = "int-setting",
    name = "ru-inventory-size",
    order = "ca",
    setting_type = "startup",
    default_value = 80,
    minimum_value = 20,
    maximum_value = 2000,
  },
  --stack size multiplier OK
  {
    type = "double-setting",
    name = "RU-Stack-Size",
    order = "cb",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 2147483647,
  },
  --enable stack size Contruction Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-CRobot",
    order = "cc",
    setting_type = "startup",
    default_value = "true",
  },
  --enable stack size Logistic Robot OK
  {
    type = "bool-setting",
    name = "RU-Stack-Size-LRobot",
    order = "cd",
    setting_type = "startup",
    default_value = "true",
  },
  --reach distance OK
  {
    type = "int-setting",
    name = "ru-reach-distance",
    order = "ce",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 100000,
  },
  --Mining reach OK
  {
    type = "int-setting",
    name = "ru-mine-reach",
    order = "cf",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    maximum_value = 100000,
  },
  --Mining speed OK
  {
    type = "double-setting",
    name = "ru-mining-speed",
    order = "cg",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 0.01,
    maximum_value = 1000,
  },
  --hp OK
  {
    type = "int-setting",
    name = "RU-hp",
    order = "ch",
    setting_type = "startup",
    default_value = 250,
    minimum_value = 1,
    maximum_value = 250000,
  },
  --hp recovery OK
  {
    type = "double-setting",
    name = "RU-hp-recovery",
    order = "cia",
    setting_type = "startup",
    default_value = 0.15,
    minimum_value = 0.1,
    maximum_value = 1500,
  },
  --running speed
  {
    type = "double-setting",
    name = "RU-running-speed",
    order = "cib",
    setting_type = "startup",
    default_value = 0,
    minimum_value = -100,
    maximum_value = 100,
  },
  --bot speed OK
  {
    type = "double-setting",
    name = "RU-botspeed",
    order = "cj",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 1,
  },
  --No Crafting Time OK
  {
    type = "bool-setting",
    name = "RU-No-Crafting-Time",
    order = "ck",
    setting_type = "startup",
    default_value = "false",
  },
  --RU Better Cable Visibility OK
  {
    type = "bool-setting",
    name = "RU-Better-Cable-Visibility",
    order = "cl",
    setting_type = "startup",
    default_value = "true",
  },
  --Enable wire Shortcuts OK
  {
    type = "bool-setting",
    name = "RU-Enable-Wire-Shortcuts",
    order = "cm",
    setting_type = "startup",
    default_value = "true",
  },
  --mantain Wire crafting OK
  {
    type = "bool-setting",
    name = "wire-shortcuts-is-retain-wire-crafting",
    order = "cn",
    setting_type = "startup",
    default_value = false,
  },
  --AlternativeRecipe DISABLED NO
  {
    type = "bool-setting",
    name = "RU-AlternativeRecipe",
    hidden = "true",
    order = "co",
    setting_type = "startup",
    default_value = "false",
  },
  --CheatyRecipe DISABLED NO
  {
    type = "bool-setting",
    name = "RU-CheatyRecipe",
    hidden = "true",
    order = "cp",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Machine-liquid-Imput-Output OK
  {
    type = "bool-setting",
    name = "RU-Machine-liquid-Imput-Output",
    order = "cq",
    setting_type = "startup",
    default_value = "false",
  },
  --RU-Assembling-Machine-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Assembling-Machine-Imput-Output",
      order = "cr",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Chemical-Plant-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Chemical-Plant-Imput-Output",
      order = "cs",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-Oil-Refineries-Imput-Output OK
  {
      type = "bool-setting",
      name = "RU-Oil-Refineries-Imput-Output",
      order = "ct",
      setting_type = "startup",
      default_value = "true",
  },
  --RU-MiniEquipment OK
  {
    type = "bool-setting",
    name = "RU-MiniEquipment",
    order = "cu",
    setting_type = "startup",
    default_value = "true",
},

  --small electric pole wire reach OK
  {
    type = "double-setting",
    name = "small-electric-pole-max-wire-distance",
    order = "da",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 7.5,
    minimum_value = 2.5,
  },
  --small electric pole supply area OK
  {
    type = "double-setting",
    name = "small-electric-pole-supply-area-distance",
    order = "db",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 5,
    minimum_value = 3,
  },
  --medium electric pole wire reach OK
  {
    type = "double-setting",
    name = "medium-electric-pole-max-wire-distance",
    order = "dc",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 9,
    minimum_value = 2.5,
  },
  --medium electric pole supply area OK
  {
    type = "double-setting",
    name = "medium-electric-pole-supply-area-distance",
    order = "dd",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 7,
    minimum_value = 3,
  },
  --big electric pole wire reach OK
  {
    type = "double-setting",
    name = "big-electric-pole-max-wire-distance",
    order = "de",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 30,
    minimum_value = 3,
  },
  --big electric pole supply area OK
  {
    type = "double-setting",
    name = "big-electric-pole-supply-area-distance",
    order = "df",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 4,
    minimum_value = 4,
  },
  --vanilla substation wire reach OK
  {
    type = "double-setting",
    name = "substation-max-wire-distance",
    order = "dg",
    setting_type = "startup",
    maximum_value = 64,
    default_value = 18,
    minimum_value = 3,
  },
  --vanilla substation supply area OK
  {
    type = "double-setting",
    name = "substation-supply-area-distance",
    order = "dh",
    setting_type = "startup",
    maximum_value = 128,
    default_value = 18,
    minimum_value = 4,
  },

  --Quick Start OK
  {
    type = "string-setting",
    name = "ru-quick-start",
    order = "ea",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = 
    {
      "Nothing", 
      "Basic", 
      "Medium", 
      "Big", 
      "Huge",
      "Behemoth"
    },
  },
  --Quick Start Armor OK
  {
    type = "string-setting",
    name = "ru-armor-quick-start",
    order = "eb",
    setting_type = "startup",
    default_value = "Nothing",
    allowed_values = selectable_armors,
  },
  --Quick Start spidertron OK
  {
    type = "bool-setting",
    name = "ru-quick-start-spidetron",
    order = "ec",
    setting_type = "startup",
    default_value = "false",
  },
  --Quick Start Train technology OK
  {
    type = "bool-setting",
    name = "ru-train-technology",
    order = "ed",
    setting_type = "startup",
    default_value = "false",
  },
  --Quick Start Robot technology OK
  {
    type = "bool-setting",
    name = "ru-robot-technology",
    order = "ee",
    setting_type = "startup",
    default_value = "false",
  },

  --space exploration integration OK
  {
    type = "bool-setting",
    name = "Ru-space-exploration-integrations",
    hidden = "true",
    order = "fa",
    setting_type = "startup",
    default_value = "true",
  },
  --angel integration OK
  {
    type = "bool-setting",
    name = "RU-angel-integrations",
    hidden = "true",
    order = "fb",
    setting_type = "startup",
    default_value = "true",
  },

  --angel warehouse OK
  {
    type = "int-setting",
    name = "RU-angels-warehouse",
    hidden = "true",
    order = "ga",
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
    order = "gb",
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
    order = "gc",
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
    order = "gd",
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
    order = "ge",
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
    order = "gf",
    setting_type = "startup",
    default_value = 1800,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --Juicy Mods big generic chest OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-big-generic-chest",
    hidden = "true",
    order = "gg",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
  },
  --Juicy Mods big logistic chest OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-big-logistic-chest",
    hidden = "true",
    order = "gh",
    setting_type = "startup",
    default_value = 400,
    minimum_value = 1,
    maximum_value = 10000,
  },
  --Juicy Mods generic warehoude OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-generic-warehoude",
    hidden = "true",
    order = "gi",
    setting_type = "startup",
    default_value = 2000,
    minimum_value = 1,
    maximum_value = 65535,
  },
  --Juicy Mods logistic warehoude OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-logistic-warehoude",
    hidden = "true",
    order = "gj",
    setting_type = "startup",
    default_value = 2000,
    minimum_value = 1,
    maximum_value = 65535,
  },

  --angel pressuretank OK
  {
    type = "int-setting",
    name = "Ru-Angel-Pressuretank",
    hidden = "true",
    order = "ha",
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
    order = "hb",
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
    order = "hc",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
  --Juicy Mods fs 50 OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-fs-50",
    hidden = "true",
    order = "hd",
    setting_type = "startup",
    default_value = 1000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
  --Juicy Mods fs 200 OK
  {
    type = "int-setting",
    name = "RU-juicy-mods-fs-200",
    hidden = "true",
    order = "he",
    setting_type = "startup",
    default_value = 100000,
    minimum_value = 1,
    maximum_value = 100000000,
  },
})