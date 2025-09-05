return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Language servers
        "rust-analyzer",
        "typescript-language-server",

        -- Formatters
        "prettier",

        -- Debuggers
        "codelldb",
      },
    },
  },
}
