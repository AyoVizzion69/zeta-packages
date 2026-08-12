return {
  name    = "cairomm",
  version = "1.15.4",
  summary = "C++ bindings for the Cairo graphics library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cairomm/cairomm-1.15.4.tar.gz",
  sha256  = "2fa65a6f7c33e644b4e248428ae7be884a7ddc9a35ca917cfe4c09ff8821dea6",
  deps    = { "cairo", "libsigc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/cairomm-1.16.pc")
  end,
}
