return {
  name = "libz",
  version = "1.3.1",
  summary = "Zlib-compatible shared library (Zeta sample; exercises symlinks)",
  url = "https://github.com/gretagen/zeta-packages/packages/libz/libz-1.3.1.tar.gz",
  sha256 = "7fe8de84bd8209d8837969400ebd014324278d8331caefc3b5ef3adf10ad600c",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    local root = "'" .. p.install_root .. "'"
    p:run("test -f " .. root .. "/usr/lib/libz.so.1.3.1")
    p:run("test -L " .. root .. "/usr/lib/libz.so")
    p:run("test -L " .. root .. "/usr/lib/libz.so.1")
  end,
}
