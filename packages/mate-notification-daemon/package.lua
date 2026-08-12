return {
  name    = "mate-notification-daemon",
  version = "1.28.3",
  summary = "MATE notification daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-notification-daemon/mate-notification-daemon-1.28.3.tar.gz",
  sha256  = "5d858744fa4c23a0ffd92db5216936ce081cd7759a2f10f66847c5d1d1e494f0",
  deps    = { "glib", "gtk3", "libnotify", "libcanberra", "mate-desktop", "mate-panel", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/mate-notification-daemon")
  end,
}
