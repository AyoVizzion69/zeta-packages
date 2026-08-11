return {
  name    = "libmatekbd",
  version = "1.28.0",
  summary = "MATE keyboard configuration library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libmatekbd/libmatekbd-1.28.0.tar.gz",
  sha256  = "0b508ac0b1ff691747cab14d93d7f66e36394f2868c878ad89af1f9c073a9d85",
  deps    = { "glib", "gtk3", "libxklavier" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmatekbd.so")
  end,
}
