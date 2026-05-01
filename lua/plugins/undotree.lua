-- return {
--   {
--     "debugloop/telescope-undo.nvim",
--     dependencies = { "nvim-telescope/telescope.nvim" },
--     keys = {
--       { "<leader>ut", "<cmd>Telescope undo<cr>", desc = "Undo History" },
--     },
--     config = function()
--       require("telescope").setup({
--         extensions = {
--           undo = {
--             -- Force the mappings inside the floating window
--             mappings = {
--               i = {
--                 ["<cr>"] = require("telescope-undo.actions").restore,
--                 ["<C-y>"] = require("telescope-undo.actions").yank_additions,
--                 ["<C-r>"] = require("telescope-undo.actions").restore,
--               },
--               n = {
--                 ["<cr>"] = require("telescope-undo.actions").restore,
--                 ["<C-y>"] = require("telescope-undo.actions").yank_additions,
--                 ["<C-r>"] = require("telescope-undo.actions").restore,
--               },
--             },
--           },
--         },
--       })
--       require("telescope").load_extension("undo")
--     end,
--   },
--   -- Redo with U
--   vim.keymap.set("n", "<C-z>", "<C-r>", { desc = "Redo" }),
-- }

return {
  -- 1. The Visual Tree (mbbill/undotree)
  -- This is the plugin that draws the vertical branching graph.
  {
    "mbbill/undotree",
    keys = {
      { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Undo Tree Visualizer" },
    },
    config = function()
      -- Layout 3: Tree on the right, Diff panel on the bottom
      vim.g.undotree_WindowLayout = 3
      vim.g.undotree_SetFocusWhenToggle = 1

      -- WINDOWS
      vim.g.undotree_DiffCommand = "fc"

      -- TREE STRUCTURE: Use standard characters for the graph
      -- This ensures the branching tree lines (| / \ *) render correctly in Windows terminals.
      vim.g.undotree_TreeNodeShape = "*"
      vim.g.undotree_TreeVertShape = "|"
      vim.g.undotree_TreeSplitShape = "/"
      vim.g.undotree_TreeReturnShape = "\\"

      -- Makes the panel slightly wider for better visibility
      vim.g.undotree_SplitWidth = 35
    end,
  },

  -- 2. Telescope Undo (Optional)
  -- Provides a fuzzy searchable list of your changes.
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>ut", "<cmd>Telescope undo<cr>", desc = "Search Undo History" },
    },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },

  -- 3. Custom Windows-Style Keymaps
  -- These allow you to use Ctrl+u for Undo and Ctrl+z for Redo.
  {
    "LazyVim/LazyVim",
    opts = function()
      -- Maps Control + u to Undo (Caution: This replaces 'Scroll Up')
      vim.keymap.set("n", "<C-u>", "u", { desc = "Undo" })

      -- Maps Control + z to Redo (This matches standard Windows behavior)
      vim.keymap.set("n", "<C-z>", "<C-r>", { desc = "Redo" })
    end,
  },
}
