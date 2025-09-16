return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "asm", "astro", "bash", "c", "c_sharp", "cmake", "cpp", "css", "csv", "diff", "dockerfile", "elixir",
        "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", 
        "go", "gomod", "gosum", "gotmpl", "gowork", "graphql", "html", "http", "java", "javadoc",
        "javascript", "jsdoc", "json", "jsonc", "kotlin", "latex", "llvm", "lua", "luadoc", "make",
        "markdown", "markdown_inline", "nginx", "ocaml", "pascal", "perl", "php", "phpdoc", "proto",
        "pug", "python", "regex", "requirements", "robots", "ruby", "rust", "scala", "scss", "solidity",
        "sql", "ssh_config", "svelte", "swift", "terraform", "tmux", "toml", "tsx", "typescript", "vim",
        "vimdoc", "vue", "xml", "yaml", "zig"
      },
      auto_install = false,
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      additional_vim_regex_highlighting = false,
      },
    }
  end
}
