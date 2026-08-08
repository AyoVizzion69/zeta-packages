return {
  name    = "extra-cmake-modules",
  version = "6.13.0",
  summary = "Extra modules and scripts for CMake",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/extra-cmake-modules/extra-cmake-modules-6.13.0.tar.gz",
  sha256  = "8a85065ee9aaf539565a51564ddaa326fb50d78b7c9c8f6ef9bc5b239d07987a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/ECM/cmake/ECMConfig.cmake")
  end,
}
