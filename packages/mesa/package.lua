return {
  name    = "mesa",
  version = "25.0.6",
  summary = "OpenGL/EGL implementation with software rasterizer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa/mesa-25.0.6.tar.gz",
  sha256  = "47da91f58bfe82600960dfb74fdb4d1f4582d0959b359660ff0497b04affe53e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGL.so.1 -a -e " .. p.install_root .. "/usr/lib/libEGL.so.1 -a -e " .. p.install_root .. "/usr/lib/libgbm.so.1")
  end,
}
