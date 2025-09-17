return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { 
        "lua_ls", 
        -- "ts_ls", 
        -- "bashls"
        -- "clangd", 
        -- "cssls",
        -- "cmake-language-server",
        -- "dockerls",
        -- "mdx_analyzer",
        -- "nginx-language-server",
        -- "sqlls",
        -- "tailwindcss",
        -- "terraformls",
        -- "rust_analyzer",
        -- "html",
      },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
