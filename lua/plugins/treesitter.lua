return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "fish",
        "gitignore",
        "graphql",
        "http",
        "java",
        "scss",
        "sql",
        "vue",
        "rust",
        "yaml",
        "svelte",
        "tsx",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      -- MDX

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
