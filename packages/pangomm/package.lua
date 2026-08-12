return {
  name    = "pangomm",
  version = "2.54.0",
  summary = "C++ bindings for Pango",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pangomm/pangomm-2.54.0.tar.gz",
  sha256  = "d4e96490b52a495b67191f8e4961675ae47b792a4a19483e2b50e0c47510bfd2",
  deps    = { "pango", "glibmm", "cairomm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/pangomm-1.4.pc")
  end,
}
