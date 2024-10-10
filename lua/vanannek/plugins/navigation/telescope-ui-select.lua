return {
  "nvim-telescope/telescope-ui-select.nvim",
  config = function()
    -- Load Telescope
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            -- Customize appearance
            layout_config = {
              width = 0.8, -- 80% of the screen width
              height = 0.4, -- 40% of the screen height
            },
            previewer = false, -- Disable preview for select UI
            prompt_prefix = "🔍 ", -- Custom prompt symbol
          }),
        },
      },
    })

    -- Use Telescope for vim.ui.select
    vim.ui.select = function(items, opts, on_choice)
      require("telescope").extensions["ui-select"].select(items, opts, on_choice)
    end

    -- To get ui-select loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require("telescope").load_extension("ui-select")
  end,
}