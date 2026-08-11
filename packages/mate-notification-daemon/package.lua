return {
  name    = "mate-notification-daemon",
  version = "1.28.3",
  summary = "MATE notification daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-notification-daemon/mate-notification-daemon-1.28.3.tar.gz",
  sha256  = "1816bb9ca826688144a592324ef569498f202dd0fab847585cc21d224c0f08a0",
  deps    = { "glib", "gtk3", "libnotify", "libcanberra", "mate-desktop", "mate-panel", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/mate-notification-daemon")
  end,
}
