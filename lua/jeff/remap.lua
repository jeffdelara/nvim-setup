print("Loading keymaps...")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope
local builtin = require('telescope.builtin')
-- find file names
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- find files that contains string
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- find files in git
vim.keymap.set('n', '<leader>fb', builtin.git_files, {})
-- same as fg but on the console
vim.keymap.set('n', '<leader>fs', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });


-- tabs
vim.keymap.set("n", "<Tab>", ">>", { silent = true, desc = "Outdent" })

vim.keymap.set("n", "<S-Tab>", "<<", { silent = true, desc = "Outdent" })

vim.keymap.set("n", ">", ">>", { silent = true, desc = "Indent" })

vim.keymap.set("v", "<lt>", "<lt>gv", { silent = true, desc = "Indent" })

vim.keymap.set("v", ">", ">gv", { silent = true, desc = "Indent" })
end) 
