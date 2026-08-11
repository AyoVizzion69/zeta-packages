return {
  name    = "wmaker",
  version = "0.96.0",
  summary = "Window Maker: GNUstep-compliant NeXTstep window manager clone",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/wmaker/wmaker-0.96.0.tar.gz",
  sha256  = "35c9309fbba2c8c79c110092b9daefdc433a02996fe62b2b0d5d938332430b11",
  deps    = { "libX11", "libXext", "libXinerama", "libXres", "libXmu", "libXpm", "libXft", "libpng", "libjpeg-turbo", "fontconfig", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/wmaker")
  end,
}
