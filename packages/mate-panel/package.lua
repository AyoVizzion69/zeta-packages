return {
  name    = "mate-panel",
  version = "1.28.4",
  summary = "MATE desktop panel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-panel/mate-panel-1.28.4.tar.gz",
  sha256  = "1ae5c4b2ef741284a964d66a23acf265624f5b0bde8467cc139f385d56891433",
  deps    = { "glib", "gtk3", "gdk-pixbuf", "pango", "mate-desktop", "mate-menus", "libmateweather", "libwnck3", "dconf", "libICE", "libSM", "cairo" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-panel -a -f " .. p.install_root .. "/usr/lib/libmate-panel-applet-4.so")
  end,
}
