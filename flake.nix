{
  description = "Nixified Helix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    nix-systems.url = "github:nix-systems/default";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      eachSystem = nixpkgs.lib.genAttrs (import inputs.nix-systems);
      mkPkgs = system: nixpkgs.legacyPackages.${system};
    in {
      overlays.default =
        (final: prev: { helix = self.packages.${prev.system}.default; });
      packages = eachSystem (system:
        let
          pkgs = mkPkgs system;
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
              description = "My fully configured helix config";
              license = pkgs.lib.licenses.mit;
              maintainers = with pkgs.lib.maintainers; [ NewDawn0 ];
              platforms = pkgs.lib.platforms.all;
            };
          };
        });
    };
}
