
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