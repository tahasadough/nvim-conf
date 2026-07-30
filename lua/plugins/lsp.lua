return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        emmet_language_server = {
          filetypes = { "html", "css", "templ", "javascriptreact", "typescriptreact", "vue", "svelte" },
        },
      },
    },
  },
}
