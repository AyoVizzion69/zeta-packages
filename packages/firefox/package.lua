return {
  name    = "firefox",
  version = "153.0.3",
  summary = "Mozilla Firefox web browser (standalone build)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/firefox/firefox-153.0.3.tar.xz",
  sha256  = "0dfec658a760e618cbb23f95b71a57a698ffa6122560ffe0e08d9140341a625a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/firefox")
  end,
}
