return {
  name    = "libxml2",
  version = "2.15.3",
  summary = "XML parsing library (libxml2)",
  url     = "https://github.com/gretagen/zeta-packages/packages/libxml2/libxml2-2.15.3.tar.gz",
  sha256  = "7643c7a3f1b14ac6fe230e9b740e88bdd46e9dcdde5cfd1a17b5d5349456cf48",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxml2.so.16")
  end,
}
