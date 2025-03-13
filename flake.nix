{
  description = "Nixified Helix config";

  inputs.utils.url = "github:NewDawn0/nixUtils";

  outputs = { self, utils, ... }: {
    overlays.default = final: prev: {
      helix = self.packages.${prev.system}.default;
    };
    packages = utils.lib.eachSystem { } (pkgs:
      let
        hx = import ./nix/hx.nix { inherit pkgs; };
        runtime = import ./nix/runtime.nix { inherit pkgs; };
      in {
        default = pkgs.writeShellApplication {
          name = "hx";
          runtimeInputs = [ pkgs.helix ] ++ runtime;
          text = ''
            HELIX_RUNTIME="${hx.hxRt}/lib/runtime" hx --config ${hx.hxConfig}/lib/config.toml "$@"
          '';
          meta = {
            description = "A fully configured helix config";
            homepage = "https://github.com/NewDawn0/hxConfig";
            license = pkgs.lib.licenses.mit;
            maintainers = with pkgs.lib.maintainers; [ NewDawn0 ];
            platforms = pkgs.lib.platforms.all;
          };
        };
      });
  };
}
