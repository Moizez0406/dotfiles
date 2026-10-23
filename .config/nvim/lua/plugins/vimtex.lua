return {
    {
        "lervag/vimtex",
        lazy = false,
        init = function() -- Use init instead of config for VimTeX globals
            vim.g.vimtex_view_method = "zathura"

            -- Tell the compiler and the viewer exactly where the output goes
            vim.g.vimtex_compiler_latexmk = {
                out_dir = "build",
                options = {
                    "-verbose",
                    "-file-line-error",
                    "-synctex=1",
                    "-interaction=nonstopmode",
                },
            }

            vim.g.vimtex_view_autofocus = 1
        end,
    },
}
