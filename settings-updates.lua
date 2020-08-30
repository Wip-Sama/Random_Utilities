if mods["angelsindustries"] then
  data.raw["bool-setting"]["RU-angel-integrations"].hidden = false
end

if mods["angelsaddons-warehouses"] then
  data.raw["int-setting"]["RU-angels-warehouse"].hidden = false
  data.raw["int-setting"]["RU-angels-logistic-warehouse"].hidden = false
end

if mods["angelsaddons-pressuretanks"] then
  data.raw["int-setting"]["Ru-Angel-Pressuretank"].hidden = false
end

if mods["Krastorio2"] then
  data.raw["int-setting"]["Ru-Krastorio2-medium-container"].hidden = false
  data.raw["int-setting"]["Ru-Krastorio2-medium-logistic-container"].hidden = false
  data.raw["int-setting"]["Ru-Krastorio2-big-container"].hidden = false
  data.raw["int-setting"]["Ru-Krastorio2-big-logistic-container"].hidden = false
  data.raw["int-setting"]["Ru-kr-fluid-storage-1"].hidden = false
  data.raw["int-setting"]["Ru-kr-fluid-storage-2"].hidden = false
end

if mods["space-exploration"] then
  data.raw["bool-setting"]["Ru-space-exploration-integrations"].hidden = false
end

if mods["omnimatter_fluid"] then
  data.raw["bool-setting"]["RU-Machine-liquid-Imput-Output"].hidden = true
  data.raw["bool-setting"]["RU-Assembling-Machine-Imput-Output"].hidden = true
  data.raw["bool-setting"]["RU-Chemical-Plant-Imput-Output"].hidden = true
  data.raw["bool-setting"]["RU-Oil-Refineries-Imput-Output"].hidden = true
end