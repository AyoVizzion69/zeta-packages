return {
  name    = "gsettings-desktop-schemas",
  version = "50.1",
  summary = "GSettings schemas for the GNOME/MATE desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gsettings-desktop-schemas/gsettings-desktop-schemas-50.1.tar.gz",
  sha256  = "27bc02ace39a84d4dd6d937bf6b38679a1f1d6c2d1efd2ad52a9902c5d40f340",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml")
  end,
}
