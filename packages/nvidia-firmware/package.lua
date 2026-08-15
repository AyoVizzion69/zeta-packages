return {
  name    = "nvidia-firmware",
  version = "595.71.05",
  summary = "NVIDIA official driver GSP firmware (loaded by the open kernel modules)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nvidia-firmware/nvidia-firmware-595.71.05.tar.xz",
  sha256  = "845fa96d7614fbaf9c75482423c2c05f21dc0f01a415c100ab65a220bf0fb953",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/firmware/nvidia/595.71.05/gsp_tu10x.bin")
  end,
}
