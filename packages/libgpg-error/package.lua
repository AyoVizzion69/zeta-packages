return {
  name    = "libgpg-error",
  version = "1.51",
  summary = "Library defining common GnuPG error values",
  url     = "https://github.com/gretagen/zeta-packages/packages/libgpg-error/libgpg-error-1.51.tar.gz",
  sha256  = "6e82a50e34d561e5f7246d673460bbd6d9ca1ea2262e8789ab7bbaeabb4992ec",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgpg-error.so.0")
  end,
}
