config.load_autoconfig(False)
c.colors.webpage.preferred_color_scheme = "dark"
c.input.partial_timeout = 100
# Avoid accidental tab closes
config.unbind("d")
config.bind("D", "tab-close")

config.bind("<Ctrl-Shift-m>", "spawn mpv {clipboard}")
config.bind("<Ctrl-m>", "hint all yank")

config.bind("<Ctrl-Shift-l>", "spawn --userscript qute-bitwarden")
