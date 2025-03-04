-- Aliases
local g = vim.g
local o = vim.opt

-- Opciones de la configuracion de nvim 
o.encoding = 'utf-8'
o.nu = true -- enable line numbers on the left
o.relativenumber = true -- relative line numbers

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.autoindent = true

o.ignorecase = true -- ignore case when searching
o.smartcase = true -- unless capital latter in search

o.hlsearch = false -- do not highlight all matches on previous search pattern
o.incsearch = true -- incrementally highlight searches as you type

o.termguicolors = true -- enable true color suport

o.scrolloff = 10 -- minimum number of lines to keep above and below the cursor
o.sidescrolloff = 10 -- minimum number of columns to keep above and below the cursor

--o.syntax = "on"

