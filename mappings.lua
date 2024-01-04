-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<C-a>"] = { function() require("harpoon.mark").add_file() end, desc = "Harpoon mark" },
    -- ["<C-1>"] = { function() require("harpoon.term").gotoTerminal(1) end, desc = "Harpoon go 1" },
    -- ["<C-2>"] = { function() require("harpoon.term").gotoTerminal(2) end, desc = "Harpoon go 2" },
    -- ["<C-3>"] = { function() require("harpoon.term").gotoTerminal(2) end, desc = "Harpoon go 3" },
    -- ["<C-4>"] = { function() require("harpoon.term").gotoTerminal(2) end, desc = "Harpoon go 4" },
    -- ["<C-5>"] = { function() require("harpoon.term").gotoTerminal(2) end, desc = "Harpoon go 5" },
    -- ["<C-6>"] = { function() require("harpoon.term").gotoTerminal(2) end, desc = "Harpoon go 6" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
