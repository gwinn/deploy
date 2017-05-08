---------------------------
-- warlock awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local lain = require("lain")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = "~/.config/awesome/themes/"
local theme = {}

theme.font          = "Play 9"

theme.bg_normal     = "#363636"
theme.bg_focus      = "#363636"
theme.bg_urgent     = "#363636"
theme.bg_minimize   = "#363636"
theme.bg_systray    = "#565656"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = 3
theme.border_width  = dpi(0)
theme.border_normal = "#111111"
theme.border_focus  = "#111111"
theme.border_marked = "#91231c"

theme.taglist_bg_focus = "#252525"
theme.taglist_bg_empty = "#252525"
theme.taglist_bg_occupied = "#252525"
theme.taglist_bg_volatile = "#252525"

theme.prompt_bg = "#1a1a1a"

-- There are other variable sets
-- overriding the warlock one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(2)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.tasklist_disable_icon = true

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."warlock/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(120)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."warlock/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."warlock/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."warlock/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."warlock/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."warlock/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."warlock/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."warlock/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."warlock/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."warlock/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."warlock/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."warlock/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."warlock/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."warlock/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."warlock/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."warlock/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."warlock/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."warlock/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."warlock/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."warlock/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."warlock/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/.config/awesome/themes/warlock/background.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."warlock/layouts/fairh.png"
theme.layout_fairv = themes_path.."warlock/layouts/fairv.png"
theme.layout_floating  = themes_path.."warlock/layouts/floating.png"
theme.layout_magnifier = themes_path.."warlock/layouts/magnifier.png"
theme.layout_max = themes_path.."warlock/layouts/max.png"
theme.layout_fullscreen = themes_path.."warlock/layouts/max.png"
theme.layout_tilebottom = themes_path.."warlock/layouts/tilebottom.png"
theme.layout_tileleft   = themes_path.."warlock/layouts/tileleft.png"
theme.layout_tile = themes_path.."warlock/layouts/tile.png"
theme.layout_tiletop = themes_path.."warlock/layouts/tiletop.png"
theme.layout_spiral  = themes_path.."warlock/layouts/spiral.png"
theme.layout_dwindle = themes_path.."warlock/layouts/dwindle.png"
theme.layout_cornernw = themes_path.."warlock/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."warlock/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."warlock/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."warlock/layouts/cornersew.png"

-- Generate Awesome icon:
--theme.awesome_icon = theme_assets.awesome_icon(
--    theme.menu_height, theme.bg_focus, theme.fg_focus
--)

theme.awesome_icon = "~/.config/awesome/themes/warlock/icon.png"
theme.taglist_squares_sel = themes_path.."warlock/taglist/square_sel.png"
theme.taglist_squares_unsel = themes_path.."warlock/taglist/square_unsel.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = Arc

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
