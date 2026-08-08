return {
  name    = "lxqt-panel",
  version = "2.1.0",
  summary = "LXQt component (lxqt-panel)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lxqt-panel/lxqt-panel-2.1.0.tar.gz",
  sha256  = "50fd9b6ae76a54136c50d3d85b817c39f53cb72421bea8d64172c4375607a878",
  deps    = { "lxqt-build-tools", "qtbase", "liblxqt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-panel")
  end,
}
