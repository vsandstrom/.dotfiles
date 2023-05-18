local g = vim.g

-- starts preview when entering markdown file buffer
g.mkdp_autostart = 0
-- quits preview when exiting
g.mkdp_auto_close = 1
-- 1 refreshes on save, 0 on edit or cursor move
g.mkdp_refresh_slow = 0

g.mkdp_open_ip = ''
g.mkdp_open_to_the_world = 0
g.mkdp_browser = ''
g.mkdp_echo_preview_url = 0
