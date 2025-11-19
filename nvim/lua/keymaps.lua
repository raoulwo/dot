-- Clear search hits when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")

-- Easier window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })

-- Maintain visual selection after indentation
vim.keymap.set("v", "<", "<gv", { desc = "Unindent visual selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent visual selection" })

-- Move visual selection up/down while keeping indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- Keep screen centered when using <C-d> or <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Open Netrw
vim.keymap.set("n", "<leader>n", "<cmd>Ex<CR>", { desc = "Open [N]etrw" })

-- Open current file in default MacOS application
vim.keymap.set("n", "<leader>x", ":!open %<CR><CR>")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard", noremap = true })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard", noremap = true })
vim.keymap.set("n", "<leader>Y", '"+y', { desc = "Yank to system clipboard" })

-- Paste without overwriting buffer
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overriding buffer", noremap = true })

-- Delete into black hole register
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete into black hole register", noremap = true })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete into black hole register", noremap = true })

-- Split windows
vim.keymap.set("n", "<leader>%", "<cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", '<leader>"', "<cmd>split<CR>", { desc = "Split window horizontally" })

-- Quit
vim.keymap.set("n", "Q", ":q<CR>", { desc = "Quit buffer" })
