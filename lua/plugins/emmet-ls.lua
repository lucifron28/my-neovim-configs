return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      emmet_ls = function(_, opts)
        -- Add snippet capability manually
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        require("lspconfig").emmet_ls.setup({
          capabilities = capabilities,
          filetypes = {
            "html",
            "css",
            "scss",
            "javascriptreact",
            "typescriptreact",
            "vue",
            "svelte",
            "php",
            "astro",
          },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = true,
              },
            },
          },
        })

        return true -- prevent default setup from LazyVim
      end,
    },
  },
}
