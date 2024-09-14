return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = { event = "notify", find = "No information available" },
        opts = { skip = true },
      },
    },
    presets = {
      lsp_doc_border = true,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      messages = {
        enabled = true,
        max_height = 5,
        max_width = 60,
        history = { enabled = true },
        messages = { limit = 2 },
      },
      notify = {
        enabled = true,
        view = "mini",
      },
    })

    vim.keymap.set("n", "<leader>cm", ":NoiceDismiss<CR>", { noremap = true, silent = true, desc = "Close Noice messages" })
  end,
}
