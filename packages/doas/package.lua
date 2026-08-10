return {
  name    = "doas",
  version = "6.8.2",
  summary = "Execute commands as another user (portable OpenBSD doas)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/doas/doas-6.8.2.tar.gz",
  sha256  = "d7393618ed73021d3ad5e86cb742d73348ebf357fd87245edad221a248b5f27c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/doas")
  end,
}
