return {
  name    = "pcre2",
  version = "10.45",
  summary = "Perl-compatible regular expression library v2",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pcre2/pcre2-10.45.tar.gz",
  sha256  = "d6709d989d346a96779d262c923bf58f66dadb02b3cea4003375628d2ad43f55",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpcre2-8.so.0")
  end,
}
