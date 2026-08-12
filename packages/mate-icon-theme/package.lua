return {
  name    = "mate-icon-theme",
  version = "1.28.0",
  summary = "MATE default icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-icon-theme/mate-icon-theme-1.28.0.tar.gz",
  sha256  = "bbca1598cd0a4750bd9f12fee4a5a101ba8457ff721e453af2e518c5e387aca2",
  deps    = { "hicolor-icon-theme", "adwaita-icon-theme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/mate/index.theme -a -d " .. p.install_root .. "/usr/share/icons/mate/scalable")
  end,
}
