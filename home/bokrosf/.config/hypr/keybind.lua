-- Program
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

-- Window
hl.bind("SUPER + Q", hl.dsp.window.kill())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle"}))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
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

-- Workspace
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

-- Media
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 0.02+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

