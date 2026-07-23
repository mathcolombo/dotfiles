---------------
---- INPUT ----
---------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/

hl.config({
    input = {
        kb_layout  = "us, br",
        kb_variant = "intl",
        kb_model   = "",
        kb_options = "grp:alt_space_toggle",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, 

        touchpad = {
            natural_scroll = true,
        },
    },
})

--- Touchpad ---
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


--- Devices ---
hl.device({
    name        = "yjx-chip-usb-receiver-mouse",
    sensitivity = -0.5,
})