
--Angel Warehouse Size 
if mods["angelsaddons-warehouses"] then
	data.raw.container["angels-warehouse"].inventory_size = settings.startup["RU-angels-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-passive-provider"].inventory_size = settings.startup["RU-angels-logistic-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-active-provider"].inventory_size = settings.startup["RU-angels-logistic-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-storage"].inventory_size = settings.startup["RU-angels-logistic-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-requester"].inventory_size = settings.startup["RU-angels-logistic-warehouse"].value
	data.raw["logistic-container"]["angels-warehouse-buffer"].inventory_size = settings.startup["RU-angels-logistic-warehouse"].value
end
--Angel PressureTank Size 
if mods["angelsaddons-pressuretanks"] then
	data.raw["storage-tank"]["angels-pressure-tank-1"]["fluid_box"].base_area = settings.startup["Ru-Angel-Pressuretank"].value
end

--spidetrontiers compatibility
--[[
if mods["angelsindustries"] and mods["spidertrontiers"] then
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk1-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk2-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk1-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk2-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk1-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk2-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["prototype-spidertron-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["spidertron-mk-1-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["spidertron-mk0-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["spidertron-mk1-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["spidertron-mk2-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["spidertron-mk3-equipment-grid"].equipment_categories,  "generator")
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk1-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk2-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk1-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk2-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk1-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk2-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["prototype-spidertron-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["spidertron-mk-1-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["spidertron-mk0-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["spidertron-mk1-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["spidertron-mk2-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["spidertron-mk3-equipment-grid"].equipment_categories,  "car")
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk1-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["assault-spidertron-mk2-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk1-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["voyage-spidertron-mk2-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk1-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["scout-spidertron-mk2-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["prototype-spidertron-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["spidertron-mk-1-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["spidertron-mk0-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["spidertron-mk1-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["spidertron-mk2-equipment-grid"].equipment_categories,  "vehicle")
	table.insert(data.raw["equipment-grid"]["spidertron-mk3-equipment-grid"].equipment_categories,  "vehicle")
end

local spidertrontier = {
	"assault-spidertron-mk1-equipment-grid", 
	"assault-spidertron-mk2-equipment-grid", 
	"voyage-spidertron-mk1-equipment-grid", 
	"voyage-spidertron-mk2-equipment-grid",
	"scout-spidertron-mk1-equipment-grid", 
	"scout-spidertron-mk2-equipment-grid",
	"prototype-spidertron-equipment-grid", 
	"spidertron-mk-1-equipment-grid",
	"spidertron-mk0-equipment-grid", 
	"spidertron-mk1-equipment-grid", 
	"spidertron-mk2-equipment-grid", 
	"spidertron-mk3-equipment-grid", 
}--]]

if mods["angelsindustries"] and mods["spidertrontiers"] then
	for _, spidertron in pairs(data.raw["equipment-grid"]) do
		--table.insert(spidertron.equipment_categories, "vehicle")
		--table.insert(spidertron.equipment_categories, "car")
		--table.insert(spidertron.equipment_categories, "generator")
		table.insert(spidertron.equipment_categories, "angels-energy")
		table.insert(spidertron.equipment_categories, "angels-repair")
		table.insert(spidertron.equipment_categories, "angels-construction")
		table.insert(spidertron.equipment_categories, "angels-heavy-defense")
		table.insert(spidertron.equipment_categories, "angels-movement")
	end
end