vim.opt.termguicolors = true

require('bufferline').setup {

  options = {

    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"

    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',

    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,

    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = true,

    separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },

     -- diagnostics = false | "nvim_lsp" | "coc",
    -- diagnostics_update_in_insert = false,
    -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
    --   return "("..count..")"
    -- end,
 }
}
