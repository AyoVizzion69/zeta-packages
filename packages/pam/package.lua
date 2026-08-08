return {
  name    = "pam",
  version = "1.7.2",
  summary = "Pluggable Authentication Modules (libpam.so.0 + modules)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pam/pam-1.7.2.tar.gz",
  sha256  = "9991fa237396d8394a708b8ec975eff3f52df710655683f590f0f1a5259c5fe1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpam.so.0 -a -e " .. p.install_root .. "/usr/lib/security/pam_unix.so")
  end,
}
