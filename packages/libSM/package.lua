return {
  name = "libSM",
  version = "1.2.6",
  summary = "X11 Session Management (SM) library",
  url = "https://github.com/gretagen/zeta-packages/packages/libSM/libSM-1.2.6.tar.gz",
  sha256 = "aa4a9128dce4bf7e5e6ce4248b6e1f6a7aaf2d3fb12e361d8892ea53658a7900",
  deps = { "libICE" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libSM.so.6")
  end,
}
