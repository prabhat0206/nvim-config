require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "vim", "json", "yaml", "toml", "html", "css", "javascript", "typescript", "tsx", "python", "bash", "go", "java", "php", "ruby", "vue", "svelte", "dart", "dockerfile", "graphql", "haskell", "jsonc", "latex", "ocaml", "ocaml_interface", "purescript", "regex", "scala", "scss", "sparql", "supercollider", "turtle", "verilog", "yaml", "zig" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}