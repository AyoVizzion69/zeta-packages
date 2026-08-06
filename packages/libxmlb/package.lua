return {
  name    = "libxmlb",
  version = "0.3.28",
  summary = "Small binary XML parsing/compression library",
  url     = "https://github.com/gretagen/zeta-packages/packages/libxmlb/libxmlb-0.3.28.tar.gz",
  sha256  = "115ed935509e0b502eaff137a99d10002fc9b67613dbeb4a48576bf6ef3c7003",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxmlb.so.2")
  end,
}
