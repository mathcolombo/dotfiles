---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(appMainMod .. " + C", hl.dsp.exec_cmd(codeEditor))
hl.bind(appMainMod .. " + B", hl.dsp.exec_cmd(internetBrowser))
hl.bind(appMainMod .. " + N", hl.dsp.exec_cmd(noteEditor))
hl.bind(appMainMod .. " + M", hl.dsp.exec_cmd(musicPlayer))
--hl.bind(appMainMod .. " + W", hl.dsp.exec_cmd(messageClient))