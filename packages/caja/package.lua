return {
  name    = "caja",
  version = "1.28.0",
  summary = "MATE file manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/caja/caja-1.28.0.tar.gz",
  sha256  = "336c4695f8c554e964b0d0d949b9371db6097f14c87a507b1a6ff31bd7f03325",
  deps    = { "glib", "gtk3", "gdk-pixbuf", "pango", "mate-desktop", "libnotify", "libxml2", "libexif", "libICE", "libSM", "libdconf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/caja -a -f " .. p.install_root .. "/usr/lib/libcaja-extension.so.1")
  end,
}
