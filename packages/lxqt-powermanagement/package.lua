return {
  name    = "lxqt-powermanagement",
  version = "2.1.0",
  summary = "LXQt component (lxqt-powermanagement)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lxqt-powermanagement/lxqt-powermanagement-2.1.0.tar.gz",
  sha256  = "739dbe11d93e87c4eb4fd34820dcbe21ccaa820f4aa3a77976f02623360e3395",
  deps    = { "lxqt-build-tools", "qtbase", "liblxqt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-powermanagement")
  end,
}
