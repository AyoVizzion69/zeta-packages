return {
  name    = "harfbuzz",
  version = "11.1.0",
  summary = "Text shaping library",
  url     = "https://github.com/gretagen/zeta-packages/packages/harfbuzz/harfbuzz-11.1.0.tar.gz",
  sha256  = "1e6b78268ffbcb07e29a7cb40eca06dc77fb56b602691460a9448d1e6b8c408a",
  deps    = { "freetype" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libharfbuzz.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libharfbuzz.so.0 | grep -q 'libharfbuzz.so.0'")
  end,
}
