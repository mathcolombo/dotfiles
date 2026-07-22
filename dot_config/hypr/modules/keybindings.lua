---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/

--- Variables ---
local mainMod = "SUPER"
local appMainMod = mainMod .. " + SHIFT"

--- Noctalia ---
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

--- System ---
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))

-- Swap Windows --
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- Resize Windows --
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.resize({ x=-15, y=0, relative=true }), {repeating = true})
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.resize({ x=15, y=0, relative=true }), {repeating = true})
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.resize({ x=0, y=-15, relative=true }), {repeating = true})
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.resize({ x=0, y=15, relative=true }), {repeating = true})

-- special workspace
hl.bind(mainMod .. " + ALT + C", hl.dsp.workspace.toggle_special("chat"))
hl.bind(mainMod .. " + ALT + SHIFT + C", hl.dsp.window.move({ workspace = "special:chat" }))
hl.bind(mainMod .. " + ALT + M", hl.dsp.workspace.toggle_special("music"))
hl.bind(mainMod .. " + ALT + SHIFT + M", hl.dsp.window.move({ workspace = "special:music" }))

--- Apps ---
hl.bind(appMainMod .. " + C", hl.dsp.exec_cmd(codeEditor))
hl.bind(appMainMod .. " + B", hl.dsp.exec_cmd(internetBrowser))
hl.bind(appMainMod .. " + N", hl.dsp.exec_cmd(noteEditor))
hl.bind(appMainMod .. " + M", hl.dsp.exec_cmd(musicPlayer))

--- Web Apps ---
-- hl.bind(appMainMod .. " + W", hl.dsp.exec_cmd(webApp .. " WebApp-WhatsApp5071.desktop"))

--- Default Hyprland ---
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })