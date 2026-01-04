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

config.bind("<Ctrl-r>", "config-cycle colors.webpage.darkmode.enabled true false")

# User-Agent Chrome moderno (coincide con TLS fingerprint)
c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36"
