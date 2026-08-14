return {
  name    = "libostree",
  version = "2025.7",
  summary = "Content-addressed object storage and versioning (ostree)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libostree/libostree-2025.7.tar.gz",
  sha256  = "496ea5615a2758de82346d1cb2dd50c8e5ff9bf70bb1135ca56cb82254653335",
  deps    = { "libfuse3", "libsoup3", "libcurl", "libarchive", "composefs", "avahi", "libxml2", "gpgme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ostree")
  end,
}
