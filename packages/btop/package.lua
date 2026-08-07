return {
  name    = "btop",
  version = "1.4.7",
  summary = "Resource monitor (bpytop ported to C++)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/btop/btop-1.4.7.tar.gz",
  sha256  = "af80a3dccbaac598d40e213ae7665dcebd8f1907d30d17322dff87fd7d295cf6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/btop")
  end,
}
