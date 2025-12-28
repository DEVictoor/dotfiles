return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Desactivamos phpactor explícitamente por si acaso
        phpactor = { enabled = false },
        -- Configuramos intelephense
        intelephense = {
          enabled = true,
          settings = {
            intelephense = {
              files = {
                maxSize = 5000000,
              },
              environment = {
                includePaths = { "vendor/laravel" },
                phpVersion = "8.3",
              },
              -- Habilitamos compatibilidad con Laravel
              stubs = {
                "bcmath",
                "date",
                "filter",
                "hash",
                "iconv",
                "json",
                "mbstring",
                "openssl",
                "pcre",
                "readline",
                "regex",
                "session",
                "simplexml",
                "standard",
                "tokenizer",
                "xml",
                "zip",
                "zlib",
                "wordpress",
                "laravel",
                "random",
              },
            },
          },
        },
      },
    },
  },
}
