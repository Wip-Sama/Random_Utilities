--This function loads the menu and populates the frames with data
function loadQSMenu(player, force)
    if not player.valid then return end
    local playerGui = player.gui.left

    --check the menu isnt loaded, if force is true then flush the menu first
    if loaded ~= nil then 
        if force ~= nil then 
            flushQSMenu(player)
        else
            return
        end
    end

    --Build and get our items list
    getGameItemList()

    local mainFrame = addFrame(playerGui, "layout", nil, true, "horizontal")
    local menuFrame = addFrame(mainFrame, "menu", nil, true)
    local searchFrame = addFrame(mainFrame, "search", nil, false)
    searchFrame.add{name = "qsMenu-input-search", type = "textfield"}
    addTable(addScrollPane(searchFrame), "search", "search", 4)
    searchFrame.add{name = "qsMenu-checkbox-check-all", type = "checkbox", caption = "Check all", state = false}

    --menuHeader
    local menuTable = addTable(menuFrame, "header", "header", 3)
    addButton(menuTable, "search")
    addLabel(menuTable, "menu", "menu", "qsMenu")
    addButton(menuTable, "close")

    --loops qsMenu and builds a button and the display frame for items belonging to this button
    for fName, iData in pairs(qsMenu) do
        --menu frame button
        addButton(menuFrame, fName, fName, "menu")
        --frame for the catagories
        local frame = addFrame(mainFrame, fName, "main", false)
        addLabel(frame, "header", "header", "Choose your loadout")
        --table and data
        local table = addTable(addScrollPane(frame), fName, "main", 4)
        for __, item in pairs(iData) do
            buildTableData(table, item[1], searchIndex[item[1]][2], false)
        end
        frame.add{name = "qsMenu-checkbox-check-all", type = "checkbox", caption = "Check all", state = false}
    end

    --Apply button
    addButton(menuFrame, "apply", "Apply Items", "apply")

    --overview frame
    local overViewFrame = addFrame(mainFrame, "overview", "overview", false)
    addLabel(overViewFrame, "header", "header", "Choosen loadout")
    local overViewTable = addTable(addScrollPane(overViewFrame, "overview"), "overview", nil, 4)

    loaded = true 
end

--flush gui, clears everything
function flushQSMenu(player)
    clearActiveFrame(player)
    for __, child in pairs(player.gui.left.children_names) do
        if str_find(child, qsConfig.prefix) then
            player.gui.left[child].visible = false
            player.gui.left[child].destroy()
        end
    end
    loaded = nil
end


function buildTableData(table, name, amt, state)
    table.add{name = "qsMenu-checkbox-" ..   name, type = "checkbox", state = state}
    table.add{name = "qsMenu-image-" ..      name, type = "sprite-button", style = "slot_button", sprite = "item/" .. name}
    table.add{name = "qsMenu-amount-" ..     name, type = "textfield", text = amt and amt or searchIndex[name][2], style = "short_number_textfield" }
    table.add{name = "qsMenu-info-" ..       name, type = "label", caption = searchIndex[name][3] }
end

--updates the search frame as the user types
function updateSearchFrame(player)
    --remove the old table and make a new one, we must update activeTable aswell with the new table ref
    activeTable = flushSearchTable(player)
    local text = getFrame(player, "search")
    text = text["qsMenu-input-search"].text
    for item, info in pairs(searchIndex) do
        local cat = info[1]
        local name = info[3]
        if str_find(str_replace(item:lower(), "%-", " "), text:lower()) or str_find(str_replace(item:lower(), "_", " "), text:lower()) then
            local realTable = getTablePane(getFrame(player, cat), cat)
            local amount = realTable["qsMenu-amount-" .. item].text
            local state = realTable["qsMenu-checkbox-" .. item].state
            buildTableData(activeTable, item, amount, state)
        end
    end
end

--Clears the search results, and input if reset is true
function flushSearchTable(player, reset)
    getTablePane(getFrame(player, "search"), "search").destroy()
    if reset ~= nil then
        local text = getFrame(player, "search")
        text["qsMenu-input-search"].text = ""
        text["qsMenu-checkbox-check-all"].state = false
    end
    return addTable(getScrollPane(getFrame(player, "search")), "search", "search", 4)
end

--Updates a checkbox state in a given frame
function updateCheckboxState(player, frame, field, value)
    local table = getTablePane(getFrame(player, frame), frame)
    if table[field] then
        table[field].state = value
    end
end

--as above but updates the text field
function updateTextValue(player, frame, field, value)
    local table = getTablePane(getFrame(player, frame), frame)
    if table[field] then
        table[field].text = value
    end
end

--This function adds or removes a item from the "overview" frame
function addRemoveItemOverview(player, name, add)
    local frame = getFrame(player, "overview")
    local table = getTablePane(frame, "overview", "overview")
    local sprite = "item/" .. getName(name)
    local name = qsConfig.prefix .. "-overview-" .. getName(name)

    if add then
        if not table[name] then
            itemOverviewCounter = itemOverviewCounter + 1
            table.add{name = name, type = "sprite-button", tooltip ="click to remove this item", style = "slot_button", sprite = sprite}
        end
    else
        if table[name] then
            itemOverviewCounter = itemOverviewCounter - 1
            table[name].destroy()
        end
    end
    if itemOverviewCounter > 0 then
        frame.visible = true
    else
        frame.visible = false
    end
end

