--More Visible Wire
local core_graphics = "__Random_Utilities__/graphics"

if settings.startup["RU-Better-Cable-Visibility"] then
data.raw["utility-sprites"]["default"]["copper_wire"].filename                      = core_graphics .. "/copper-wire.png"
data.raw["utility-sprites"]["default"]["copper_wire"].hr_version.filename           = core_graphics .. "/hr-copper-wire.png"
data.raw["utility-sprites"]["default"]["green_wire"].filename                       = core_graphics .. "/green-wire.png"
data.raw["utility-sprites"]["default"]["green_wire"].hr_version.filename            = core_graphics .. "/hr-green-wire.png"
data.raw["utility-sprites"]["default"]["red_wire"].filename                         = core_graphics .. "/red-wire.png"
data.raw["utility-sprites"]["default"]["red_wire"].hr_version.filename              = core_graphics .. "/hr-red-wire.png"
data.raw["utility-sprites"]["default"]["wire_shadow"].filename                      = core_graphics .. "/wire-shadow.png"
data.raw["utility-sprites"]["default"]["wire_shadow"].hr_version.filename           = core_graphics .. "/hr-wire-shadow.png"
data.raw["utility-sprites"]["default"]["wire_shadow"].filename                      = core_graphics .. "/wire-shadow.png"
data.raw["utility-sprites"]["default"]["wire_shadow"].hr_version.filename           = core_graphics .. "/hr-wire-shadow.png"
data.raw["utility-sprites"]["default"]["green_wire_hightlight"].filename            = core_graphics .. "/wire-highlight.png"
data.raw["utility-sprites"]["default"]["green_wire_hightlight"].hr_version.filename = core_graphics .. "/hr-wire-highlight.png"
data.raw["utility-sprites"]["default"]["red_wire_hightlight"].filename              = core_graphics .. "/wire-highlight.png"
data.raw["utility-sprites"]["default"]["red_wire_hightlight"].hr_version.filename   = core_graphics .. "/hr-wire-highlight.png"
end

if mods["deadlock-beltboxes-loaders"] then
deadlock.add_tier({
  transport_belt      = "RU-Basic-Transport-Belt",
  colour              = {r=197, g=174, b=69},
  underground_belt    = "RU-Basic-Underground-Belt",
  splitter            = "RU-Basic-Splitter",
order               = "d",
loader_ingredients  = {
  {"iron-gear-wheel", 20},
  {"RU-Basic-Transport-Belt", 2},
  {"RU-Basic-Stack-Inserter", 1},
  {"electronic-circuit", 4},
},
beltbox_ingredients = {
  {"express-transport-belt-beltbox",1},
  {"iron-plate",30},
  {"iron-gear-wheel",30},
  {"electronic-circuit",10},
},
technology          = "RU-Logistics-a",
beltbox_technology  = "RU-Logistics-a",
})
deadlock.add_tier({
  transport_belt      = "RU-Medium-Transport-Belt",
  colour              = {r=215, g=59, b=65},
  underground_belt    = "RU-Medium-Underground-Belt",
  splitter            = "RU-Medium-Splitter",
order               = "e",
loader_ingredients  = {
  {"iron-gear-wheel", 20},
  {"RU-Medium-Transport-Belt", 2},
  {"RU-Medium-Stack-Inserter", 1},
  {"electronic-circuit", 4},
},
beltbox_ingredients = {
  {"RU-Basic-Transport-Belt-beltbox",1},
  {"iron-plate",30},
  {"iron-gear-wheel",30},
  {"electronic-circuit",10},
},
technology          = "RU-Logistics-b",
beltbox_technology  = "RU-Logistics-b",
})
deadlock.add_tier({
  transport_belt      = "RU-Big-Transport-Belt",
  colour              = {r=83, g=177, b=192},
  underground_belt    = "RU-Big-Underground-Belt",
  splitter            = "RU-Big-Splitter",

order               = "f",
loader_ingredients  = {
  {"iron-gear-wheel", 20},
  {"RU-Big-Transport-Belt", 2},
  {"RU-Big-Stack-Inserter", 1},
  {"electronic-circuit", 4},
},
beltbox_ingredients = {
  {"RU-Medium-Transport-Belt-beltbox",1},
  {"iron-plate",30},
  {"iron-gear-wheel",30},
  {"electronic-circuit",10},
},
technology          = "RU-Logistics-c",
beltbox_technology  = "RU-Logistics-c",
})
deadlock.add_tier({
  transport_belt      = "RU-Behemoth-Transport-Belt",
  colour              = {r=57, g=96, b=103},
  underground_belt    = "RU-Behemoth-Underground-Belt",
  splitter            = "RU-Behemoth-Splitter",
order               = "g",
loader_ingredients  = {
  {"iron-gear-wheel", 20},
  {"RU-Behemoth-Transport-Belt", 2},
  {"RU-Behemoth-Stack-Inserter", 1},
  {"electronic-circuit", 4},
},
beltbox_ingredients = {
  {"RU-Big-Transport-Belt-beltbox",1},
  {"iron-plate",30},
  {"iron-gear-wheel",30},
  {"electronic-circuit",10},
},
technology          = "RU-Logistics-d",
beltbox_technology  = "RU-Logistics-d",
})
end

