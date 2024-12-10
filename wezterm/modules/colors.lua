local wezterm = require 'wezterm'

local function customize_color_scheme(base_scheme_name)
  local scheme = wezterm.get_builtin_color_schemes()[base_scheme_name]

  scheme.foreground = "#d4be98"
  scheme.background = "#282828"
  scheme.cursor_bg = "#d4be98"
  scheme.cursor_border = "#d4be98"
  scheme.cursor_fg = "#282828"
  -- scheme.selection_bg = "#68948A"
  -- scheme.selection_bg = "#4a6b64" -- dimmed 
  scheme.selection_bg = "#3f5c57" -- more dimmed 
  -- scheme.selection_fg = "#d4be98" -- same selection_fg color

  scheme.ansi = {
    "#32302f", -- Black
    "#ea6962", -- Red
    "#a9b665", -- Green
    "#d8a657", -- Yellow
    "#7daea3", -- Blue
    "#d3869b", -- Magenta 
    "#89b482", -- Cyan
    "#d4be98", -- White
  }

  scheme.brights = {
    "#928374", -- Bright Black
    "#ea6962", -- Bright Red
    "#a9b665", -- Bright Green
    "#d8a657", -- Bright Yellow
    "#7daea3", -- Bright Blue
    "#d3869b", -- Bright Magenta
    "#89b482", -- Bright Cyan
    "#ddc7a1", -- Bright White
  }

  return scheme
end

return {
  customize_color_scheme = customize_color_scheme,
}
