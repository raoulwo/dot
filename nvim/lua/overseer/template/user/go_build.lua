return {
    name = "Go Build",

    builder = function()
        return {
            cmd = { "go", "build", "." },

            components = {
                {
                    "on_output_quickfix",
                    open = false,
                    open_on_exit = "never",
                },
                "user.open_quickfix_vertical",
                "default",
            },
        }
    end,

    condition = {
        filetype = { "go" },
    },
}