--Assembler Imput-Output
appmod.blacklist['escape-pod-assembler'] = true

appmod.blacklist['assembling-machine'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value
appmod.blacklist['assembling-machine-2'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value
appmod.blacklist['assembling-machine-3'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value

appmod.blacklist['oil-refinery'] = not settings.startup['RU-Oil-Refineries-Imput-Output'].value
appmod.blacklist['chemical-plant'] = not settings.startup['RU-Chemical-Plant-Imput-Output'].value

if mods['aai-industry'] then
  require('integrations/aai-industry')
end

if mods['angelsbioprocessing'] then
  require('integrations/angelsbioprocessing')
end
if mods['angelssmelting'] then
  require('integrations/angelssmelting')
end
if mods['angelspetrochem'] then
  require('integrations/angelspetrochem')
end

if mods['AquiferDrill'] then
  require('integrations/AquiferDrill')
end

if mods['bobassembly'] then
  require('integrations/bobassembly')
end
if mods['bobplates'] then
  require('integrations/bobplates')
end

if mods['BoreHole'] then
  require('integrations/BoreHole')
end

if mods['CW-hydrogen-power'] then
  require('integrations/CW-hydrogen-power')
end

if mods['deep_storage_unit'] then
  require('integrations/deep_storage_unit')
end

if mods['expanded-rocket-payloads'] then
  require('integrations/expanded-rocket-payloads')
end

if mods['Geothermal'] then
  require('integrations/Geothermal')
end

if mods['Load-Furn'] then
  require('integrations/Load-Furn')
end

if mods['Mining_Drones'] then
  require('integrations/Mining_Drones')
end

if mods['NPUtils'] then
  require('integrations/NPUtils')
end

if mods['omnimatter'] then
  require('integrations/omnimatter')
end

if mods['Power_to_Liquid_Updated'] then
  require('integrations/Power_to_Liquid_Updated')
end

if mods['reverse-factory'] then
  require('integrations/reverse-factory')
end

if mods['space-exploration'] then
  require('integrations/space-exploration')
end

if mods['trainConstructionSite'] then
  require('integrations/trainConstructionSite')
end

if mods['transport_drones'] then
  require('integrations/transport_drones')
end

if mods['whistlestopfactories'] then
  require('integrations/whistlestopfactories')
end

if mods['yi_engines'] then
  require('integrations/yi_engines')
end
if mods['Yuoki'] then
  require('integrations/Yuoki')
end

--personally added

if mods['Krastorio2'] then
  require('integrations/Krastorio2')
end

if mods['space-exploration'] then
  require('integrations/spexploration')
end


if mods['MicroFurnaceWipMod'] then
  require('integrations/MicroFurnaceWipMod')
end

if mods['omnimatter_wood'] then
  require('integrations/omniwood')
end
