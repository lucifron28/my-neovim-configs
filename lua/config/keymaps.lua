-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>mp", function()
  require("snacks").terminal({ "glow", vim.fn.expand("%") }, {
    cwd = vim.fn.expand("%:p:h"),
    esc_esc = false,
    ctrl_hjkl = false,
    border = "rounded",
    float = true,
    width = 80,
    height = 20,
  })
end, { desc = "Preview Markdown with Glow" })
