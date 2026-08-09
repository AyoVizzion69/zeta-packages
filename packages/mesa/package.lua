return {
  name    = "mesa",
  version = "25.0.6",
  summary = "OpenGL/EGL implementation with software rasterizer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa/mesa-25.0.6.tar.gz",
  sha256  = "f833be615a36364f5a57775b9d6813349ee4f74bd96505623ba4dd15970f093b",
  deps    = { "libdrm", "libxcb", "libXext", "libXxf86vm", "expat", "wayland", "libz", "zstd", "spirv-tools", "lm-sensors", "libxshmfence", "libglvnd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGLX_mesa.so.0 -a -e " .. p.install_root .. "/usr/lib/libEGL_mesa.so.0 -a -e " .. p.install_root .. "/usr/lib/libgbm.so.1 -a -e " .. p.install_root .. "/usr/lib/dri/swrast_dri.so")
  end,
}
