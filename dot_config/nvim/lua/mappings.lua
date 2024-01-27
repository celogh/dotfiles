vim.g.mapleader = " "

-- Move whole selection down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move whole selection up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Concat next line to current with cursor in place
vim.keymap.set("n", "J", "mzJ`z")
-- Scroll down with cursor still centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Scroll up with cursor still centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Search forward with cursor still centered
vim.keymap.set("n", "n", "nzzzv")
-- Search backward with cursor still centered
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing current register
vim.keymap.set("x", "<leader>p", '"_dp', { desc = "Paste without losing current register" })
-- Delete without losing current register
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without losing current register" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete without losing current register" })

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

-- Abort current action to normal mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Quickfix next" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Quickfix previous" })
