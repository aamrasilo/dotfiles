{
  lib,
  stdenv,
  fetchurl,
  ...
}: let
  buildFirefoxXpiAddon = lib.makeOverridable ({
    pname,
    version,
    addonId,
    url,
    sha256,
    meta,
    ...
  }:
    stdenv.mkDerivation {
      inherit meta;

      name = "${pname}-${version}";
      src = fetchurl {inherit url sha256;};

      preferLocalBuild = true;
      allowSubstitutes = true;

      passthru = {inherit addonId;};

      buildCommand = ''
        dst="$out/share/mozilla/extensions/{ec8030f7-c20a-464f-9b0e-13a3a9e97384}"
        mkdir -p "$dst"
        install -v -m644 "$src" "$dst/${addonId}.xpi"
      '';
    });
in {
  "sponsorblock" = buildFirefoxXpiAddon {
    pname = "sponsorblock";
    version = "5.10.3";
    addonId = "sponsorBlocker@ajay.app";
    url = "https://addons.mozilla.org/firefox/downloads/file/4404647/sponsorblock-5.10.3.xpi";
    sha256 = "8d670559ae17adc808ed061188822e5112728ba70eda0a3133dcc4abc3857bdc";
    meta = with lib; {
      homepage = "https://sponsor.ajay.app";
      description = "Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos. Other browsers: https://sponsor.ajay.app";
      license = licenses.lgpl3;
      mozPermissions = [
        "storage"
        "scripting"
        "https://sponsor.ajay.app/*"
        "https://*.youtube.com/*"
        "https://www.youtube-nocookie.com/embed/*"
      ];
      platforms = platforms.all;
    };
  };
  "tampermonkey" = buildFirefoxXpiAddon {
    pname = "tampermonkey";
    version = "5.3.2";
    addonId = "firefox@tampermonkey.net";
    url = "https://addons.mozilla.org/firefox/downloads/file/4379021/tampermonkey-5.3.2.xpi";
    sha256 = "503a233543cf76dff81c7a18b73340f2256987feaef512deb7e0eb68a206b4b3";
    meta = with lib; {
      homepage = "https://tampermonkey.net";
      description = "Tampermonkey is the world's most popular userscript manager.";
      mozPermissions = [
        "alarms"
        "notifications"
        "tabs"
        "idle"
        "webNavigation"
        "webRequest"
        "webRequestBlocking"
        "unlimitedStorage"
        "storage"
        "contextMenus"
        "clipboardWrite"
        "cookies"
        "downloads"
        "<all_urls>"
      ];
      platforms = platforms.all;
    };
  };
  "touch-vpn" = buildFirefoxXpiAddon {
    pname = "touch-vpn";
    version = "5.0.18";
    addonId = "touch-vpn@anchorfree.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/4172379/touch_vpn-5.0.18.xpi";
    sha256 = "a3e7eafd7545393a29f516cf7ff8baa85ee2d4081a8690111810495ebaeed46f";
    meta = with lib; {
      homepage = "https://www.northghost.com";
      description = "Unblock any blocked website and stay secure with Touch VPN. One-click connect to unrestricted browsing through our fast VPN connection. Unlimited bandwidth and completely FREE!";
      mozPermissions = [
        "<all_urls>"
        "tabs"
        "storage"
        "proxy"
        "webRequest"
        "webRequestBlocking"
        "management"
        "notifications"
        "unlimitedStorage"
        "privacy"
        "*://*/*"
      ];
      platforms = platforms.all;
    };
  };
  "ublock-origin" = buildFirefoxXpiAddon {
    pname = "ublock-origin";
    version = "1.61.2";
    addonId = "uBlock0@raymondhill.net";
    url = "https://addons.mozilla.org/firefox/downloads/file/4391011/ublock_origin-1.61.2.xpi";
    sha256 = "ee3a724a46ff32c17d1723077fecc6ede7fdab742154020b51fb6253ddcbba14";
    meta = with lib; {
      homepage = "https://github.com/gorhill/uBlock#ublock-origin";
      description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
      license = licenses.gpl3;
      mozPermissions = [
        "alarms"
        "dns"
        "menus"
        "privacy"
        "storage"
        "tabs"
        "unlimitedStorage"
        "webNavigation"
        "webRequest"
        "webRequestBlocking"
        "<all_urls>"
        "http://*/*"
        "https://*/*"
        "file://*/*"
        "https://easylist.to/*"
        "https://*.fanboy.co.nz/*"
        "https://filterlists.com/*"
        "https://forums.lanik.us/*"
        "https://github.com/*"
        "https://*.github.io/*"
        "https://github.com/uBlockOrigin/*"
        "https://ublockorigin.github.io/*"
        "https://*.reddit.com/r/uBlockOrigin/*"
      ];
      platforms = platforms.all;
    };
  };
}
