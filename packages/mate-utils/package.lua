return {
  name    = "mate-utils",
  version = "1.28.0",
  summary = "MATE system utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-utils/mate-utils-1.28.0.tar.gz",
  sha256  = "3bd9cc9ca526b819764afc1e9e2c8695cdad7c40a52158961e722ec250a7cf05",
  deps    = { "gtk3", "mate-desktop", "libgtop", "libcanberra", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mate-disk-usage-analyzer -a -x " .. p.install_root .. "/usr/bin/mate-screenshot -a -x " .. p.install_root .. "/usr/bin/mate-dictionary")
  end,
}
