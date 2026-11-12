-- Clear search hits when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
-- TODO: Can I open the diagnostic qf list in a vertical split similar to overseer?
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Buffer keymaps
vim.keymap.set("n", "[b", "<cmd>bp<CR>", { desc = "Go to previous [B]uffer" })
vim.keymap.set("n", "]b", "<cmd>bn<CR>", { desc = "Go to next [B]uffer" })
vim.keymap.set("n", "[B", "<cmd>bf<CR>", { desc = "Go to first [B]uffer" })
vim.keymap.set("n", "]B", "<cmd>bl<CR>", { desc = "Go to last [B]uffer" })

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

-- Easier window resizing
vim.keymap.set("n", "<C-w>+", "<cmd>resize +5<CR>", { desc = "Increase window height by 5" })
vim.keymap.set("n", "<C-w>-", "<cmd>resize -5<CR>", { desc = "Decrease window height by 5" })
vim.keymap.set("n", "<C-w>>", "<cmd>vertical resize +10<CR>", { desc = "Increase window width by 10" })
vim.keymap.set("n", "<C-w><", "<cmd>vertical resize -10<CR>", { desc = "Decrease window width by 10" })

-- Move visual selection up/down while keeping indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep screen centered when using <C-d> or <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open [L]azy" })
vim.keymap.set("n", "<leader>n", "<cmd>Ex<CR>", { desc = "Open [N]etrw" })
vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Open [M]ason" })

-- Open Oil
vim.keymap.set("n", "\\", "<cmd>Oil<CR>", { desc = "Open [O]il in parent directory" })

-- Remap `&` to reuse flags
vim.keymap.set("n", "&", "<cmd>&&<CR>", { desc = "Repeat substitution with flags" })
vim.keymap.set("x", "&", "<cmd>&&<CR>", { desc = "Repeat substitution with flags" })
