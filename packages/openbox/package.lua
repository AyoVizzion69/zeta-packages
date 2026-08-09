return {
  name    = "openbox",
  version = "3.6.1",
  summary = "Openbox X11 window manager (LXQt default WM)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openbox/openbox-3.6.1.tar.gz",
  sha256  = "cb5aedb886fa02a483793bed780eb6ed04f5010baf723d2a918b2130edca53e3",
  deps    = { "libXcursor", "libXinerama", "libXrandr", "libXext", "libICE", "libSM", "pango", "libXft", "librsvg", "cairo", "libxml2", "imlib2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/openbox")
  end,
}
