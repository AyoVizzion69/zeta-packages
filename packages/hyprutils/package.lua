return {
  name = "hyprutils",
  version = "0.14.0",
  summary = "Utility library for the Hypr ecosystem",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprutils/hyprutils-0.14.0.tar.gz",
  sha256 = "a0e38605ac8a4fca692e01f662aabc1fd7b7d99808849b979fe293e92ff09b7c",
  deps = { "pixman" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libhyprutils.so.13")
  end,
}
