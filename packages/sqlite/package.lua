return {
  name    = "sqlite",
  version = "3.53.4",
  summary = "Self-contained, embeddable SQL database engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/sqlite/sqlite-3.53.4.tar.gz",
  sha256  = "f1d9f075cf02a0b2b8295b91e649668e558ec8768ce4663f1261ac1e01dd43ef",
  deps    = { "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsqlite3.so.0 -a -e " .. p.install_root .. "/usr/bin/sqlite3")
  end,
}
