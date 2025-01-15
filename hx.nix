{ pkgs }:
let
  hxConfig = pkgs.stdenv.mkDerivation {
    name = "hxConfig";
    src = null;
    dontBuild = true;
    dontConfigure = true;
    dontPatch = true;
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/lib/themes
      cp ${
        (pkgs.formats.toml { }).generate "config" (import ./config.nix)
      } $out/lib/config.toml
      cp ${
        (pkgs.formats.toml { }).generate "theme" (import ./config.nix)
      } $out/lib/themes/custom.toml
    '';
  };
in { inherit hxConfig; }
