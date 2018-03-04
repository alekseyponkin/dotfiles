--[[

     Holo Awesome WM theme 3.0
     github.com/copycat-killer

--]]

local gears  = require("gears")
local lain   = require("lain")
local awful  = require("awful")
local wibox  = require("wibox")

local string = string
local os     = { getenv = os.getenv }

-- {{{ Main
local theme                                     = {}
theme.default_dir                               = require("awful.util").get_themes_dir() .. "default"
theme.icon_dir                                  = os.getenv("HOME") .. "/.config/awesome/themes/mydekstop/icons"
theme.wallpaper                                 = os.getenv("HOME") .. "/.config/awesome/themes/mydekstop/wall.jpg"
-- }}}

-- {{{ Styles
theme.font                                      = "Roboto Bold 9"
theme.taglist_font                              = "Roboto Condensed Regular 9"

-- {{{ Colors
theme.fg_normal                                 = "#FFFFFF"
theme.fg_focus                                  = "#0099CC"
theme.bg_focus                                  = "#303030"
theme.bg_normal                                 = "#242424"
theme.fg_urgent                                 = "#CC9393"
theme.bg_urgent                                 = "#006B8E"
-- }}}

-- {{{ Borders
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 2

theme.border_width                              = 1
theme.border_normal                             = "#252525"
theme.border_focus                              = "#0099CC"
theme.taglist_fg_focus                          = "#FFFFFF"
theme.tasklist_bg_normal                        = "#222222"
theme.tasklist_fg_focus                         = "#4CB7D2"
-- }}}

-- {{{ Menu
theme.menu_height                               = 20
theme.menu_width                                = 160
theme.menu_icon_size                            = 32
theme.awesome_icon                              = theme.icon_dir .. "/awesome_icon_white.png"
theme.awesome_icon_launcher                     = theme.icon_dir .. "/awesome.png"
-- Taglist
theme.taglist_squares_sel                       = theme.icon_dir .. "/taglist/square_sel.png"
theme.taglist_squares_unsel                     = theme.icon_dir .. "/taglist/square_unsel.png"
--theme.taglist_squares_resize = "false"

theme.spr_small                                 = theme.icon_dir .. "/spr_small.png"
theme.spr_very_small                            = theme.icon_dir .. "/spr_very_small.png"
theme.spr_right                                 = theme.icon_dir .. "/spr_right.png"
theme.spr_bottom_right                          = theme.icon_dir .. "/spr_bottom_right.png"
theme.spr_left                                  = theme.icon_dir .. "/spr_left.png"
theme.bar                                       = theme.icon_dir .. "/bar.png"
theme.bottom_bar                                = theme.icon_dir .. "/bottom_bar.png"
theme.mpdl                                      = theme.icon_dir .. "/mpd.png"
theme.mpd_on                                    = theme.icon_dir .. "/mpd_on.png"
theme.prev                                      = theme.icon_dir .. "/prev.png"
theme.nex                                       = theme.icon_dir .. "/next.png"
theme.stop                                      = theme.icon_dir .. "/stop.png"
theme.pause                                     = theme.icon_dir .. "/pause.png"
theme.play                                      = theme.icon_dir .. "/play.png"
theme.clock                                     = theme.icon_dir .. "/clock.png"
theme.calendar                                  = theme.icon_dir .. "/cal.png"
theme.cpu                                       = theme.icon_dir .. "/cpu.png"
theme.net_up                                    = theme.icon_dir .. "/net_up.png"
theme.net_down                                  = theme.icon_dir .. "/net_down.png"

-- {{{ Layout
theme.layout_tile                               = theme.icon_dir .. "/layouts/tilew.png"
theme.layout_tileleft                           = theme.icon_dir .. "/layouts/tileleftw.png"
theme.layout_tilebottom                         = theme.icon_dir .. "/layouts/tilebottomw.png"
theme.layout_tiletop                            = theme.icon_dir .. "/layouts/tiletopw.png"
theme.layout_fairv                              = theme.icon_dir .. "/layouts/fairvw.png"
theme.layout_fairh                              = theme.icon_dir .. "/layouts/fairhw.png"
theme.layout_spiral                             = theme.icon_dir .. "/layouts/spiralw.png"
theme.layout_dwindle                            = theme.icon_dir .. "/layouts/dwindlew.png"
theme.layout_max                                = theme.icon_dir .. "/layouts/maxw.png"
theme.layout_fullscreen                         = theme.icon_dir .. "/layouts/fullscreenw.png"
theme.layout_magnifier                          = theme.icon_dir .. "/layouts/magnifierw.png"
theme.layout_floating                           = theme.icon_dir .. "/layouts/floatingw.png"
theme.layout_cornernw                           = theme.icon_dir .. "/layouts/cornernww.png"
-- }}}

-- {{{ Titlebars
theme.titlebar_close_button_normal              = theme.icon_dir.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.icon_dir.."/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = theme.icon_dir.."/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.icon_dir.."/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = theme.icon_dir.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.icon_dir.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.icon_dir.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.icon_dir.."/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = theme.icon_dir.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.icon_dir.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.icon_dir.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.icon_dir.."/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = theme.icon_dir.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.icon_dir.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.icon_dir.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.icon_dir.."/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.icon_dir.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.icon_dir.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.icon_dir.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.icon_dir.."/titlebar/maximized_focus_active.png"
-- }}}

-- {{{ Icons
-- {{{ Application icons
theme.application_chromium = "/usr/share/icons/hicolor/128x128/apps/chromium.png"
theme.application_terminal = "/usr/share/icons/hicolor/48x48/apps/xfce4-logo.png"

theme.musicplr = string.format("%s -e ncmpcpp", awful.util.terminal)

-- {{{ Helper functions
local function client_menu_toggle_fn()
    local instance = nil

    return function ()
        if instance and instance.wibox.visible then
            instance:hide()
            instance = nil
        else
            instance = awful.menu.clients({ theme = { width = 250 } })
        end
    end
end
-- }}}

local markup = lain.util.markup
local blue   = "#80CCE6"
local space3 = markup.font("Roboto 3", " ")

-- Clock
local mytextclock = wibox.widget.textclock(markup("#FFFFFF", space3 .. "%H:%M   " .. markup.font("Roboto 4", " ")))
mytextclock.font = theme.font
local clock_icon = wibox.widget.imagebox(theme.clock)
local clockbg = wibox.container.background(mytextclock, theme.bg_focus, gears.shape.rectangle)
local clockwidget = wibox.container.margin(clockbg, 0, 3, 5, 5)

-- Calendar
local mytextcalendar = wibox.widget.textclock(markup.fontfg(theme.font, "#FFFFFF", space3 .. "%d %b " .. markup.font("Roboto 5", " ")))
local calendar_icon = wibox.widget.imagebox(theme.calendar)
local calbg = wibox.container.background(mytextcalendar, theme.bg_focus, gears.shape.rectangle)
local calendarwidget = wibox.container.margin(calbg, 0, 0, 5, 5)
lain.widget.calendar({
     attach_to = { mytextclock, mytextcalendar },
     notification_preset = {
         fg = "#FFFFFF",
         bg = theme.bg_normal,
         font = "Monospace 10"
     }
})

--[[ Mail IMAP check
-- commented because it needs to be set before use
local mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        mail_notification_preset.fg = "#FFFFFF"
        mail  = ""
        count = ""

        if mailcount > 0 then
            mail = "Mail "
            count = mailcount .. " "
        end

        widget:set_markup(markup.font(theme.font, markup(blue, mail) .. markup("#FFFFFF", count)))
    end
})
--]]

-- MPD
-- local mpd_icon = awful.widget.launcher({ image = theme.mpdl, command = theme.musicplr })
-- local prev_icon = wibox.widget.imagebox(theme.prev)
-- local next_icon = wibox.widget.imagebox(theme.nex)
-- local stop_icon = wibox.widget.imagebox(theme.stop)
-- local pause_icon = wibox.widget.imagebox(theme.pause)
-- local play_pause_icon = wibox.widget.imagebox(theme.play)
-- theme.mpd = lain.widget.mpd({
--     settings = function ()
--         if mpd_now.state == "play" then
--             mpd_now.artist = mpd_now.artist:upper():gsub("&.-;", string.lower)
--             mpd_now.title = mpd_now.title:upper():gsub("&.-;", string.lower)
--             widget:set_markup(markup.font("Roboto 4", " ")
--                               .. markup.font(theme.taglist_font,
--                               " " .. mpd_now.artist
--                               .. " - " ..
--                               mpd_now.title .. "  ") .. markup.font("Roboto 5", " "))
--             play_pause_icon:set_image(theme.pause)
--         elseif mpd_now.state == "pause" then
--             widget:set_markup(markup.font("Roboto 4", " ") ..
--                               markup.font(theme.taglist_font, " MPD PAUSED  ") ..
--                               markup.font("Roboto 5", " "))
--             play_pause_icon:set_image(theme.play)
--         else
--             widget:set_markup("")
--             play_pause_icon:set_image(theme.play)
--         end
--     end
-- })
-- local musicbg = wibox.container.background(theme.mpd.widget, theme.bg_focus, gears.shape.rectangle)
-- local musicwidget = wibox.container.margin(musicbg, 0, 0, 5, 5)

-- musicwidget:buttons(awful.util.table.join(awful.button({ }, 1,
-- function () awful.spawn(theme.musicplr) end)))
-- prev_icon:buttons(awful.util.table.join(awful.button({}, 1,
-- function ()
--     awful.spawn.with_shell("mpc prev")
--     theme.mpd.update()
-- end)))
-- next_icon:buttons(awful.util.table.join(awful.button({}, 1,
-- function ()
--     awful.spawn.with_shell("mpc next")
--     theme.mpd.update()
-- end)))
-- stop_icon:buttons(awful.util.table.join(awful.button({}, 1,
-- function ()
--     play_pause_icon:set_image(theme.play)
--     awful.spawn.with_shell("mpc stop")
--     theme.mpd.update()
-- end)))
-- play_pause_icon:buttons(awful.util.table.join(awful.button({}, 1,
-- function ()
--     awful.spawn.with_shell("mpc toggle")
--     theme.mpd.update()
-- end)))

-- Battery
--[[
local bat = lain.widget.bat({
    settings = function()
        bat_header = " Bat "
        bat_p      = bat_now.perc .. " "
        if bat_now.ac_status == 1 then
            bat_p = bat_p .. "Plugged "
        end
        widget:set_markup(markup.font(theme.font, markup(blue, bat_header) .. bat_p))
    end
})
--]]

--  fs
theme.fs = lain.widget.fs({
    options = "--exclude-type=tmpfs",
    notification_preset = { bg = theme.bg_normal, font = "Monospace 9, " },
})

-- ALSA volume bar
theme.volume = lain.widget.alsabar({
    notification_preset = { font = "Monospace 10"},
    --togglechannel = "IEC958,3",
    width = 100, height = 20, border_width = 0,
    colors = {
        background = "#FFFFFF",
        unmute     = "#80CCE6",
        mute       = "#FF9F9F"
    },
})
theme.volume.bar.paddings = 0
theme.volume.bar.margins = 8
local volumewidget = wibox.container.background(theme.volume.bar, theme.bg_focus, gears.shape.rectangle)
volumewidget = wibox.container.margin(volumewidget, 0, 0, 5, 5)

-- CPU
local cpu_icon = wibox.widget.imagebox(theme.cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(space3 .. markup.font(theme.font, "CPU " .. cpu_now.usage
                          .. "% ") .. markup.font("Roboto 5", " "))
    end
})
local cpubg = wibox.container.background(cpu.widget, theme.bg_focus, gears.shape.rectangle)
local cpuwidget = wibox.container.margin(cpubg, 0, 0, 5, 5)

-- Net
local netdown_icon = wibox.widget.imagebox(theme.net_down)
local netup_icon = wibox.widget.imagebox(theme.net_up)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font("Roboto 1", " ") .. markup.font(theme.font, net_now.received .. " - "
                          .. net_now.sent) .. markup.font("Roboto 2", " "))
    end
})
local netbg = wibox.container.background(net.widget, theme.bg_focus, gears.shape.rectangle)
local networkwidget = wibox.container.margin(netbg, 0, 0, 5, 5)

-- Weather
theme.weather = lain.widget.weather({
    city_id = 2643743, -- placeholder (London)
    notification_preset = { font = "Monospace 10", position = "bottom_right" },
})

-- Launcher
local mylauncher = awful.widget.button({ image = theme.awesome_icon_launcher })
mylauncher:connect_signal("button::press", function() mymainmenu:toggle() end)

-- Separators
local first = wibox.widget.textbox('<span font="Roboto 7"> </span>')
local spr_small = wibox.widget.imagebox(theme.spr_small)
local spr_very_small = wibox.widget.imagebox(theme.spr_very_small)
local spr_right = wibox.widget.imagebox(theme.spr_right)
local spr_bottom_right = wibox.widget.imagebox(theme.spr_bottom_right)
local spr_left = wibox.widget.imagebox(theme.spr_left)
local bar = wibox.widget.imagebox(theme.bar)
local bottom_bar = wibox.widget.imagebox(theme.bottom_bar)

local barcolor  = gears.color({
    type  = "linear",
    from  = { 32, 0 },
    to    = { 32, 32 },
    stops = { {0, theme.bg_focus}, {0.25, "#505050"}, {1, theme.bg_focus} }
})

function theme.at_screen_connect(s)

    -- {{{ Wibar

    -- Create a wibox for each screen and add it
    local taglist_buttons = gears.table.join(
                        awful.button({ }, 1, function(t) t:view_only() end),
                        awful.button({ modkey }, 1, function(t)
                                                  if client.focus then
                                                      client.focus:move_to_tag(t)
                                                  end
                                              end),
                        awful.button({ }, 3, awful.tag.viewtoggle),
                        awful.button({ modkey }, 3, function(t)
                                                  if client.focus then
                                                      client.focus:toggle_tag(t)
                                                  end
                                              end),
                        awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
                        awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
                    )

    local tasklist_buttons = gears.table.join(
                         awful.button({ }, 1, function (c)
                                                  if c == client.focus then
                                                      c.minimized = true
                                                  else
                                                      -- Without this, the following
                                                      -- :isvisible() makes no sense
                                                      c.minimized = false
                                                      if not c:isvisible() and c.first_tag then
                                                          c.first_tag:view_only()
                                                      end
                                                      -- This will also un-minimize
                                                      -- the client, if needed
                                                      client.focus = c
                                                      c:raise()
                                                  end
                                              end),
                         awful.button({ }, 3, client_menu_toggle_fn()),
                         awful.button({ }, 4, function ()
                                                  awful.client.focus.byidx(1)
                                              end),
                         awful.button({ }, 5, function ()
                                                  awful.client.focus.byidx(-1)
                                              end))

    -- Keyboard map indicator and switcher
    mykeyboardlayout = awful.widget.keyboardlayout()
    -- }}}

    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- Wallpaper
    local function set_wallpaper(s)
        -- If wallpaper is a function, call it with the screen
        if theme.wallpaper then
            local wallpaper = theme.wallpaper
            -- If wallpaper is a function, call it with the screen
            if type(wallpaper) == "function" then
                wallpaper = wallpaper(s)
            end
            gears.wallpaper.maximized(wallpaper, s, true)
        end
    end

    -- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
    screen.connect_signal("property::geometry", set_wallpaper)

    awful.screen.connect_for_each_screen(function(s)
        -- Wallpaper
        set_wallpaper(s)

        -- Each screen has its own tag table.
        awful.tag({ "terminal", "internet", "develop", "media", "chat" }, s, 
        {awful.layout.layouts[3], awful.layout.layouts[1], awful.layout.layouts[3]})

        -- Create a promptbox for each screen
        s.mypromptbox = awful.widget.prompt()
        -- Create an imagebox widget which will contains an icon indicating which layout we're using.
        -- We need one layoutbox per screen.
        s.mylayoutbox = awful.widget.layoutbox(s)
        s.mylayoutbox:buttons(awful.util.table.join(
                               awful.button({ }, 1, function () awful.layout.inc( 1) end),
                               awful.button({ }, 3, function () awful.layout.inc(-1) end),
                               awful.button({ }, 4, function () awful.layout.inc( 1) end),
                               awful.button({ }, 5, function () awful.layout.inc(-1) end)))
        
	-- Create a taglist widget
        s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, taglist_buttons, { bg_focus = barcolor })

        mytaglistcont = wibox.container.background(s.mytaglist, theme.bg_focus, gears.shape.rectangle)
        s.mytag = wibox.container.margin(mytaglistcont, 0, 0, 5, 5)

        -- Create a tasklist widget
        s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, tasklist_buttons, { bg_focus = theme.bg_focus, shape = gears.shape.rectangle, shape_border_width = 5, shape_border_color = theme.tasklist_bg_normal, align = "center" })

        -- Create the wibox
        s.mywibox = awful.wibar({ position = "top", screen = s, height = 32 })

        -- Add widgets to the wibox
        s.mywibox:setup {
            layout = wibox.layout.align.horizontal,
            { -- Left widgets
                layout = wibox.layout.fixed.horizontal,
		mylauncher,
                s.mytaglist,
                --spr_small,
                s.mypromptbox,
            },
            nil, -- Middle widget
            { -- Right widgets
                layout = wibox.layout.fixed.horizontal,
                wibox.widget.systray(),
                --mail.widget,
                --bat.widget,
                spr_right,
                --musicwidget,
                --bar,
                --prev_icon,
                --next_icon,
                --stop_icon,
                --play_pause_icon,
                --mpd_icon,
                volumewidget,
                spr_left,
                calendar_icon,
                calendarwidget,
                bottom_bar,
                clock_icon,
                clockwidget,
		s.mylayoutbox,
            },
        }

        -- Create the bottom wibox
        s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = 32 })
         s.borderwibox = awful.wibar({ position = "bottom", screen = s, height = 1, bg = theme.fg_focus, x = 0, y = 33})

        -- Add widgets to the bottom wibox
        s.mybottomwibox:setup {
             layout = wibox.layout.align.horizontal,
             { -- Left widgets
                 layout = wibox.layout.fixed.horizontal,
             },
             s.mytasklist, -- Middle widget
             { -- Right widgets
                 layout = wibox.layout.fixed.horizontal,
                 spr_bottom_right,
                 netdown_icon,
                 networkwidget,
                 netup_icon,
                 bottom_bar,
                 cpu_icon,
                 cpuwidget,
             },
         }
    end)
end

return theme
