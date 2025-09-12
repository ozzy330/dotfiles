config.load_autoconfig(False)
c.colors.webpage.preferred_color_scheme = "dark"
c.input.partial_timeout = 100
c.content.pdfjs = True
c.downloads.remove_finished = 3000
# Avoid accidental tab closes
config.unbind("d")
config.bind("D", "tab-close")

config.bind("<Ctrl-Shift-m>", "spawn mpv {clipboard}")
config.bind("<Ctrl-m>", "hint all yank")

config.bind("<Ctrl-Shift-l>", "spawn --userscript qute-bitwarden")

config.bind("<Ctrl-d>", "config-cycle colors.webpage.darkmode.enabled true false")
