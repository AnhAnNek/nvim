local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "vanannek.plugins" },
  { import = "vanannek.plugins.lsp" },
  { import = "vanannek.plugins.navigation" },
  { import = "vanannek.plugins.session" },
  { import = "vanannek.plugins.ui" },
  { import = "vanannek.plugins.git" },
  "LazyVim/LazyVim",
}, {
  install = {
    colorscheme = { "nightfly" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
