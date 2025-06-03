return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "dark", -- you can also try "darker", "cool", "deep", "warm", "warmer", "light"
      transparent = true, -- makes background transparent (optional)
      -- other options here
    })
    require("onedark").load()
  end,
}
