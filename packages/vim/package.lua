return {
  name    = "vim",
  version = "9.2.920",
  summary = "Modal text editor",
  url     = "https://github.com/gretagen/zeta-packages/packages/vim/vim-9.2.920.tar.gz",
  sha256  = "bf6f93b96d4c64fcc0eca236548ab95532b63b1624efcbc265608c6df4bd3458",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("make test")
  end,
}
