-- Status-line
local statusline = require('statusline')
statusline.tabline = false

-- GitSigns
require('gitsigns').setup {
  signcolumn = false,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = true, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`

}

-- Css-Colorizer
require('colorizer').setup()

-- Auto-save
-- require('autosave').setup()

-- Auto-Pairs
require('nvim-autopairs').setup({
  ignored_next_char = "[%w%.]" -- ignore alphanumeric, `.`
})

-- Comment
require('Comment').setup()
