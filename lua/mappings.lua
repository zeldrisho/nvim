local g = vim.g
local map = require("utils").map

g.mapleader = ','

-- navigation
-- behave like other capitals
map("n", "Y", "y$")

-- keeping it centered
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")

-- moving text
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "<leader>k", ":m .-2<CR>==")
map("n", "<leader>j", ":m .+1<CR>==")

-- quicklist
map("n", "<leader>qn", "<cmd>:cnext<cr>")
map("n", "<leader>qp", "<cmd>:cprev<cr>")
map("n", "<leader>qo", "<cmd>:copen<cr>")

-- language server
map("n", "<Leader>vd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<Leader>vi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
map("n", "<Leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
map("n", "<Leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "<Leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<Leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "<Leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", "<Leader>vsd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
map("n", "<Leader>vn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
map("n", "<Leader>vp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
map("n", "<Leader>vf", "<cmd>Format<CR>")

-- Split
map('n', '<Leader>h', '<cmd>split<CR>')
map('n', '<Leader>v', '<cmd>vsplit<CR>')

-- Copy/Paste/Cut
map('n', 'YY', '+y<CR>')
map('n', 'XX', '+x<CR>')


-- Buffer nav
map('n', '<leader>z', ':bp<CR>')
map('n', '<leader>q', ':bp<CR>')
map('n', '<leader>x', ':bn<CR>')
map('n', '<leader>w', ':bn<CR>')

-- Close buffer
map('n', '<leader>c', ':bd<CR>')

-- Clean search (highlight)
map('n', '<leader><space>', ':noh<cr>')

-- Switching windows
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-h>', '<C-w>h')

-- Vmap for maintain Visual Mode after shifting > and <
map('v', '<', '<gv')
map('v', '>', '>gv')

-- fzf lua
map('n', '<c-O>', '<cmd>lua require("fzf-lua").files({ cwd = "~" })<CR>')
map('n', '<c-P>', '<cmd>lua require("fzf-lua").files()<CR>')

-- toggle term
map('n', '<c-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
map('t', '<c-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>')

