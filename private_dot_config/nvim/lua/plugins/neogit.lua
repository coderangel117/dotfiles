return {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- requis par Neogit
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<CR>", desc = "Ouvrir Neogit" },
    },
    opts = {
      -- tu peux personnaliser les options ici
      kind = "tab", -- "split", "vsplit", "tab", "replace"
    },
  }
  