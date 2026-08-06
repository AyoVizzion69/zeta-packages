return {
  name    = "libfyaml",
  version = "0.9.6",
  summary = "YAML 1.2 parser and emitter library",
  url     = "https://github.com/gretagen/zeta-packages/packages/libfyaml/libfyaml-0.9.6.tar.gz",
  sha256  = "773dba06e20a2ae060716a232055a3feab5e083be6e710227bebb20cb28baff5",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfyaml.so.0")
  end,
}
