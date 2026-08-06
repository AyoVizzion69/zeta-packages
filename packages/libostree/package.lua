return {
  name    = "libostree",
  version = "2025.7",
  summary = "Content-addressed object storage and versioning (ostree)",
  url     = "https://github.com/gretagen/zeta-packages/packages/libostree/libostree-2025.7.tar.gz",
  sha256  = "c40fe3d50ba26a88df04c5b6e039d05bbbc2f5388e161d02eab88950ab520796",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ostree")
  end,
}
