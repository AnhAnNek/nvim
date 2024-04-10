local M = {
  "windwp/nvim-ts-autotag",
}

function M.config()
  require("nvim-ts-autotag").setup({
    enable = true,
    enable_rename = true,
    enable_close = false,
    enable_close_on_slash = false,

    filetypes = {
      "html",
      "javascript",
      "javascriptreact",
      "jsx",
      "rescript",
      "xml",
    },
  })
end

return M
