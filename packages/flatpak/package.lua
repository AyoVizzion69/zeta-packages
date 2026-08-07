return {
  name    = "flatpak",
  version = "1.18.0",
  summary = "Application sandboxing and distribution framework",
  url     = "https://github.com/gretagen/zeta-packages/packages/flatpak/flatpak-1.18.0.tar.gz",
  sha256  = "a258e8ef0750a51bed5685a3f347d38c3d951d1755636e7ad0b0f93d8bc827cf",
  deps    = { "bubblewrap", "libXau", "libappstream", "libostree", "libxml2", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak")
  end,
}
