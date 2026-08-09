return {
  name    = "libreoffice-share",
  version = "26.2.4.2",
  summary = "LibreOffice shared data (templates, config, gallery)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libreoffice-share/libreoffice-share-26.2.4.2.tar.gz",
  sha256  = "5e58d1678ab352d36cb89a89582f6345563e2e35ce7c44b41e867042486e72c7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/libreoffice/share")
  end,
}
