return {
  name    = "cbonsai",
  version = "master",
  summary = "C Bonsai terminal screensaver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cbonsai/cbonsai-master.tar.gz",
  sha256  = "c178decca03711e0d5e1f58a25c42a99b7d42e8d1b3798fb6423750b6f378149",
  deps    = { "ncurses", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/cbonsai")
  end,
}
