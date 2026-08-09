return {
  name    = "discord",
  version = "1.0.152",
  summary = "Discord (stable Electron client)",
  url     = "https://media.githubusercontent.com/media/gretagen/zeta-artifacts/refs/heads/main/packages/discord/discord-1.0.152.tar.gz",
  sha256  = "41755037cfc2b49fb80baaa74e21b06791590a3d053981c4743140c779b914ff",
  deps    = { "alsa-lib", "at-spi2-core", "cairo", "dbus", "expat", "glib", "gtk3", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXrandr", "libXrender", "libXss", "libXtst", "libdrm", "libxcb", "mesa", "nss", "pango", "pulseaudio", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/discord")
  end,
}
