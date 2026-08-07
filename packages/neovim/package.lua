return {
  name    = "neovim",
  version = "0.12.4",
  summary = "Vim-fork focused on extensibility and usability",
  url     = "neovim-0.12.4.tar.gz",
  sha256  = "0b196e05d8a8ac40463afa4d3bf2c1770ec34376341c11d37c621ac647f51bae",
  deps    = { "luv", "luajit", "tree-sitter", "unibilium" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvim")
  end,
}
