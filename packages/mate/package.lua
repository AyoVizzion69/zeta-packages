return {
  name    = "mate",
  version = "1.28",
  summary = "MATE desktop group (meta-package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate/mate-1.28.tar.gz",
  sha256  = "90d789e3dd1cffac67a78d1263fbbdfbf0673220319a91536b6acd0e453dc2a8",
  deps    = { "caja", "marco", "mate-panel", "mate-session-manager", "mate-settings-daemon", "mate-control-center", "mate-power-manager", "mate-polkit", "mate-menus", "mate-desktop", "mate-notification-daemon", "mate-terminal", "mate-backgrounds", "mate-calc", "mate-utils", "eom", "pluma", "libmatekbd", "libmateweather", "libgtop", "libpeas", "gsettings-desktop-schemas", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
