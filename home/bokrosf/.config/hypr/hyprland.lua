hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.monitor({
  output = "",
  mode = "1920x1080@144",
  position = "0x0",
  scale = 1,
})

hl.on("hyprland.start", function ()
  hl.exec_cmd("hypridle")
  hl.exec_cmd("/usr/lib/pam_kwallet_init")
  hl.exec_cmd("waybar")
  hl.exec_cmd("mako")
  hl.exec_cmd("wpaperd -d")
end)

hl.config({
  general = {
    border_size = 4,
    gaps_in = 3,
    gaps_out = 10,
    gaps_workspaces = 300,
    col = {
      active_border = "rgba(47b1b1ff)",
      inactive_border = "rgba(444444f0)",
    },
    layout = "dwindle",
    resize_on_border = true,
    allow_tearing = false,
    no_focus_fallback = true,
  },
  decoration = {
    rounding = 7,
  },
  input = {
    kb_layout = "us,hu",
    repeat_delay = 200,
    sensitivity = 0,
    follow_mouse = 1,
  },
  misc = {
    enable_anr_dialog = false,
  },
})

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

hl.bind("SUPER + T", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("hyprpicker -a -f hex"))
hl.bind("PRINT", hl.dsp.exec_cmd("grim"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\""))
hl.bind("SUPER + CTRL + ALT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + CTRL + END", hl.dsp.exec_cmd("shutdown 0"))
hl.bind("SUPER + CTRL + PAUSE", hl.dsp.exec_cmd("systemctl sleep"), { release = true })
hl.bind("SUPER + M", hl.dsp.exit())
hl.bind("SUPER + slash", hl.dsp.exec_cmd("hyprctl switchxkblayout current next"))

hl.bind("SUPER + Q", hl.dsp.window.kill())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle"}))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 0.02+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true });
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true });

local leftKey = "H"
local rightKey = "L"
local downKey = "J"
local upKey = "K"
local windowResizeValue = 10

hl.bind("SUPER + SHIFT + " .. leftKey, hl.dsp.window.resize({ x = -windowResizeValue, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + " .. rightKey, hl.dsp.window.resize({ x = windowResizeValue, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + " .. upKey, hl.dsp.window.resize({ x = 0, y = -windowResizeValue, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + " .. downKey, hl.dsp.window.resize({ x = 0, y = windowResizeValue, relative = true }), { repeating = true })

hl.bind("SUPER + ALT + " .. leftKey, hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + ALT + " .. rightKey, hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + ALT + " .. downKey, hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + ALT + " .. upKey, hl.dsp.window.move({ direction = "up" }))

hl.bind("SUPER + CTRL + " .. leftKey, hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + CTRL + " .. rightKey, hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + CTRL + " .. downKey, hl.dsp.window.swap({ direction = "down" }))
hl.bind("SUPER + CTRL + " .. upKey, hl.dsp.window.swap({ direction = "up" }))

hl.bind("SUPER + " .. leftKey, hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + " .. rightKey, hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + " .. downKey, hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + " .. upKey, hl.dsp.focus({ direction = "up" }))

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + Z", hl.dsp.focus({ workspace = "-1" }))
hl.bind("SUPER + X", hl.dsp.focus({ workspace = "+1" }))
hl.bind("SUPER + semicolon", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("SUPER + apostrophe",hl.dsp.window.move({ workspace = "+1" }))

