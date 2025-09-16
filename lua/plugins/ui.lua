return {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = {
          treesitter = true,
          lsp_trouble = true,
          cmp = true
        }
      })
      vim.cmd.colorscheme 'catppuccin'
    end
  }
}
