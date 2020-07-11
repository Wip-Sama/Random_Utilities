local gui = data.raw["gui-style"].default

--labels
gui["qsMenu-title"] = {
    type = "label_style",
    font_color = {1, 0.5, 0.1},
    font = "default-bold",
    single_line = true,
    minimum_height = 60,
}

gui["qsMenu-label-header"] = {
    type = "label_style",
    font_color = {1, 0.5, 0.1},
    font = "default-bold",
    single_line = true,
    minimum_height = 60,
}
gui["qsMenu-label-menu"] = {
    type = "label_style",
    font_color = {1, 0.5, 0.1},
    font = "default-bold",
    single_line = true,
    minimum_height = 60,
}

--tables
gui["qsMenu-table-main"] = {
    type = "table_style",
    cell_spacing = 1,
    cell_padding = 1,
    horizontal_spacing = 0,
    vertical_spacing = 0,
    top_padding  = 12,
    right_padding = 12,
    bottom_padding = 12,
    left_padding = 12,
    border =
    {
      border_width = 2,
      horizontal_line = {position = {8, 40}, size = {1, 8}},
      left_end = {position = {112, 40}, size = 8},
      right_end = {position = {8, 40}, size = {1, 8}}
    },
    column_widths =
    {
      { -- checkbox
        column = 1,
        width = 22,
        alignment = "middle-right",
      },
      { -- item image
        column = 2,
        width = 38,
        alignment = "middle-left",
      },
      { -- amount
        column = 3,
        width = 80,
      },
      { -- name
        column = 4,
        width = 240,
      },
    }
  }

  gui["qsMenu-table-header"] = {
    type = "table_style",
    cell_spacing = 1,
    cell_padding = 1,
    horizontal_spacing = 0,
    vertical_spacing = 0,
    top_padding  = 0,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    column_widths =
    {
      {
        column = 2,
        width = 144,
        alignment = "middle-right",
      }
    }
  }

  gui["qsMenu-table-overview"] = {
    type = "table_style",
    cell_spacing = 1,
    cell_padding = 1,
    horizontal_spacing = 0,
    vertical_spacing = 0,
    top_padding  = 4,
    right_padding = 4,
    bottom_padding = 4,
    left_padding = 4,

    border =
    {
      border_width = 2,
      horizontal_line = {position = {8, 40}, size = {1, 8}},
      left_end = {position = {112, 40}, size = 8},
      right_end = {position = {8, 40}, size = {1, 8}}
    },
  }

  gui["qsMenu-table-search"] = {
    type = "table_style",
    cell_spacing = 1,
    cell_padding = 1,
    horizontal_spacing = 0,
    vertical_spacing = 0,
    top_padding  = 4,
    right_padding = 4,
    bottom_padding = 4,
    left_padding = 4,
    border =
    {
      border_width = 2,
      horizontal_line = {position = {8, 40}, size = {1, 8}},
      left_end = {position = {112, 40}, size = 8},
      right_end = {position = {8, 40}, size = {1, 8}}
    },
  }

--frames
gui["qsMenu-frame-menu"] = {

    type = "frame_style",
    -- padding of the content area of the frame
    top_padding  = 10,
    right_padding = 10,
    bottom_padding = 10,
    left_padding = 10,
    graphical_set = {
        base = {
          center = {position = {336, 0}, size = {1, 1}},
          opacity = 0.75,
          background_blur = true,
          blend_mode = "multiplicative-with-alpha"
        },
        shadow = default_shadow
    },
}

gui["qsMenu-frame-layout"] = {

    type = "frame_style",

    -- padding of the content area of the frame
    padding = 8,
    graphical_set = {
        base = {
          center = {position = {336, 0}, size = {1, 1}},
          opacity = 0.35,
          background_blur = true,
          blend_mode = "multiplicative-with-alpha"
        },
        shadow = default_shadow
    },
}

gui["qsMenu-frame-main"] = {

    type = "frame_style",
    parent = "qsMenu-frame-layout",
    height = 550,
    padding = 6,
    graphical_set = {
        base = {
          center = {position = {336, 0}, size = {1, 1}},
          opacity = 0.75,
          background_blur = true,
          blend_mode = "multiplicative-with-alpha"
        },
        shadow = default_shadow
      },
}

