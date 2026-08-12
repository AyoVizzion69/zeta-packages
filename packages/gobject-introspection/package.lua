return {
  name    = "gobject-introspection",
  version = "1.84.0",
  summary = "GObject introspection scanner and typelib library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gobject-introspection/gobject-introspection-1.84.0.tar.gz",
  sha256  = "d442063bcf75381f1bbf7870d56cd035befeebefcd0ba37e5bb2c9303fad7603",
  deps    = { "glib", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgirepository-1.0.so -a -x " .. p.install_root .. "/usr/bin/g-ir-scanner")
  end,
}
