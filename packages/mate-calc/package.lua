return {
  name    = "mate-calc",
  version = "1.28.0",
  summary = "MATE calculator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-calc/mate-calc-1.28.0.tar.gz",
  sha256  = "e49148c641815aa7a6227a91ea6938d80ccb20a3360b634531fc35400d82ca27",
  deps    = { "gtk3", "mpfr", "mpc", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mate-calc -a -x " .. p.install_root .. "/usr/bin/mate-calc-cmd")
  end,
}
