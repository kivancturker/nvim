local config = {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.HINT] = "",
      [vim.diagnostic.severity.INFO] = "",
    },
  },
  virtual_text = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "single",
    source = "always",
    header = "",
    prefix = "",
    suffix = "",
  },
}
vim.diagnostic.config(config)

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('UserLspGroup', {}),
  callback = function(ev)
   vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
   -- vim.keymap.set('n', 'gD', vim.lsp.buf.decleration, {})
   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  end
})

vim.lsp.config('*', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

-- Servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('bashls')
vim.lsp.enable('cssls')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake-language-server')
vim.lsp.enable('dockerls')
vim.lsp.enable('mdx_analyzer')
vim.lsp.enable('nginx-language-server')
vim.lsp.enable('sqlls')
vim.lsp.enable('tailwindcss')
vim.lsp.enable('terraformls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('html')
