return {
  name = "libXt",
  version = "1.3.1",
  summary = "X11 toolkit intrinsics library",
  url = "https://github.com/gretagen/zeta-packages/packages/libXt/libXt-1.3.1.tar.gz",
  sha256 = "0ee57494496da565ba200b18e46b1c5872a5024ebbcab8873ab083707e1f1a15",
  deps = { "libX11", "libSM", "libICE" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXt.so.6")
  end,
}
