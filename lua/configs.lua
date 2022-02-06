local opt = vim.opt
local fn = vim.fn

--Set colorscheme
opt.termguicolors = true
vim.cmd [[colorscheme dracula]]

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

opt.backup = false -- creates a backup file
opt.clipboard = {"unnamed", "unnamedplus"}
opt.expandtab = true -- convert tabs to spaces
opt.encoding = "utf-8"
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.fileencodings = "utf-8"
opt.hidden = true -- required to keep multiple buffers and open multiple buffers
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.ignorecase = true -- ignore case in search patterns
opt.mouse = "a"
opt.number = true -- set numbered lines
opt.smartcase = true -- smart case
opt.smartindent = true -- make indenting smarter again
opt.spell = false -- disable spell checking
opt.swapfile = false -- creates a swapfile
opt.tabstop = 4
opt.titlestring = "%F"
opt.title = true -- set the title of window to the value of the titlestring
opt.ttyfast = true -- don't wait for terminal to be ready
opt.backspace = "indent,eol,start"
opt.softtabstop = 0
opt.shiftwidth = 4
opt.incsearch = true
opt.syntax = "on"
opt.ruler = true
opt.wildmenu = true
opt.scrolloff = 3
opt.autochdir = true
opt.laststatus = 2
opt.modeline = true
opt.modelines = 10
opt.title = true
opt.wrap = true
opt.wrapmargin = 2
opt.textwidth = 80
opt.autoread = true

vim.cmd('cnoreabbrev W! w!')
vim.cmd('cnoreabbrev Q! q!')
vim.cmd('cnoreabbrev Qall! qall!')
vim.cmd('cnoreabbrev Wq wq')
vim.cmd('cnoreabbrev Wa wa')
vim.cmd('cnoreabbrev wQ wq')
vim.cmd('cnoreabbrev WQ wq')
vim.cmd('cnoreabbrev W w')
vim.cmd('cnoreabbrev Q q')
vim.cmd('cnoreabbrev Qall qall')


vim.cmd [[
    augroup vimrc-sync-fromstart
        autocmd!
        autocmd BufEnter * :syntax sync maxlines=200
    augroup END
]]

vim.cmd [[
    augroup vimrc-remember-cursor-position
        autocmd!
        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    augroup END
]]

vim.cmd [[
    augroup vimrc-sync-fromstart
        autocmd!
        autocmd BufEnter * :syntax sync maxlines=200
    augroup END
]]
