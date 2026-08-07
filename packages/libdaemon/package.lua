return {
  name    = "libdaemon",
  version = "0.14",
  summary = "Lightweight C library for writing daemons",
  url     = "https://github.com/gretagen/zeta-packages/packages/libdaemon/libdaemon-0.14.tar.gz",
  sha256  = "6f51d8ae13ef87457911612c112a711e359bc6804748be30d4ae405ec4984069",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libdaemon.so.0")
  end,
}
