--returns the full name of a givem item
function makeFrameName(s) return qsConfig.prefix .. "-frame-" .. s end
function makeTableName(s) return qsConfig.prefix .. "-table-" .. s end
function makeButtonName(s) return qsConfig.prefix .. "-button-" .. s end
function makeLabelName(s) return qsConfig.prefix .. "-label-" .. s end
function makeCheckboxName(s) return qsConfig.prefix .. "-checkbox-" .. s end
function makeScrollPaneName(s) return qsConfig.prefix .. "-scroll-pane-" ..s end
--these return a GuiElement given the name Eg given NAME returns "qsMenu-ELEMENT-NAME"
function getFrame(player, name, type) 
    local type = type ~= nil and type or "layout"
    return player.gui.left[makeFrameName(type)][makeFrameName(name)] 
end
function getScrollPane(frame, name) return frame[makeScrollPaneName(name and name or "main")] end
function getTable(frame, name) return frame[makeTableName(name)] end
function getButton(frame, name) return frame[makeButtonName(name)] end
--this is a shortcut as most tables have a scrollpane returns "qsMenu-table-NAME"
function getTablePane(frame, name, type) 
    local type = type ~= nil and type or "main"
    return getTable(getScrollPane(frame, type), name) end

--this will return the name of the given element
function getName(name)
    if str_find(name, qsConfig.prefix .. "%-button") then
        return str_replace(name, qsConfig.prefix .. "%-button%-", "")
    end
    if str_find(name, qsConfig.prefix .. "%-checkbox") then
        return str_replace(name, qsConfig.prefix .. "%-checkbox%-", "")
    end
    if str_find(name, qsConfig.prefix .. "%-frame") then
        return str_replace(name, qsConfig.prefix .. "%-frame%-", "")
    end
    if str_find(name, qsConfig.prefix .. "%-amount") then
        return str_replace(name, qsConfig.prefix .. "%-amount%-", "")
    end
    if str_find(name, qsConfig.prefix .. "%-input") then
        return str_replace(name, qsConfig.prefix .. "%-input%-", "")
    end
    if str_find(name, qsConfig.prefix .. "%-overview") then
        return str_replace(name, qsConfig.prefix .. "%-overview%-", "")
    end
    return nil
end

--adds a new frame: qsMenu-frame-NAME
function addFrame(frame, name, style, visible, direction, caption, tooltip)
    local direction = direction and direction == "horizontal" and "horizontal" or "vertical"
    local name = makeFrameName(name)
    local style = style ~= nil and makeFrameName(style) or name
    frame.add{
        name = name, 
        type = "frame", 
        direction = direction, 
        style =style, 
        visible = visible
    }
    if caption ~= nil then
        frame[name].caption = caption
    end
    if tooltip ~= nil then
        frame[name].tooltip = tooltip
    end
    return frame[name]
end

--Adds new table: qsMenu-table-NAME
function addTable(frame, name, style, count)
    local name = makeTableName(name)
    local style = style ~= nil and makeTableName(style) or name
    frame.add{
        type = "table", 
        name = name, 
        column_count = count and count or 1, 
        style = style,
        caption = name,
    }
    return frame[name]
end

--Adds a new button: qsMenu-button-NAME
function addButton(frame, name, caption, style)
    local name = makeButtonName(name)
    local style = style ~= nil and makeButtonName(style) or name
    frame.add{name = name, 
        type = "button", 
        style = style,
    }
    if caption ~= nil then
        frame[name].caption = caption
    end
end

--Adds a new scroll-pane: sqMenu-scroll-pane-NAME
function addScrollPane(frame, name)
    local name = name ~= nil and name or "main"
    name = qsConfig.prefix .. "-scroll-pane-" .. name
    frame.add{type = "scroll-pane", name = name, style = name}
    return frame[name]
end

--adds a new label
function addLabel(frame, name, style, caption)
    local name = makeLabelName(name)
    local style = style ~= nil and makeLabelName(style) or name
    frame.add{name = name, type = "label", caption = caption, style = style}
end

--sets a frame active and highlights the button in the menu
function setActiveFrame(player, name)
    --flush any active buttons
    clearActiveFrame(player)
    if qsMenu[name] ~= nil then
        getButton(getFrame(player, "menu"), name).style = "qsMenu-button-selected"
    end
    activeFrame = getFrame(player, name)
    activeTable = getTablePane(activeFrame, name)
    activeFrame.visible = true
end

--reverse of above
function clearActiveFrame(player)
    if activeFrame then
        local name = getName(activeFrame.name)
        if qsMenu[name] ~= nil then
            getButton(getFrame(player, "menu"), name).style = "qsMenu-button-menu"
        end
        activeFrame.visible = false 
    end
    activeFrame = nil
    activeTable = nil
end