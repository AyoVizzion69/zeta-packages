return {
  name = "fvwm3",
  version = "1.1.5",
  summary = "Virtual window manager for the X Window System",
  url = "https://github.com/gretagen/zeta-packages/packages/fvwm3/fvwm3-1.1.5.tar.gz",
  sha256 = "11b19a57c278fbe9784b844df7f8d9ef9335c02fe94eca78e6ad366b58ce26b5",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/fvwm3")
    p:run("test -x '" .. p.install_root .. "'/usr/bin/FvwmCommand")
    p:run(p.install_root .. "/usr/bin/fvwm3 --version")
  end,
}
