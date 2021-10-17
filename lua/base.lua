require'colorizer'.setup()
require("autosave")
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
}
