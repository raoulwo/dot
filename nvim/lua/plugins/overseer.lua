return {
  'stevearc/overseer.nvim',
  opts = {
    strategy = "terminal", -- Uses toggleterm backend for real ANSI terminal colors
    task_list = {
      direction = "right",
      min_height = 15,
      max_height = 20,
      default_detail = 1,
    },
  },
  config = function(_, opts)
    require('overseer').setup(opts)

    -- Keymaps to mimic "M-x compile" workflow
    -- 1. Run build task (opens picker if multiple, or runs the C/C++ build script directly)
    vim.keymap.set('n', '<leader>b', '<cmd>OverseerRun<CR>', { desc = "Run Build / Compile" })

    -- 2. Toggle the persistent output/error pane manually
    vim.keymap.set('n', '<leader>to', '<cmd>OverseerToggle<CR>', { desc = "Toggle Build Output Pane" })

    -- 3. Quick navigation through compilation errors using standard Quickfix commands
    vim.keymap.set('n', '<leader>[c', '<cmd>cprev<CR>', { desc = "Previous compilation error" })
    vim.keymap.set('n', '<leader>]c', '<cmd>cnext<CR>', { desc = "Next compilation error" })

    vim.keymap.set("n", "<leader>c", function()
        local qf_info = vim.fn.getqflist({ winid = 0 })

        if qf_info.winid ~= 0 then
            vim.cmd("cclose")
        else
            vim.cmd("botright vertical copen")
            vim.cmd("vertical resize 70")
        end
    end, { desc = "Toggle Quickfix (vertical)" })
end
}
