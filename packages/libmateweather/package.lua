return {
  name    = "libmateweather",
  version = "1.28.0",
  summary = "MATE library to access weather information",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libmateweather/libmateweather-1.28.0.tar.gz",
  sha256  = "b790704ab46027d89ecb8d7964520158b617368f41464abdd0ee4d74ee4febb4",
  deps    = { "glib", "gtk3", "libxml2", "libsoup2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmateweather.so")
  end,
}
