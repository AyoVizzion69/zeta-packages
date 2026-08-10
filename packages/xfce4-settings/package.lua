return {
  name    = "xfce4-settings",
  version = "4.20.5",
  summary = "Xfce settings manager and configuration dialogs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xfce4-settings/xfce4-settings-4.20.5.tar.gz",
  sha256  = "fe1f1298b5d66916c99fea32e8f78f6761598274ba071abbb9891ae77b519df6",
  deps    = { "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "upower", "libxklavier", "fontconfig", "gtk3", "glib", "libX11", "libXext", "libXi", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfsettingsd")
  end,
}
