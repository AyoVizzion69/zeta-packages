return {
  name    = "pcre2",
  version = "10.45",
  summary = "Perl-compatible regular expression library v2",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pcre2/pcre2-10.45.tar.gz",
  sha256  = "83e26686b55994d897380b6492c438d12321f3fd8ba851e9579aa565b3716a8b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpcre2-8.so.0")
  end,
}
