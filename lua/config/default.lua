-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default
-- vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Save undo history
vim.opt.undofile = true

vim.opt.encoding = "utf-8"

vim.opt.compatible = false
vim.opt.hlsearch = true
vim.opt.vb = true
vim.opt.ruler = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- enable auto indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true
-- vim.opt.softtabstop = 2
-- vim.opt.colorcolumn = "120"
-- vim.opt.textwidth = 120

vim.opt.wildmenu = true
-- Enable break indent
vim.opt.breakindent = true

-- case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true

vim.o.wrap = true

-- u undo, U redo
vim.api.nvim_set_keymap("n", "U", "<C-r>", { noremap = true })

-- move code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
vim.keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- diagnostics
vim.keymap.set("n", "<leader>of", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "diagnostic open_float" })
vim.keymap.set("n", "<leader>en", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "diagnostic prev" })
vim.keymap.set("n", "<leader>ep", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "diagnostic next" })
