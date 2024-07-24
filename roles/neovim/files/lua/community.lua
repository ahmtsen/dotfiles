-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- color
  { import = "astrocommunity.color.mini-hipatterns"},
  { import = "astrocommunity.color.twilight-nvim"},
  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin"},
  -- completion
  { import = "astrocommunity.completion.cmp-calc"},
  { import = "astrocommunity.completion.cmp-cmdline"},
  { import = "astrocommunity.completion.cmp-emoji"},
  { import = "astrocommunity.completion.cmp-latex-symbols"},
  { import = "astrocommunity.completion.cmp-nerdfont"},
  { import = "astrocommunity.completion.cmp-nvim-lua"},
  { import = "astrocommunity.completion.cmp-spell"},
  { import = "astrocommunity.completion.cmp-tmux"},
  { import = "astrocommunity.completion.copilot-cmp"},
  -- debuging
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights"},
  { import = "astrocommunity.debugging.nvim-dap-virtual-text"},
  { import = "astrocommunity.debugging.telescope-dap-nvim"},
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim"},
  -- editing support
  { import = "astrocommunity.editing-support.cloak-nvim"},
  { import = "astrocommunity.editing-support.neogen"},
  { import = "astrocommunity.editing-support.refactoring-nvim"},
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.undotree" },
  -- game
  { import = "astrocommunity.game.leetcode-nvim"}, 
  -- git
  { import = "astrocommunity.git.git-blame-nvim"},
  -- icon
  { import = "astrocommunity.icon.mini-icons"},
  -- indent
  { import = "astrocommunity.indent.indent-blankline-nvim"},
  { import = "astrocommunity.indent.mini-indentscope"},
  -- motion
  { import = "astrocommunity.motion.flash-nvim"},
  -- neovim lua development
  { import = "astrocommunity.neovim-lua-development.lazydev-nvim"},
  -- pack
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  -- programming language support
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  -- recipes
  { import = "astrocommunity.recipes.auto-session-restore" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.vscode" },
  -- scrolling
  { import = "astrocommunity.scrolling.mini-animate" },
  -- search
  { import = "astrocommunity.search.nvim-hlslens" },
  -- terminal integration
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  -- test 
  { import = "astrocommunity.test.neotest" },
  -- utility
  { import = "astrocommunity.utility.noice-nvim"},
}
