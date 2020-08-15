
if mods["Krastorio2"] then
  --medium container storage size
  data.raw.container["kr-medium-container"].inventory_size = settings.startup["Ru-Krastorio2-medium-container"].value
  data.raw["logistic-container"]["kr-medium-passive-provider-container"].inventory_size = settings.startup["RU-Krastorio2-medium-passive-provider-container"].value
  data.raw["logistic-container"]["kr-medium-active-provider-container"].inventory_size = settings.startup["RU-Krastorio2-medium-active-provider-container"].value
  data.raw["logistic-container"]["kr-medium-storage-container"].inventory_size = settings.startup["RU-Krastorio2-medium-storage-container"].value
  data.raw["logistic-container"]["kr-medium-requester-container"].inventory_size = settings.startup["RU-Krastorio2-medium-requester-container"].value
  data.raw["logistic-container"]["kr-medium-buffer-container"].inventory_size = settings.startup["RU-Krastorio2-medium-buffer-container"].value
  --big container storage size
  data.raw.container["kr-big-container"].inventory_size = settings.startup["Ru-Krastorio2-big-container"].value
  data.raw["logistic-container"]["kr-big-passive-provider-container"].inventory_size = settings.startup["Ru-Krastorio2-big-passive-provider-container"].value
  data.raw["logistic-container"]["kr-big-active-provider-container"].inventory_size = settings.startup["Ru-Krastorio2-big-active-provider-container"].value
  data.raw["logistic-container"]["kr-big-storage-container"].inventory_size = settings.startup["Ru-Krastorio2-big-storage-container"].value
  data.raw["logistic-container"]["kr-big-requester-container"].inventory_size = settings.startup["Ru-Krastorio2-big-requester-container"].value
  data.raw["logistic-container"]["kr-big-buffer-container"].inventory_size = settings.startup["Ru-Krastorio2-big-buffer-container"].value
  --medium-big tank
  data.raw["storage-tank"]["kr-fluid-storage-1"]["fluid_box"].base_area = settings.startup["Ru-kr-fluid-storage-1"].value
  data.raw["storage-tank"]["kr-fluid-storage-2"]["fluid_box"].base_area = settings.startup["Ru-kr-fluid-storage-2"].value
end