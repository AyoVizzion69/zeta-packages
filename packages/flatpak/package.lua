return {
  name    = "flatpak",
  version = "1.18.0",
  summary = "Linux application sandboxing and distribution framework",
  url     = "https://github.com/gretagen/zeta-packages/packages/flatpak/flatpak-1.18.0.tar.gz",
  sha256  = "725472908332cf727dc679e35924179a3d8ee4f3250fcfdb433853fda39c20fe",
  deps    = { "libostree", "libdconf", "libappstream", "libcurl", "libxml2", "libarchive", "libseccomp", "libfuse3", "json-glib", "gpgme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak")
  end,
}
