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
-- Tabs equal 2 spaces
vim.opt.tabstop = 2
-- Indentation equals 2 spaces
vim.opt.shiftwidth = 2

-- Don't show the current mode
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true

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

-- Preview substitutions live
vim.opt.inccommand = "split"

-- Highlight the line the cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Don't create a swapfile
vim.opt.swapfile = false
-- Don't backup a written file
vim.opt.backup = false
