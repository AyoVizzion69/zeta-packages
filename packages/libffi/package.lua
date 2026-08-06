return {
  name = "libffi",
  version = "3.4.6",
  summary = "Portable Foreign Function Interface library (Zeta build-from-source sample)",
  url = "https://github.com/gretagen/zeta-packages/packages/libffi/libffi-3.4.6.tar.gz",
  sha256 = "1058fdc46a512ebe09828f095eb895804b2abdd8bcff09843d893692d86e5f2d",
  deps = {},
  build = function(p)
    p:run("meson setup build --prefix " .. p.prefix)
    p:env_set("DESTDIR", p.install_root)
    p:ninja("-C", "build")
    p:ninja("-C", "build", "install")
  end,
  test = function(p)
    p:run("find '" .. p.install_root .. "' -name 'libffi.so*' -o -name 'ffi.h' | grep .")
  end,
}
