require("default.hypr.bindings.media")
require("default.hypr.bindings.clipboard")
require("default.hypr.bindings.tiling-v2")
require("default.hypr.bindings.utilities")

-- Application bindings without erch's preinstalled web apps, TUIs, or desktop apps.
o.bind("SUPER + RETURN", "Terminal", { erch = "terminal" })
o.bind("SUPER + SHIFT + RETURN", "Browser", { erch = "browser" })
o.bind("SUPER + SHIFT + F", "File manager", { erch = "nautilus" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)", { erch = "nautilus-cwd" })
o.bind("SUPER + SHIFT + B", "Browser", { erch = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { erch = "browser --private" })
o.bind("SUPER + SHIFT + N", "Editor", { erch = "editor" })
