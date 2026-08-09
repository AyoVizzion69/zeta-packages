return {
  name    = "libreoffice-core",
  version = "26.2.4.2",
  summary = "LibreOffice runtime (soffice, VCL, bundled libs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libreoffice-core/libreoffice-core-26.2.4.2.tar.gz",
  sha256  = "0252ea80a2fd6cc4b08cfa6e749ac555b5d4e3fdb54b4071f75fb5aebd1cbd02",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libreoffice/program/soffice.bin")
  end,
}
