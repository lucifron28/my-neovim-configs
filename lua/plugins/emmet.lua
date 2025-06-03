return {
  "mattn/emmet-vim",
  ft = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
    "svelte",
    "php",
  },
  config = function()
    vim.g.user_emmet_leader_key = "<C-e>"
  end,
}
