return {
  name    = "pango",
  version = "1.56.3",
  summary = "Text layout and rendering library",
  url     = "https://github.com/gretagen/zeta-packages/packages/pango/pango-1.56.3.tar.gz",
  sha256  = "1b05568b1c7a1ce75fb3710cfe2d7bb020fe8a42be2aa8584e6ed2369a581989",
  deps    = { "cairo", "fontconfig", "freetype", "fribidi", "harfbuzz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpango-1.0.so.0 && test -f " .. p.install_root .. "/usr/lib/libpangocairo-1.0.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libpangocairo-1.0.so.0 | grep -q 'libpangocairo-1.0.so.0'")
  end,
}
