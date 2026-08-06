return {
  name = "xkbcommon",
  version = "1.13.2",
  summary = "Keyboard keymap compiler and support library",
  url = "https://github.com/gretagen/zeta-packages/packages/xkbcommon/xkbcommon-1.13.2.tar.gz",
  sha256 = "48d65107a66b4b6e220900fe9c518e6256a7716697ba7deb7a7ea9d77639610a",
  deps = { "wayland" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libxkbcommon.so.0")
  end,
}
