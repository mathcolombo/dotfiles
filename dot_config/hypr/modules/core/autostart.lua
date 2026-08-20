-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")
  hl.exec_cmd("vesktop")
  hl.exec_cmd("hyprctl setcursor Qogir Cursors 24")
  --hl.exec_cmd("flatpak run com.bitwarden.desktop")
end)