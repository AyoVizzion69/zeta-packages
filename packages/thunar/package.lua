return {
  name    = "thunar",
  version = "4.20.9",
  summary = "File manager for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/thunar/thunar-4.20.9.tar.gz",
  sha256  = "836288d4c46e152c78dc7e38a0b4390693b42ac1c48077b3486bc5fdfd744ebd",
  deps    = { "exo", "libxfce4ui", "libxfce4util", "xfconf", "libgudev", "libnotify", "gtk3", "glib", "libSM", "libICE", "harfbuzz", "cairo", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/thunar -a -e " .. p.install_root .. "/usr/lib/libthunarx-3.so.0")
  end,
}
