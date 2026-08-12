return {
  name    = "mate",
  version = "1.28",
  summary = "MATE desktop group (meta-package)",
  deps    = { "caja", "marco", "mate-panel", "mate-session-manager", "mate-settings-daemon", "mate-control-center", "mate-power-manager", "mate-polkit", "mate-menus", "mate-desktop", "mate-notification-daemon", "mate-terminal", "mate-backgrounds", "mate-calc", "mate-utils", "eom", "pluma", "libmatekbd", "libmateweather", "libgtop", "libpeas", "gsettings-desktop-schemas", "gtk3" },
  install = function(p)
    -- Regenerate the merged GSettings schema cache. Package tarballs omit the
    -- build-time gschemas.compiled (machine-specific; each package's copy
    -- would conflict with the others). Compile every installed schema XML
    -- into a temp dir and stage only the resulting cache so this meta-package
    -- owns it. Installed last, so the cache covers all MATE schemas.
    local dir = p.install_root .. "/usr/share/glib-2.0/schemas"
    local tmp = p.work_dir .. "/schemas"
    p:run("mkdir -p " .. dir)
    p:run("rm -rf " .. tmp .. " && mkdir -p " .. tmp
      .. " && cp -a /usr/share/glib-2.0/schemas/*.xml " .. tmp .. "/ 2>/dev/null || true")
    p:run("glib-compile-schemas " .. tmp)
    p:run("cp " .. tmp .. "/gschemas.compiled " .. dir .. "/")
  end,
  test = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/gschemas.compiled")
  end,
}
