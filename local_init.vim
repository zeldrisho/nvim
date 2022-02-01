" AutoSave
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF


" TreeSitter
lua << EOF
require('nvim-treesitter.configs').setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"cpp", "java", "bash", "vim", "lua"},

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  }
}
EOF


" Commenter
lua << EOF
    require('nvim_comment').setup()
EOF

" Lualine
lua << EOF
    require('lualine').setup()
EOF

" Fzf lua files map
nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>

" Term
lua << EOF
require('toggleterm').setup {
    size=3 
}
EOF

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


