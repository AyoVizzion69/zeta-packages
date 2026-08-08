return {
  name    = "solid",
  version = "6.14.0",
  summary = "KF6 hardware detection (KF6Solid)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/solid/solid-6.14.0.tar.gz",
  sha256  = "b6608875dc077c4827b3d228fd0a112e4a594b0c478b15ddf09dcd76422245d8",
  deps    = { "extra-cmake-modules", "qtbase", "libudev" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/cmake/KF6Solid/KF6SolidConfig.cmake")
  end,
}
