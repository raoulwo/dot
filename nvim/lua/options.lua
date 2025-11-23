-- Enable mouse
vim.opt.mouse = "a"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight search
vim.opt.hlsearch = true
-- Incremental search
vim.opt.incsearch = true

vim.opt.wrap = false

-- Expand tabs to spaces
vim.opt.expandtab = true
-- Tabs equal 4 spaces
vim.opt.tabstop = 4
-- Indentation equals 4 spaces
vim.opt.shiftwidth = 4

-- Don't show the current mode
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true

-- Create a swapfile
vim.opt.swapfile = true
-- Backup a written file
vim.opt.backup = true
-- Keep backups out of the current directory
vim.opt.backupdir:remove(".")

-- Case-insensitive search unless one or more capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable signcolumn by default
vim.opt.signcolumn = "yes"

-- Decrease the update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 250

-- Configure how new splits are opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure how whitespace is displayed
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Remove the `~` characters from end of buffer
vim.opt.fillchars:append({ eob = " " })

-- Preview substitutions live
vim.opt.inccommand = "split"

-- Set the cursorline
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Complete the longest common match
vim.opt.wildmode = "longest:full,full"

-- Shows current file and working directory in tmux pane title
vim.opt.title = true

-- Enable all colors
vim.opt.termguicolors = true

-- Enable spell-checking
vim.opt.spell = true

-- Ask for confirmation instead of displaying error
vim.opt.confirm = true
