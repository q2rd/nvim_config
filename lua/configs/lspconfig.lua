-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- Use new vim.lsp.config API (Neovim 0.11+)
local servers = { "html", "cssls", "gopls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- Configure base settings for all servers
local base_config = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- Setup LSP servers with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = base_config
  vim.lsp.enable(lsp)
end

-- Setup pyright with custom pythonPath
vim.lsp.config.pyright = vim.tbl_deep_extend("force", base_config, {
  settings = {
    python = {
      pythonPath = vim.fn.getcwd() .. "/venv/bin/python", -- путь до виртуального окружения
    },
  },
})
vim.lsp.enable("pyright")
