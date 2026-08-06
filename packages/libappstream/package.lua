return {
  name    = "libappstream",
  version = "1.1.2",
  summary = "AppStream metadata library and tools",
  url     = "https://github.com/gretagen/zeta-packages/packages/libappstream/libappstream-1.1.2.tar.gz",
  sha256  = "18d49dd97e36780b8dfd81087e82a684c27db4ede0b0074284cc4dd75766db6a",
  deps    = { "libyaml", "libxmlb", "libxml2", "libfyaml" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libappstream.so.5")
  end,
}
