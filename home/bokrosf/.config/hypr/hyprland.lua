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

require("keybind")
require("animation")
