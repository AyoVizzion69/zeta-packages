return {
  name    = "libglvnd",
  version = "1.7.0",
  summary = "Vendor-neutral GL/GLX/EGL dispatch library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libglvnd/libglvnd-1.7.0.tar.gz",
  sha256  = "f57ac88b4179af0334035fd2d5ddfee7c61aa5afaa91c04b284947614927a416",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGLX.so.0 -a -e " .. p.install_root .. "/usr/lib/libGLdispatch.so.0 -a -e " .. p.install_root .. "/usr/lib/libGL.so.1")
  end,
}
