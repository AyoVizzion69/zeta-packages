return {
  name    = "dbus",
  version = "1",
  summary = "D-Bus message bus (provided by the base system; stub package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/dbus/dbus-1.tar.gz",
  sha256  = "90d789e3dd1cffac67a78d1263fbbdfbf0673220319a91536b6acd0e453dc2a8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
