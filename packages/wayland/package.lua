return {
  name = "wayland",
  version = "1.26.0",
  summary = "Wayland compositor infrastructure: client/server libraries and scanner",
  url = "https://github.com/gretagen/zeta-packages/packages/wayland/wayland-1.26.0.tar.gz",
  sha256 = "da7f38b3482ace5420ce283001c6172db2a8e3020a7792c8c27b3c740da38e16",
  deps = { "libffi", "libxml2" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/wayland-scanner --version")
  end,
}
