--------------------------------------
---- WINDOWS AND WORKSPACES RULES ----
--------------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


hl.window_rule({
    match = { title = "^(Open File)(.*)$" },
    float = true, center = true
})
hl.window_rule({
    match = { title = "^(Select a File)(.*)$" },
    float = true, center = true
})
hl.window_rule({
    match = { title = "^(Open Folder)(.*)$" },
    float = true, center = true
})
hl.window_rule({
    match = { title = "^(Save As)(.*)$" },
    float = true, center = true
})

hl.window_rule({
    name  = "float-utilities",
    match = { class = "org.kde.kcalc" },
    float  = true, center = true
})

hl.window_rule({
    name  = "picture-in-picture",
    match = {
        title = "^Picture-in-Picture$",
    },

    float = true,
    pin   = true,
    move  = "69% 69%",
    size  = "30% 30%",
})