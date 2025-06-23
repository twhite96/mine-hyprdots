return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        opts = {
          ensure_installed = {
            "bash",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "go",
            "gotmpl",
            "cpp",
            "jinja",
            "jinja_inline",
            "hyprlang",
            "liquid",
            "dockerfile",
            "astro",
            "regex",
            "query",
            "tsx",
            "typescript",
            "vim",
            "yaml",
          },
        },
      })
    end,
  },
}
