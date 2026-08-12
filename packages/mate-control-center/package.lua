return {
  name    = "mate-control-center",
  version = "1.28.0",
  summary = "MATE control center",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-control-center/mate-control-center-1.28.0.tar.gz",
  sha256  = "4c62c2c2984fea068f891802bffba405cfb606574ea41eeb342befa51e7fc40d",
  deps    = { "glib", "gtk3", "mate-desktop", "mate-menus", "librsvg", "pango", "mate-settings-daemon", "libcanberra", "libnotify", "libdconf", "libmatekbd", "libxklavier", "libX11", "libXi", "libXcursor", "libXext", "libSM", "libICE", "marco", "polkit", "libxml2", "fontconfig", "freetype", "gsettings-desktop-schemas" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-control-center -a -f " .. p.install_root .. "/usr/bin/mate-system-info")
  end,
}
