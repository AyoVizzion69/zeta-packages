return {
  name    = "xfce4-session",
  version = "4.20.4",
  summary = "Xfce session manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xfce4-session/xfce4-session-4.20.4.tar.gz",
  sha256  = "ca6b87a69185a821ce4d38468266b211a2c181933113b0b150d759df48b3ba82",
  deps    = { "libxfce4windowing", "libxfce4ui", "libxfce4util", "xfconf", "polkit", "gtk3", "glib", "libSM", "libICE", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-session -a -e " .. p.install_root .. "/usr/lib/xfce4/session/xfsm-shutdown-helper")
  end,
}
