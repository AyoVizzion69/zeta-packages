return {
  name    = "cairo",
  version = "1.18.4",
  summary = "2D graphics library",
  url     = "https://github.com/gretagen/zeta-packages/packages/cairo/cairo-1.18.4.tar.gz",
  sha256  = "a2f9fc50d8509cd11c9c2a20426dae5d1045ef039490e4862e2e8b01de8e4283",
  deps    = { "fontconfig", "freetype", "libpng", "libX11", "libXext", "libXrender", "pixman", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libcairo.so.2 && readelf -d " .. p.install_root .. "/usr/lib/libcairo.so.2 | grep -q 'libcairo.so.2'")
  end,
}
