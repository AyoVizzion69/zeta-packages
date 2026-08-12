return {
  name    = "mate-power-manager",
  version = "1.28.1",
  summary = "MATE power manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-power-manager/mate-power-manager-1.28.1.tar.gz",
  sha256  = "f0284cce60b32f1af662aee1c4fe00889750d4a28dc44f21d3832f0781a4cf0e",
  deps    = { "glib", "gtk3", "dbus-glib", "dbus", "cairo", "mate-desktop", "libnotify", "libcanberra", "upower", "libX11", "libXext", "libXrandr", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-power-manager -a -f " .. p.install_root .. "/usr/libexec/mate-brightness-applet")
  end,
}
