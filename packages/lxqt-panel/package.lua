return {
  name    = "lxqt-panel",
  version = "2.1.0",
  summary = "LXQt component (lxqt-panel)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lxqt-panel/lxqt-panel-2.1.0.tar.gz",
  sha256  = "46aa9d7782f4e1745e8e008c6656928d39e61576754c9ed897d64005cd65b854",
  deps    = { "lxqt-build-tools", "qtbase", "liblxqt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-panel")
  end,
}
