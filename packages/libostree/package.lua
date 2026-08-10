return {
  name    = "libostree",
  version = "2025.7",
  summary = "Content-addressed object storage and versioning (ostree)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libostree/libostree-2025.7.tar.gz",
  sha256  = "ce5a749e7319bea682dc196ef1a0a86d045fb9ea7030dcc5fc2cb335d7dae26e",
  deps    = { "libfuse3", "libsoup3", "libcurl", "libarchive", "composefs", "avahi", "libxml2", "gpgme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ostree")
  end,
}
