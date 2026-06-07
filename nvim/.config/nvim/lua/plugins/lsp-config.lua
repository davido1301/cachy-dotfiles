---@diagnostic disable: undefined-global
return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "lua_ls", "pyright" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {})
      vim.lsp.enable("lua_ls")
      
      vim.lsp.config("tsserver", {})
      vim.lsp.enable("tsserver")

      vim.lsp.config("pyright", {})
      vim.lsp.enable("pyright")
    end,
  },
}
