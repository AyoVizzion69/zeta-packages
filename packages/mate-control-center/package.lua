return {
  name    = "mate-control-center",
  version = "1.28.0",
  summary = "MATE control center",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-control-center/mate-control-center-1.28.0.tar.gz",
  sha256  = "43ae8e5e464717ff106dbc046ec02015cce3f048c536ab3c96fc45fa01cdbf92",
  deps    = { "glib", "gtk3", "mate-desktop", "mate-menus", "librsvg", "pango", "mate-settings-daemon", "libcanberra", "libnotify", "dconf", "libmatekbd", "libxklavier", "libX11", "libXi", "libXcursor", "libXext", "libSM", "libICE", "marco", "polkit", "libxml2", "fontconfig", "freetype", "gsettings-desktop-schemas" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-control-center -a -f " .. p.install_root .. "/usr/bin/mate-system-info")
  end,
}
