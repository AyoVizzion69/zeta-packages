return {
  name    = "libepoxy",
  version = "1.5.10",
  summary = "OpenGL function pointer management library",
  url     = "https://github.com/gretagen/zeta-packages/packages/libepoxy/libepoxy-1.5.10.tar.gz",
  sha256  = "e377c3bfca0eaa15de47f41985e4586aa919a25da8dc67825741142e912e1424",
  deps    = { "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libepoxy.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libepoxy.so.0 | grep -q 'libepoxy.so.0'")
  end,
}
