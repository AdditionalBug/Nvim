-- return {
--   "bluz71/vim-nightfly-colors",
--   name = "nightfly",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optional: Customization before loading
--     vim.g.nightflyTransparent = true -- Built-in transparency support
--     vim.g.nightflyVirtualTextColor = true

--     vim.cmd([[colorscheme nightfly]])
--   end,
-- }

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- Enable transparency
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
    config = function(_, opts)
      require("solarized-osaka").setup(opts)
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}
