return {
  name    = "libreoffice-help",
  version = "26.2.4.2",
  summary = "LibreOffice offline help",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libreoffice-help/libreoffice-help-26.2.4.2.tar.gz",
  sha256  = "7b5f10322f2acbc4181731e8bf84d1aa8566e3dab7465d5d5201f0686a843c66",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/libreoffice/help")
  end,
}
