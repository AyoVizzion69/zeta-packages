return {
  name    = "qtbase",
  version = "6.8.2",
  summary = "Qt 6 base libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/qtbase/qtbase-6.8.2.tar.gz",
  sha256  = "cfa14cd9b84a9ce03368f6a5559c1ea67dd1a181e35fe292e0bfc2040134d7ad",
  deps    = { "at-spi2-core", "cairo", "double-conversion", "fontconfig", "freetype", "gdk-pixbuf", "gtk3", "harfbuzz", "libICE", "libSM", "libb2", "libdrm", "libinput", "libmtdev", "libpng", "libz", "md4c", "pango", "pcre2", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core.so.6 -a -e " .. p.install_root .. "/usr/lib/libQt6Gui.so.6")
  end,
}
