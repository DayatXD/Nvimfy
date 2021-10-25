require'nvim-treesitter.configs'.setup {

  ensure_installed = { "lua", "json", "bash" },  --maintained

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = false,
    extended_mode = true, -- html tags, boolean or table, boolean
    max_file_lines = nil, -- more than n lines, int
    -- colors = {},
    -- termcolors = {}
  },

  autotag = {
    enable = true,
  }
}
