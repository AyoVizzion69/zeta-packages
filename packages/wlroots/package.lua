return {
  name = "wlroots",
  version = "0.20.2",
  summary = "Modular Wayland compositor library",
  url = "https://github.com/gretagen/zeta-packages/packages/wlroots/wlroots-0.20.2.tar.gz",
  sha256 = "99bea028b46bfe465f0a83f90dd95bffc57281c4e352ffe67aaa3427ccd56b3a",
  deps = { "wayland", "libdrm", "xkbcommon", "pixman" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libwlroots-0.20.so")
  end,
}
