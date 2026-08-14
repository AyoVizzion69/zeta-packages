return {
  name    = "flatpak",
  version = "1.18.0",
  summary = "Linux application sandboxing and distribution framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/flatpak/flatpak-1.18.0.tar.gz",
  sha256  = "3248a90f3b217b0053805175d6c879e116c536bee41d202cb641ec4d83cc58e7",
  deps    = { "libostree", "libdconf", "libappstream", "libcurl", "libxml2", "libarchive", "libseccomp", "libfuse3", "libjson-glib", "gpgme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak")
  end,
}
