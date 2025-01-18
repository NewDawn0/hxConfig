{ pkgs }:
let
  cfg = import ../config/config.nix;
  keys = import ../config/keys.nix;
  theme = import ../config/theme.nix;
in {
  hxConfig = pkgs.stdenv.mkDerivation {
    name = "hxConfig";
    src = null;
    dontBuild = true;
    dontConfigure = true;
    dontPatch = true;
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/lib
      cp ${
        (pkgs.formats.toml { }).generate "config" (cfg // keys)
      } $out/lib/config.toml
    '';
  };
  hxRt = pkgs.stdenv.mkDerivation {
    name = "hxRuntime";
    src = null;
    dontBuild = true;
    dontConfigure = true;
    dontPatch = true;
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/lib/runtime/themes
      cp ${
        (pkgs.formats.toml { }).generate "theme" theme
      } $out/lib/runtime/themes/custom.toml
    '';
  };
}