gui["qsMenu-frame-overview"] = {

    type = "frame_style",
    parent = "qsMenu-frame-layout",
    height = 550,
    width = 194,
    padding = 6,
    graphical_set = {
        base = {
          center = {position = {336, 0}, size = {1, 1}},
          opacity = 0.75,
          background_blur = true,
          blend_mode = "multiplicative-with-alpha"
        },
        shadow = default_shadow
      },
}

gui["qsMenu-frame-search"] = {

    type = "frame_style",
    parent = "qsMenu-frame-layout",
    height = 550,
    padding = 6,
    graphical_set = {
        base = {
          center = {position = {336, 0}, size = {1, 1}},
          opacity = 0.75,
          background_blur = true,
          blend_mode = "multiplicative-with-alpha"
        },
        shadow = default_shadow
      },
}

--scrollpanes
gui["qsMenu-scroll-pane-main"] = {

    type = "scroll_pane_style",
    parent = "scroll_pane",
    height = 480,
    width = 440,
    padding = 2,
    extra_padding_when_activated = 0,
    graphical_set =
    {
      shadow = default_inner_glow(hard_shadow_color, 0.5 * 0.75)
    },
    vertical_flow_style =
    {
      type = "vertical_flow_style",
      parent = "vertical_flow",
      left_padding = 8,
      right_padding = 8,
      top_padding = 4
    }
  }

  gui["qsMenu-scroll-pane-overview"] = {

    type = "scroll_pane_style",
    parent = "scroll_pane",
    height = 500,
    width = 180,
    padding = 2,
    extra_padding_when_activated = 0,
    graphical_set =
    {
      shadow = default_inner_glow(hard_shadow_color, 0.5 * 0.75)
    },
    vertical_flow_style =
    {
      type = "vertical_flow_style",
      parent = "vertical_flow",
      left_padding = 2,
      right_padding = 2,
      top_padding = 2
    }
  }

--buttons
gui["qsMenu-button-menu"]  = {
	type = "button_style",
    parent = "button",
    width = 180,
    height = 36,
    padding = 8,
    	default_graphical_set =
	{
        border = 1,
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		x = 111,
		y = 72
	},
    hovered_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 148,
		y = 72
	},
    clicked_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 185,
		y = 72
    },
}

gui["qsMenu-button-apply"]  = {
	type = "button_style",
    parent = "button",
    width = 180,
    height = 36,
    padding = 8,
    	default_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		x = 111,
		y = 36
	},
    hovered_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 148,
		y = 36
	},
    clicked_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 185,
		y = 36
    },
}

gui["qsMenu-button-selected"]  = {
	type = "button_style",
    parent = "button",
    width = 180,
    height = 36,
    padding = 8,
    	default_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		x = 111,
		y = 108
	},
    hovered_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 148,
		y = 108
	},
    clicked_graphical_set =
	{
		top_border = 1,
		right_border = 1,
		bottom_border = 1,
		left_border = 1,
		filename = "__core__/graphics/gui.png",
		priority = "extra-high-no-scale",
		width = 36,
		height = 36,
		x = 185,
		y = 108
    },
}

gui["qsMenu-button-close"] = {
    type = "button_style",
    parent = "button",
    width = 16,
    height = 16,
    padding = 0,
    default_graphical_set =
	{
		filename = "__core__/graphics/cancel.png",
		width = 64,
		height = 64,
        scale = 0.25,
    },
    hovered_graphical_set =
	{
		filename = "__core__/graphics/cancel.png",
		width = 64,
		height = 64,
        scale = 0.25,
	},
    clicked_graphical_set =
	{
		filename = "__core__/graphics/cancel.png",
		width = 64,
		height = 64,
        scale = 0.25,
    },
}

gui["qsMenu-button-search"] = {
    type = "button_style",
    parent = "button",
    width = 16,
    height = 16,
    padding = 0,
    default_graphical_set =
	{
		filename = "__Random_Utilities__/graphics/icons/search.png",
		width = 32,
		height = 32,
        scale = 0.5,
    },
    hovered_graphical_set =
	{
		filename = "__Random_Utilities__/graphics/icons/search.png",
		width = 32,
		height = 32,
        scale = 0.5,
	},
    clicked_graphical_set =
	{
		filename = "__Random_Utilities__/graphics/icons/search.png",
		width = 32,
		height = 32,
        scale = 0.5,
    },
}
