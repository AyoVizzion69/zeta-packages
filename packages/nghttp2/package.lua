return {
  name    = "nghttp2",
  version = "1.70.0",
  summary = "HTTP/2 framing layer C library",
  url     = "https://github.com/gretagen/zeta-packages/packages/nghttp2/nghttp2-1.70.0.tar.gz",
  sha256  = "75dc992eda35388521ddf4d3caef246e570f598e7d5ca50917bd52aa745a2275",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnghttp2.so.14")
  end,
}
