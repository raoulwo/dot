return {
    name = "C/C++ Build",

    builder = function()
        return {
            cmd = {
                "powershell.exe",
                "-NonInteractive",
                "-ExecutionPolicy",
                "Bypass",
                "-File",
                "scripts/build.ps1",
            },

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
        filetype = { "c", "cpp" },
    },
}
