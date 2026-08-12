return {
  name    = "glibmm",
  version = "2.80.1",
  summary = "C++ bindings for GLib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glibmm/glibmm-2.80.1.tar.gz",
  sha256  = "bd5231cfc1c422a7f0d1f65f3eae87d9b848be282b7f1202b461572e3ed60114",
  deps    = { "glib", "libsigc++", "mm-common" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/glibmm-2.4.pc -a -f " .. p.install_root .. "/usr/lib/pkgconfig/giomm-2.4.pc")
  end,
}
