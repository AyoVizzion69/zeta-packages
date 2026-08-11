return {
  name    = "mate-polkit",
  version = "1.28.1",
  summary = "MATE PolicyKit authentication agent",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-polkit/mate-polkit-1.28.1.tar.gz",
  sha256  = "5b8885f8c6835aa275425e02b863c8d080e04cd40c34903d1324414dbd3e41dd",
  deps    = { "glib", "gtk3", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/polkit-mate-authentication-agent-1")
  end,
}
