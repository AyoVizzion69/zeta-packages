return {
  name = "libICE",
  version = "1.1.2",
  summary = "X11 Inter-Client Exchange (ICE) library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libICE/libICE-1.1.2.tar.gz",
  sha256 = "ce8bf68f369c947e084a3e7e9563247a53f75334c62d8dbc35c37a2c55cdc139",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libICE.so.6")
  end,
}
