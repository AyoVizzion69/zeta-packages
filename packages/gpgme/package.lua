return {
  name    = "gpgme",
  version = "1.24.3",
  summary = "Library providing access to GnuPG crypto functions",
  url     = "https://github.com/gretagen/zeta-packages/packages/gpgme/gpgme-1.24.3.tar.gz",
  sha256  = "6c4a93418e900d830db1f593272d8e341c1d46fa2d74558da47d3fc0d243750c",
  deps    = { "libgpg-error", "libassuan" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgpgme.so.11")
  end,
}
