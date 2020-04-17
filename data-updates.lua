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

--Assembler Imput-Output
appmod.blacklist['escape-pod-assembler'] = true

appmod.blacklist['assembling-machine'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value
appmod.blacklist['assembling-machine-2'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value
appmod.blacklist['assembling-machine-3'] = not settings.startup['RU-Assembling-Machine-Imput-Output'].value

appmod.blacklist['oil-refinery'] = not settings.startup['RU-Oil-Refineries-Imput-Output'].value
appmod.blacklist['chemical-plant'] = not settings.startup['RU-Chemical-Plant-Imput-Output'].value

if mods['aai-industry'] then require('integrations/aai-industry') end

if mods['Krastorio2'] then require('integrations/Krastorio2') end

if mods['MicroFurnaceWipMod'] then require('integrations/MicroFurnaceWipMod') end

if mods['X100_assembler'] then require('integrations/X100_Assembler') end

if mods['angelsbioprocessing'] then require('integrations/angelsbioprocessing') end
if mods['angelssmelting'] then require('integrations/angelssmelting') end

if mods['AquiferDrill'] then require('integrations/AquiferDrill') end

if mods['bobassembly'] then require('integrations/bobassembly') end
if mods['bobplates'] then require('integrations/bobplates') end

if mods['BoreHole'] then require('integrations/BoreHole') end

if mods['CW-hydrogen-power'] then require('integrations/CW-hydrogen-power') end

if mods['expanded-rocket-payloads'] then require('integrations/expanded-rocket-payloads') end

if mods['Mining_Drones'] then require('integrations/Mining_Drones') end

if mods['NPUtils'] then require('integrations/NPUtils') end

if mods['omnimatter'] then require('integrations/omnimatter') end

if mods['Power_to_Liquid_Updated'] then require('integrations/Power_to_Liquid_Updated') end

if mods['reverse-factory'] then require('integrations/reverse-factory') end

if mods['space-exploration'] then require('integrations/space-exploration') end

if mods['trainConstructionSite'] then require('integrations/trainConstructionSite') end

if mods['yi_engines'] then require('integrations/yi_engines') end
if mods['Yuoki'] then require('integrations/Yuoki') end
