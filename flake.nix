{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }@inputs:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          mkNixvimModule =
            { path }:
            {
              inherit pkgs;
              module = import path; # import the module directly
              # You can use `extraSpecialArgs` to pass additional arguments to your module files
              extraSpecialArgs = {
                inherit inputs;
              };
            };
          NixvimModule = path: mkNixvimModule { inherit path; };
          mkNvim = path: nixvim'.makeNixvimWithModule (NixvimModule path);
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule (NixvimModule ./versions/full.nix);
          };

          packages = rec {
            # Lets you run `nix run .` to start nixvim
            full = (mkNvim ./versions/full.nix);
            rust = (mkNvim ./versions/rust.nix);
            dotnet = (mkNvim ./versions/dotnet.nix);
            js = (mkNvim ./versions/js.nix);
            minimal = (mkNvim ./versions/minimal.nix);
            default = minimal;
            ccpp = (mkNvim ./versions/ccpp.nix);
            go = (mkNvim ./versions/go.nix);
            godot = (mkNvim ./versions/godot.nix);
            java = (mkNvim ./versions/java.nix);
            haskell = (mkNvim ./versions/haskell.nix);
            lua = (mkNvim ./versions/lua.nix);
            web = (mkNvim ./versions/web.nix);
            nix = (mkNvim ./versions/nix.nix);
            python = (mkNvim ./versions/python.nix);
            nginx = (mkNvim ./versions/nginx.nix);
            scripting = (mkNvim ./versions/scripting.nix);
            jsPure = (mkNvim ./versions/jsPure.nix);
          };
        };
    };
}
