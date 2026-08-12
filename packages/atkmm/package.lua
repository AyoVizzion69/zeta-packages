return {
  name    = "atkmm",
  version = "2.36.4",
  summary = "C++ bindings for ATK accessibility toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/atkmm/atkmm-2.36.4.tar.gz",
  sha256  = "09dce0b2f0bf9f3cc5809bd885b6424151d793ebf4565240c242598ae5edf3ae",
  deps    = { "gtk3", "glibmm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/atkmm-1.6.pc")
  end,
}
