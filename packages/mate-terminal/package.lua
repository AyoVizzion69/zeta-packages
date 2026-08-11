return {
  name    = "mate-terminal",
  version = "1.28.1",
  summary = "MATE terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-terminal/mate-terminal-1.28.1.tar.gz",
  sha256  = "c20df5f177b31861d4255ba3046ba6ba8b8d3a13bd1d1b8f3c4f1fd1b3eaa498",
  deps    = { "glib", "gtk3", "vte", "dconf", "libSM", "libICE", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-terminal")
  end,
}
