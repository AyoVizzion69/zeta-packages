return {
  name    = "marco",
  version = "1.28.1",
  summary = "MATE window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/marco/marco-1.28.1.tar.gz",
  sha256  = "a7b7ecf4af849d7d8f2e5066f90ec7c3f8f6aeb4b9396419be88c47302412920",
  deps    = { "glib", "gtk3", "pango", "mate-desktop", "libcanberra", "startup-notification", "libXres", "libXcomposite", "libXrender", "libXcursor", "libXrandr", "libXinerama", "libXpresent" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmarco-private.so")
  end,
}
