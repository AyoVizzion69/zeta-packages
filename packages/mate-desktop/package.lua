return {
  name    = "mate-desktop",
  version = "1.28.2",
  summary = "MATE desktop library and GSettings schemas",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-desktop/mate-desktop-1.28.2.tar.gz",
  sha256  = "20ef6437a9929f133a5a3ea896e2983da325fa105937c56cf9a6c7f8238c505c",
  deps    = { "glib", "gtk3", "gdk-pixbuf", "startup-notification", "iso-codes", "dconf", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmate-desktop-2.so")
  end,
}
