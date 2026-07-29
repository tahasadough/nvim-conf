return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        emmet_language_server = {
          filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
        },
      },
    },
  },
}
