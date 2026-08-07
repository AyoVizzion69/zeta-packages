return {
  name    = "libxmlb",
  version = "0.3.23",
  summary = "Library to help create and query binary XML blobs",
  url     = "https://github.com/gretagen/zeta-packages/packages/libxmlb/libxmlb-0.3.23.tar.gz",
  sha256  = "d9571b5da8dd7a9140a46a291616a7362460c7bef964a3af0e0a0e7edb41fda6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxmlb.so.2")
  end,
}
