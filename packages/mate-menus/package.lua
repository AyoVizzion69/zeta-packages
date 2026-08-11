return {
  name    = "mate-menus",
  version = "1.28.0",
  summary = "MATE menu specification and library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-menus/mate-menus-1.28.0.tar.gz",
  sha256  = "1b3c6d193c6df74fcae70b4a34eef600f4f23133bbec271aa65c628f310969a8",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmate-menu.so")
  end,
}
