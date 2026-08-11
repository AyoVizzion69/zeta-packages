return {
  name    = "mate-backgrounds",
  version = "1.28.0",
  summary = "MATE desktop background wallpapers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-backgrounds/mate-backgrounds-1.28.0.tar.gz",
  sha256  = "d2e8eb53bfa669102c1481459a2a49dabac69a9644b8401a405a797ba6511065",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/backgrounds/mate")
  end,
}
