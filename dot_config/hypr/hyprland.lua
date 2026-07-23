------------------
---- HYPRLAND ----
------------------

-- See https://wiki.hypr.land/Configuring/Start/

-- 1. Constants
require("modules.consts.mods")
require("modules.consts.programs")

-- 2. Core
require("modules.core.environments")
require("modules.core.permissions")
require("modules.core.autostart")
require("modules.core.input")
require("modules.core.monitors")

-- 3. Appearence
require("modules.ui.general")
require("modules.ui.decorations")
require("modules.ui.animations")

-- 4. Binds
require("modules.keybinds.system")
require("modules.keybinds.hyprland")
require("modules.keybinds.noctalia")
require("modules.keybinds.apps")

-- 5. Rules
require("modules.rules.window")
require("modules.rules.layer")
require("modules.rules.workspace")

-- For Noctalia Color templates
require("noctalia").apply_theme()
