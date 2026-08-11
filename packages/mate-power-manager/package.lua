return {
  name    = "mate-power-manager",
  version = "1.28.1",
  summary = "MATE power manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-power-manager/mate-power-manager-1.28.1.tar.gz",
  sha256  = "46e8ac6a2610577abb598a23f36fdaedbd8a5b3c79bc868b0071e88fab8318c8",
  deps    = { "glib", "gtk3", "dbus-glib", "dbus", "cairo", "mate-desktop", "libnotify", "libcanberra", "upower", "libX11", "libXext", "libXrandr", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-power-manager -a -f " .. p.install_root .. "/usr/libexec/mate-brightness-applet")
  end,
}
