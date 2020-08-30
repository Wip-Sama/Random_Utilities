
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

if settings.startup["RU-angel-integrations"] then
	--spidetrontiers compatibility
	if mods["angelsindustries"] and mods["spidertrontiers"] then
		if mods["bobvehicleequipment"] and mods["spidertrontiers"] then
			if not(settings.startup["bobmods-vehicleequipment-enablevehiclegrids"] == nil) then
				local spidertrontiers_grid_list = {
					"spidertron-mk-1-equipment-grid",
					"spidertron-mk0-equipment-grid",
					"spidertron-mk2-equipment-grid",
					"spidertron-mk3-equipment-grid",
					"prototype-spidertron-equipment-grid",
					"assault-spidertron-mk1-equipment-grid",
					"assault-spidertron-mk2-equipment-grid",
					"bulwark-spidertron-mk1-equipment-grid",
					"bulwark-spidertron-mk2-equipment-grid",
					"scout-spidertron-mk1-equipment-grid",
					"scout-spidertron-mk2-equipment-grid",
					"voyage-spidertron-mk1-equipment-grid",
					"voyage-spidertron-mk2-equipment-grid",
				}
				for index,grid in pairs(spidertrontiers_grid_list) do
					data.raw["equipment-grid"][grid].equipment_categories = {"car", "vehicle", "generator"}
				end
			end
		end
	end
end