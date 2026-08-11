return {
  name    = "gtk3",
  version = "3.24.50",
  summary = "GTK+ 3 toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gtk3/gtk3-3.24.50.tar.gz",
  sha256  = "b741fe8efdca6a096f305a1fa82fe23c625fb7d40f6af2a074a1119d858b7488",
  deps    = { "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libz", "pango", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtk-3.so.0 && test -f " .. p.install_root .. "/usr/lib/libgdk-3.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libgdk-3.so.0 | grep -q 'libgdk-3.so.0'")
  end,
}
