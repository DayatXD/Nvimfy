require'colorizer'.setup()
require("autosave")
require('Comment').setup()

require'nvim-treesitter.configs'.setup {
  --ensure_installed = "maintained", -- To Install All
  ensure_installed = { "lua", "json", "bash", "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
