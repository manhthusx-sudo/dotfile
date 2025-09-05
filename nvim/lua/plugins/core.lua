return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = {
        "<leader>ca",
        function()
          require("tiny-code-action").code_action({})
        end,
        desc = "Code Action",
        mode = { "n", "v" },
        has = "codeAction",
      }
    end,
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
      picker = {
        exclude = {
          ".git",
          "target",
          "node_module",
          "dist",
        },
        hidden = true,
        ignored = true,
      },
    },
    keys = {},
  },
}
