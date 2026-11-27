--[[ return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        require("tiny-inline-diagnostic").setup()
        vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
}]]


return {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({ })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end)

            vim.keymap.set("n", "[t", function()
                require("trouble").next({skip_groups = true, jump = true});
            end)

            vim.keymap.set("n", "]t", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end)

        end
}
