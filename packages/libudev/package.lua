return {
  name    = "libudev",
  version = "1",
  summary = "udev library (provided by the base system; stub package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libudev/libudev-1.tar.gz",
  sha256  = "9e5a3a5eb549f85e4c1e9bf7050d91381398ee9d4207db6b3680f7a15cfd6141",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
