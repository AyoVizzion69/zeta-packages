return {
  name    = "xterm",
  version = "410",
  summary = "X terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xterm/xterm-410.tar.gz",
  sha256  = "c0ea2052e6bf7da6d8cfa21da9f28eed58a2ac536fea641d6ba656c5e93ed5eb",
  deps    = { "fontconfig", "freetype", "libICE", "libX11", "libXext", "libXft", "libXaw", "libXmu", "libXt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xterm")
  end,
}
