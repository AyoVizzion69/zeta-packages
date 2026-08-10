return {
  name    = "polkit",
  version = "127",
  summary = "Authorization framework for desktop privileges",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/polkit/polkit-127.tar.gz",
  sha256  = "576b97ed97e438365b51920d6e5480c13ae6a3e26ea9bc93bea4b298d0d4aa3f",
  deps    = { "expat", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpolkit-gobject-1.so.0")
  end,
}
