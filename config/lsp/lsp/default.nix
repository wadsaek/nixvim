{
  pkgs,
  lib,
  config,
  system,
  ...
}:
{
  lsp = {
    inlayHints.enable = true;
    luaConfig.post = # lua
      ''
        vim.diagnostic.config({virtual_lines = true})
      '';
    servers = lib.mkMerge [
      {
        jsonls.enable = true;
        yamlls.enable = true;
        sqls.enable = true;
        harper_ls = {
          config.harper-ls = {
            linters.sentence_capitalization = false;
            isolateEnglish = true;
          };
          enable = true;
        };
      }
      (lib.mkIf config.dotnet.enable {
        fsautocomplete.enable = false;
      })
      (lib.mkIf config.nix.enable {
        nixd.enable = true;
        nixd.config.settings = {
          nixpkgs.expr = "import <nixpkgs> {}";
          formatting.command = [ "nixfmt" ];
          options =
            let
              nixvimFlake = # nix
                ''
                  (builtins.getFlake "github:wadsaek/nixvim")  
                '';
              flakeExpr = # nix
                ''
                  (builtins.getFlake "github:wadsaek/nixos/")
                '';
              inherit system;
            in
            {
              nixos.expr = # nix
                ''
                  ${flakeExpr}
                  .nixosConfigurations.Esther-g3.options
                '';
              home_manager.expr = # nix
                ''
                  ${flakeExpr}
                  .homeConfigurations.wadsaek.options
                '';
              nixvim.expr = # nix
                ''
                  ${nixvimFlake}
                  .packages.${system}.full.options
                '';
            };
        };
      })
      (lib.mkIf config.ccpp.enable {
        clangd.enable = true;
      })
      (lib.mkIf config.godot.enable {
        gdscript = {
          enable = true;
          package = pkgs.gdtoolkit_4;
          config.filetypes = [
            "gd"
            "gdscript"
            "gdscript3"
          ];
        };

      })
      (lib.mkIf config.go.enable {
        gopls.enable = true;
        golangci_lint_ls.enable = true;
      })
      (lib.mkIf config.haskell.enable {
        hls = {
          enable = true;
          config.installGhc = true;
        };
      })
      (lib.mkIf config.java.enable {
        jdtls.enable = true;
      })
      (lib.mkIf config.lua.enable {
        lua_ls.enable = true;
      })
      (lib.mkIf config.nginx.enable {
        nginx_language_server.enable = true;
      })
      (lib.mkIf config.scripting.enable {
        nushell.enable = lib.mkDefault true;
        pyright.enable = lib.mkDefault true;
      })
      (lib.mkIf config.python.enable {
        pyright.enable = true;
      })
      (lib.mkIf config.js.enable {
        ts_ls.enable = true;
        eslint.enable = true;
        vue_ls.enable = true;
      })
      (lib.mkIf config.web.enable {
        cssls.enable = true;
        tailwindcss.enable = true;
        html.enable = true;
      })
    ];

    keymaps = import ./keymap.nix { inherit lib; };
  };

  plugins.rustaceanvim.enable = lib.mkIf config.rust.enable true;
}
