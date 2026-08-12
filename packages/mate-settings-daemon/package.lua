return {
  name    = "mate-settings-daemon",
  version = "1.28.0",
  summary = "MATE settings daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-settings-daemon/mate-settings-daemon-1.28.0.tar.gz",
  sha256  = "baa123d3c06d47bf22aaf8154517c3400502662c6dd727042ae57001b146ec9e",
  deps    = { "glib", "gtk3", "libdconf", "mate-desktop", "libnotify", "libcanberra", "libmatekbd", "libxklavier", "libX11", "libXi", "libXrandr", "libXfixes", "libXtst", "libXext", "fontconfig", "polkit", "gsettings-desktop-schemas", "libSM", "libICE" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/mate-settings-daemon -a -f " .. p.install_root .. "/usr/lib/mate-settings-daemon/libbackground.so")
  end,
}
