return {
  name    = "firefox",
  version = "153.0.3",
  summary = "Mozilla Firefox web browser (standalone build)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/firefox/firefox-153.0.3.tar.xz",
  sha256  = "aa1d53c2655f8b914beb00d03c48af96d590d1eba52200114b1ef14b11f398cb",
  deps    = { "gtk3", "alsa-lib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/firefox")
  end,
}
