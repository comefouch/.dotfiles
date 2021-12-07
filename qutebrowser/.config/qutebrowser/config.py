c.tabs.show = "multiple"
c.statusbar.show = "in-mode"
c.url.start_pages = "https://www.startpage.com"
c.url.default_page = "https://www.startpage.com"
c.url.searchengines = {
  "DEFAULT": "https://www.startpage.com/do/dsearch?query={}",
  "ddg": "https://duckduckgo.com/?q={}",
  "sx": "https://searx.info/?q={}",
  "sp": "https://www.startpage.com/do/dsearch?query={}"
}
c.fonts.default_family = "Hack Nerd Font Mono"
c.fonts.tabs.selected = "10pt monospace"
c.fonts.tabs.unselected = "10pt monospace"
c.fonts.hints = "8pt monospace"
c.fonts.keyhint = "8pt monospace"
c.fonts.prompts = "8pt monospace"
c.fonts.downloads = "8pt monospace"
c.fonts.statusbar = "8pt monospace"
c.fonts.contextmenu = "8pt monospace"
c.fonts.messages.info = "8pt monospace"
c.fonts.debug_console = "8pt monospace"
c.fonts.completion.entry = "8pt monospace"
c.fonts.completion.category = "8pt monospace"
c.tabs.max_width = 300
config.bind(",m", "spawn mpv {url}")
config.bind(",M", "hint links spawn mpv {hint-url}")
