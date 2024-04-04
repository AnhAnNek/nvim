return {
  "Bekaboo/dropbar.nvim",
  -- optional, but required for fuzzy finder support
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufWritePost" }, {
      once = true,
      group = vim.api.nvim_create_augroup("DropBarSetup", {}),
      callback = function()
        require("dropbar").setup()
      end,
    })
  end,
}
