vim.cmd.colorscheme('forest')

-- don't wrap long lines
vim.wo.wrap = false
-- when wrap is toggled on, break at word boundaries
vim.wo.linebreak = true
-- render invisible characters using listchars
vim.opt.list = true
-- show tabs as two spaces (no visible marker)
vim.opt.listchars = { tab = '  ' }
-- number of spaces a <Tab> character renders as
vim.opt.tabstop = 4
-- keep 4 lines visible above/below cursor when scrolling
vim.opt.scrolloff = 4
-- number of spaces for each indent level (>>, <<, etc.)
vim.opt.shiftwidth = 4
-- hide the statusline entirely
vim.opt.laststatus = 0
-- hide the tabline entirely
vim.opt.showtabline = 0
-- highlight all matches when searching
vim.opt.hlsearch = true
-- show absolute line numbers in the gutter
vim.opt.number = true
-- auto-indent new lines based on syntax (braces, etc.)
vim.opt.smartindent = true
-- hide "-- INSERT --" / "-- VISUAL --" from the cmdline
vim.opt.showmode = false
