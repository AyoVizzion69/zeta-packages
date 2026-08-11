return {
  name    = "xfce4-settings",
  version = "4.20.5",
  summary = "Xfce settings manager and configuration dialogs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xfce4-settings/xfce4-settings-4.20.5.tar.gz",
  sha256  = "0250c605857844571b5f39215a97326b517a3c97572e3d056c168ca83697304c",
  deps    = { "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "upower", "libxklavier", "fontconfig", "gtk3", "glib", "libX11", "libXext", "libXi", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfsettingsd")
  end,
}
