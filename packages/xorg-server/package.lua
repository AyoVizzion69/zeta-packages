return {
  name = "xorg-server",
  version = "21.1.24",
  summary = "X.Org X server (modesetting driver, no GLX)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xorg-server/xorg-server-21.1.24.tar.gz",
  sha256 = "f807e0e4e008ed03a33dd1da7d0bf0ac44a22b15a8617e8c8a2aef54dc7b4ec0",
  deps = { "libdrm", "libpciaccess", "pixman", "libXau", "libXdmcp", "libXfont2", "libxcvt", "libtirpc", "xkeyboard-config" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/Xorg -version")
  end,
}
