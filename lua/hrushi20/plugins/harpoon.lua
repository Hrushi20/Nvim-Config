return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      vim.keymap.set("n", "<leader>pa", function()
        harpoon:list():add()
      end, { desc = "Add file to Harpoon" })

      vim.keymap.set("n", "<leader>pm", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Show Harpoon files" })

      for slot = 1, 4 do
        local index = slot
        vim.keymap.set("n", "<leader>p" .. index, function()
          harpoon:list():select(index)
        end, { desc = "Open Harpoon file " .. index })
      end
    end,
  },
}
