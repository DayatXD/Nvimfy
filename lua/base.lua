-- Status-line
local statusline = require('statusline')
statusline.tabline = false

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
