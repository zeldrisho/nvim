local fn = vim.fn

require('plugins')
require('configs')
require('keybindings')

for _, file in ipairs(fn.readdir(fn.stdpath('config')..'/lua/plugins', [[v:val =~ '\.lua$']])) do
  require('plugins.'..file:gsub('%.lua$', ''))
end
