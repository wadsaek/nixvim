{lib, config,...}:{
  plugins.lsp = {
    enable = true;

    inlayHints = true;
    servers = lib.mkMerge [
      {
        jsonls.enable = true;
        yamlls.enable = true;
        sqls.enable = true;
      }
      (lib.mkIf config.dotnet.enable{
        omnisharp.enable = true;
        fsautocomplete.enable = true;
      })
      (lib.mkIf config.nix.enable {
        nixd.enable = true;
      })
      (lib.mkIf config.ccpp.enable {
        clangd.enable = true;
      })
      (lib.mkIf config.godot.enable {
        gdscript.enable = true;
      })
      (lib.mkIf config.go.enable {
        gopls.enable = true;
        golangci-lint-ls.enable = true;
      })
      (lib.mkIf config.haskell.enable{
        hls.enable = true;
      })
      (lib.mkIf config.java.enable{
        jdt-language-server.enable = true;
      })
      (lib.mkIf config.lua.enable {
        lua-ls.enable = true;
      })
      (lib.mkIf config.nginx.enable {
        nginx-language-server.enable = true;
      })
      (lib.mkIf config.scripting.enable {
        nushell.enable = lib.mkDefault true;
	pyright.enable = lib.mkDefault true;
      })
      (lib.mkIf config.python.enable{
        pyright.enable = true;
      })
      (lib.mkIf config.js.enable {
        ts-ls.enable = true;
        eslint.enable = true;
        volar.enable = true;
      })
      (lib.mkIf config.web.enable {
        cssls.enable = true;
        tailwindcss.enable = true;
        html.enable = true;
      })
    ];

    keymaps = import ./keymap.nix;
  };

  plugins.rustaceanvim.enable = lib.mkIf config.rust.enable true;
}
