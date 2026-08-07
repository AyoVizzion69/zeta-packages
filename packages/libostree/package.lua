return {
  name    = "libostree",
  version = "2025.7",
  summary = "Content-addressed object storage and versioning (ostree)",
  url     = "https://github.com/gretagen/zeta-packages/packages/libostree/libostree-2025.7.tar.gz",
  sha256  = "20e1c57a78d852640a1a230b0a117180cde3e4e8f8b6a033fcf2c4211abdfb68",
  deps    = { "libfuse3", "libsoup3", "libcurl", "libarchive", "composefs", "avahi", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ostree")
  end,
}
