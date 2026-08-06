return {
  name = "libXmu",
  version = "1.3.1",
  summary = "X11 miscellaneous utilities library (incl. libXmuu)",
  url = "https://github.com/gretagen/zeta-packages/packages/libXmu/libXmu-1.3.1.tar.gz",
  sha256 = "a6090e482a9b6e6b9ace3bb6d0af8f72cff3738ac710ac15340cfae677649a8d",
  deps = { "libXt", "libXext", "libX11" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXmuu.so.1")
  end,
}
