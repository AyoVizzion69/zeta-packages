return {
  name = "libX11",
  version = "1.8.13",
  summary = "X11 core client library",
  url = "https://github.com/gretagen/zeta-packages/packages/libX11/libX11-1.8.13.tar.gz",
  sha256 = "3e95c6593975ec6f0a5450be89b55066252302cb45c26d1c8dc1cae7e6df1b19",
  deps = { "libxcb", "libXau" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libX11.so.6")
  end,
}
