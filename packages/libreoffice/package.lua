return {
  name    = "libreoffice",
  version = "26.2.4.2",
  summary = "LibreOffice office suite (core, shared data, help)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libreoffice/libreoffice-26.2.4.2.tar.gz",
  sha256  = "a6e9542b975ee196c9c688422f5054ed2b6e1ee4cd11eded550aefff679c6029",
  deps    = { "libreoffice-core", "libreoffice-share", "libreoffice-help" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
