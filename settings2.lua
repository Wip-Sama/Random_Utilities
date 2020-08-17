local selectable_armors = {"Nothing", "Modular armor", "Power armor", "Power armor MK2"}
-- Power Armor MK3
if mods["Power Armor MK3"] then
    table.insert(selectable_armors, "Power armor MK3") -- aggiunge alla fine 
    table.insert(selectable_armors, "Power armor MK4")
end

data:extend({
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
  --accumulator
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
  --belt
  {
    type = "string-setting",
    name = "RU-Belt",
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
})