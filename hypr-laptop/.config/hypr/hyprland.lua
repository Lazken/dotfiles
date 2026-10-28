--###############
--## MONITORS ###
--###############

hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "auto",
    scale = "2",
})

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto-left",
    scale = "1",
})
hl.bind("switch:on:Lid Switch", function()
    hl.monitor({ output = "eDP-1", disabled = true })
end, { locked = true })

hl.bind("switch:off:Lid Switch", function()
    hl.monitor({ output = "eDP-1", disabled = false, mode = "preferred", position = "auto", scale = "2" })
end, { locked = true })
--##################
--## MY PROGRAMS ###
--##################

local colors = require("mocha")

-- Set programs that you use
local terminal = "kitty"
local fileManager = "dolphin"
local browser = "google-chrome-stable --profile-directory='Default'"
local browserPersonal = "google-chrome-stable --profile-directory='Profile 3'"
local menu = "wofi --show drun"
local notes = "obsidian"
local music = "spotify"
local social = "slack"

--################
--## AUTOSTART ###
--################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--exec-once = wvkbd-mobintl -L 400 --hidden 

hl.env("HYPRCURSOR_THEME", "catppuccin-macchiato-dark-cursors")
hl.env("HYPRCURSOR_SIZE", "24")

hl.workspace_rule({
    workspace = "1",
    default_name = "neovim",
    -- TODO: manual review — workspace field ""
})

hl.workspace_rule({
    workspace = "2",
    default_name = "Social",
    -- TODO: manual review — workspace field ""
})

hl.workspace_rule({
    workspace = "3",
    default_name = "Music",
    -- TODO: manual review — workspace field ""
})

hl.workspace_rule({
    workspace = "4",
    default_name = "Notes",
    -- TODO: manual review — workspace field ""
})

hl.workspace_rule({
    workspace = "5",
    default_name = "Browser",
    -- TODO: manual review — workspace field ""
})

hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 7,
    bezier = "myBezier",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 7,
    bezier = "default",
    style = "popin 80%",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 8,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 7,
    bezier = "default",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 6,
    bezier = "default",
})

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(browserPersonal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(notes))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("kill -34 $(ps -C wvkbd-mobintl)"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("~/.config/scripts/screenshot-named.sh"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu --pre-display-cmd \"echo '%s' | cut -f 2\" | cliphist decode | wl-copy"))

hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + T", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + B", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind("ALT + Tab", hl.dsp.focus({ workspace = "previous" }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + CTRL + k", function() local w = hl.get_active_workspace(); if not w then return end; hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = 1 })) end)
hl.bind(mainMod .. " + CTRL + l", function() local w = hl.get_active_workspace(); if not w then return end; hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = "r" })) end)

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
    -- (kept hyprlock on SUPER+SHIFT+L; removed duplicate focus bind)
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("CTRL + mouse:274", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
})

hl.config({
    xwayland = {
        force_zero_scaling = false,
    },
    --############################
    --## ENVIRONMENT VARIABLES ###
    --############################
    -- See https://wiki.hyprland.org/Configuring/Environment-variables/
    --####################
    --## LOOK AND FEEL ###
    --####################
    general = {
        border_size = 1,
        col = {
            active_border = { colors = { colors.mauve, colors.flamingo}, angle = 90},
            inactive_border = colors.subtext0,
        },
        resize_on_border = true,
        gaps_in = 1,
        gaps_out = 1,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true, -- You probably want this
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
    --############
    --## INPUT ###
    --############
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.on("hyprland.start", function()
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("hyprctl setcursor catppuccin-mocha-dark-cursors 28")
    hl.exec_cmd("swaync & waybar & hyprpaper")
    hl.exec_cmd(terminal .. " -e tmuxifier load-session brambo", { workspace = "1 silent" })
    hl.exec_cmd(social, { workspace = "2 silent" })
    hl.exec_cmd(notes, { workspace = "4 silent" })
end)
