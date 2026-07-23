---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(ipc .. " panel-toggle wallpaper"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(ipc .. " session lock"))
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd(ipc .. " panel-toggle session"))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd(ipc .. " settings-toggle"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. " panel-toggle clipboard"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(ipc .. " screenshot-region"))
hl.bind("ALT + TAB", hl.dsp.exec_cmd(ipc .. " window-switcher"))

-- Plugins --
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(ipc .. " panel-toggle noctalia/notes:panel"))

-- Media Keys --
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness-down"))