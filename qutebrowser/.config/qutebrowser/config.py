config.load_autoconfig(False)
try:
    from local_config import *
except:
    force_rendering = False
if force_rendering:
    c.qt.force_software_rendering = 'chromium'

# where to save …
download_path = '~/Downloads'
download_path_video = '~/Videos/youtube'
download_path_music = '~/Videos/youtube/mp3'
download_path_tabs = '~/Music/tabs'
download_path_pdf = '~/Downloads'

# commands to download youtube videos/extract mp3
yt_download_cmd = "youtube-dl -o '" + download_path_video \
        + "/%(title)s.%(ext)s'"
yt_download_mp3_cmd = "youtube-dl --audio-format mp3 --audio-quality 7 \
        --restrict-filenames --extract-audio -o '" \
        + download_path_music + "/%(title)s.%(ext)s'"

config.set('downloads.location.directory', download_path)
config.set('downloads.position', 'bottom')
config.set('downloads.location.prompt', False)

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
config.unbind('j')
config.unbind('k')
config.unbind('l')
config.unbind('n')

config.bind('r', 'scroll up')
config.bind('s', 'scroll down')
config.bind('t', 'scroll left')
config.bind('n', 'scroll right')

config.bind('l', 'scroll right')
config.bind('L', 'scroll right')

# left hand control, nice when using mouse
config.bind('«', 'back')
config.bind('»', 'forward')
config.bind('æ', 'back')
config.bind('€', 'forward')

config.bind('h', 'search-next')
config.bind('H', 'search-prev')

# we need to move the reload key
config.bind('l', 'reload -f')
# h alone is a little bit dangerous if escaping insert mode by mistake
config.bind('L', 'reload')

# CARET Mode -----------------------------------------------------------------
config.bind('r', 'move-to-prev-line', 'caret')
config.bind('s', 'move-to-next-line', 'caret')
config.bind('t', 'move-to-prev-char', 'caret')
config.bind('n', 'move-to-next-char', 'caret')

config.bind('R', 'scroll up', 'caret')
config.bind('S', 'scroll down', 'caret')
config.bind('T', 'scroll left', 'caret')
config.bind('N', 'scroll right', 'caret')

# ----------------------------------------------------------------------------

# hints for bepo
c.hints.chars = 'aiuectsrn'

# switch : and .
# config.bind(':', 'repeat-command')
# config.bind('.', 'set-cmd-text :')

# ---------------------------------------------------------------------------
# FRENCH Settings
# ---------------------------------------------------------------------------

# french next/prev links
c.hints.prev_regexes.append(r'\bprécédent\b')
c.hints.next_regexes.append(r'\bsuivant\b')
config.bind('<', 'navigate prev')
config.bind('>', 'navigate next')

config.bind(",m", "spawn mpv {url}")
config.bind(",M", "hint links spawn mpv {hint-url}")

config.bind('F', 'hint all window')

config.bind('e', 'open-editor')

config.bind('<Ctrl-Shift-p>', 'set-cmd-text -s :open -p ')

config.bind('u', 'undo')
config.bind('!', 'set-cmd-text -s :spawn')

c.tabs.last_close = 'close'

config.bind('gt', 'tab-next')
config.bind('gT', 'tab-prev')
