return {
  name    = "libyaml",
  version = "0.2.5",
  summary = "YAML 1.1 parser and emitter library",
  url     = "https://github.com/gretagen/zeta-packages/packages/libyaml/libyaml-0.2.5.tar.gz",
  sha256  = "bc7e1c4faeeaa7faaf50f8bf3db69be6ddcca857e41ea86367e8952d44966712",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libyaml-0.so.2")
  end,
}
