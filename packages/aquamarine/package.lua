return {
  name    = "aquamarine",
  version = "0.14.0",
  summary = "Lightweight Wayland compositor library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/aquamarine/aquamarine-0.14.0.tar.gz",
  sha256  = "ec2b32c990ced77eceb0b27f3a1ce7ef8e4cc73d3ce872e5f53ae551ec344bf4",
  deps    = {"hyprutils", "hyprwayland-scanner", "wayland", "wayland-protocols", "libinput", "seatd", "libdisplay-info", "hwdata", "libdrm", "mesa", "libudev", "pixman", },
  archive = { strip = 1 },
}
