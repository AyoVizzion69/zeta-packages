return {
  name    = "upower",
  version = "1.90.10",
  summary = "Power management daemon and tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/upower/upower-1.90.10.tar.gz",
  sha256  = "46149c5021089e3c4eae505a414c1fb6b8c8d1469a66b7939b2e24840f6d3f23",
  deps    = { "glib", "libgudev", "polkit", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libupower-glib.so.3")
  end,
}
