return {
  name    = "mate-session-manager",
  version = "1.28.0",
  summary = "MATE session manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-session-manager/mate-session-manager-1.28.0.tar.gz",
  sha256  = "f38527cdc21875e4b6381ae1b25aee364c5f7628bd2262e7d364f9ef195616fb",
  deps    = { "glib", "gtk3", "dbus-glib", "libX11", "libSM", "libICE", "libXext", "libXau", "libXcomposite", "libepoxy", "mesa", "xtrans" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-session")
  end,
}
