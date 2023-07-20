-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "angularls",
        "clangd",
        "omnisharp",
        "cmake",
        "cssls",
        "denols",
        "dockerls",
        "docker_compose_language_service",
        "eslint",
        "gopls",
        "html",
        "jsonls",
        "tsserver",
        "texlab",
        "prismals",
        "pyright",
        "rust_analyzer",
        "taplo",
        "tailwindcss",
        "sqlls",
        "volar",
        "lemminx",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "eslintd",
        "gitsings",
        "gomodifytags",
        "impl",
        "ltrs",
        "refactoring",
        "actionlint",
        "buf",
        "codespell",
        "deno_lint",
        "dotenv_linter",
        "editorconfig_checker",
        "flake8",
        "gospel",
        "jsonlint",
        "markuplint",
        "staticcheck",
        "stylelint",
        "tidy",
        "tsc",
        "yamllint",
        "autopep8",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
