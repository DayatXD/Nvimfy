local api = vim.api
local function nvim_create_augroups(definitions)
	for group_name, definition in pairs(definitions) do
		api.nvim_command('augroup ' .. group_name)
		api.nvim_command('autocmd!')
		for _, def in ipairs(definition) do
			local command = table.concat(vim.tbl_flatten({ 'autocmd', def }), ' ')
			api.nvim_command(command)
		end
		api.nvim_command('augroup END')
	end
end

local function setup()
	local definitions = {

		onload = {
			{ 'VimResized', '*', 'wincmd =' },
		},
    onwrite = {
			{ 'BufWritePost', '~/.config/nvim/*.{vim,lua}', 'so $MYVIMRC' },
      { 'FocusGained,BufEnter', '*', ':checktime' }
    },
    restore_cursor = {
        { 'BufRead', '*', [[call setpos(".", getpos("'\""))]] }
    },
    
}
nvim_create_augroups(definitions)
end
setup()

-- EXAMPLES

--insert = {  --TURN OFF RELATIVE LINE NUMBERING WHEN WE ENTER INSERT MODE AND ENABLE OTHERWISE
--      { "InsertEnter", "*", ":set norelativenumber"},
--      { "InsertLeave", "*", ":set relativenumber"}
--        }
--onhold = {
--     { 'CursorHoldI', '*', 'stopinsert'}
--    }

