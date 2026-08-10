return {
  name    = "xfconf",
  version = "4.20.0",
  summary = "Flexible, easy-to-use configuration management system for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xfconf/xfconf-4.20.0.tar.gz",
  sha256  = "bca81ac78e365396aadeb8d55bed03e1ce6fc808060a93df985c402d2c0190bf",
  deps    = { "libxfce4util", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxfconf-0.so.3 -a -e " .. p.install_root .. "/usr/lib/xfce4/xfconf/xfconfd")
  end,
}
