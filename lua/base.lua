local statusline = require('statusline')
statusline.tabline = false

--require('staline').setup{}


require('colorizer').setup()

require('autosave').setup()

require('nvim-autopairs').setup({
  ignored_next_char = "[%w%.]" -- will ignore alphanumeric and `.` symbol
})
require('Comment').setup()

require'nvim-treesitter.configs'.setup {
  --ensure_installed = "maintained", -- To Install All
  ensure_installed = { "lua", "json", "bash", "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autotag = {
    enable = true,
  }
}
