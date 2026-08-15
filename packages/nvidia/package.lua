return {
  name    = "nvidia",
  version = "595.71.05",
  summary = "NVIDIA official driver (meta-package: open kernel modules + userspace)",
  deps    = { "nvidia-utils", "nvidia-kernel" },
  install = function(p)
    local dir = p.install_root .. "/usr/share/nvidia"
    p:run("mkdir -p " .. dir)
    p:run("echo 'NVIDIA official driver 595.71.05' > " .. dir .. "/meta")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/nvidia/meta")
  end,
}
