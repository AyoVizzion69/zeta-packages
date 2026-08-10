return {
  name    = "xfdesktop",
  version = "4.20.2",
  summary = "Xfce desktop background and icons manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xfdesktop/xfdesktop-4.20.2.tar.gz",
  sha256  = "db77d434816dc9fe3f42c58313cf367976b3c9eb5fb9b397c7db39537f16f002",
  deps    = { "exo", "garcon", "libxfce4windowing", "thunar", "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "libyaml", "gtk3", "glib", "pango", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfdesktop")
  end,
}
