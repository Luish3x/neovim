-- Declaracion de variables locales|
local map = vim.keymap.set
local def_ops = {noremap = true, silent = true}
local g = vim.g.mapleader

g = " "

-- Para mover el cursor en el modo insercion con  h j k l
map ('i', '<C-h>', '<left>', def_ops)
map ('i', '<C-j>', '<down>', def_ops)
map ('i', '<C-k>', '<up>', def_ops)
map ('i', '<C-l>', '<right>', def_ops)

-- Copiar al portapapeles del sistema
map({"n", "v"}, "<C-c>", [["+y]])

-- Moverse atravez de las ventanas en nvim 
map ("n", "<A-j>", "<cmd>bn<cr>")
map ("n", "<A-k>", "<cmd>bp<cr>")
map ("n", "<A-c>", "<cmd>bd<cr>")

-- Telescope 
map ("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map ("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map ("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map ("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Tree
map ("n", "<leader>xe", "<cmd>NvimTreeFindFileToggle<cr>")

-- Toogle Term
-- map ("n", "<leader>t", "<cmd>ToggleTerm<cr>")

-- Explorador de archivos 
map ("n", "<leader>e", "<cmd>Oil<cr>")

--map("n", "<leader>a", function() harpoon.list().add() end)
--map("n", "<C-e>", function() harpoon.ui.toggle_quick_menu(harpoon.list()) end)

--map("n", "<C-h>", function() harpoon.list().select(1) end)
--map("n", "<C-t>", function() harpoon.list().select(2) end)
--map("n", "<C-n>", function() harpoon.list().select(3) end)
--map("n", "<C-s>", function() harpoon.list().select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
--map("n", "<C-S-P>", function() harpoon.list().prev() end)
--map("n", "<C-S-N>", function() harpoon.list().next() end)
