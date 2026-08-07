return {
  name    = "xkeyboard-config",
  version = "2.47",
  summary = "XKB keymap rules and symbols database",
  url     = "https://github.com/gretagen/zeta-packages/packages/xkeyboard-config/xkeyboard-config-2.47.tar.gz",
  sha256  = "075c478fa375fb1223ce63e2b808e6a6676c7d4191fd1d3b2efcf16a6c990eea",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/X11/xkb/rules/evdev && test -f " .. p.install_root .. "/usr/share/X11/xkb/symbols/us")
  end,
}
