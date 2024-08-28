{
  plugins.lsp = {
    enable = true;

    #inlayHints = true; # option doesn't exist?!?!?
    servers = {
      csharp-ls.enable = true;
      nixd.enable = true;
    };

    keymaps = import ./keymap.nix;
  };

  plugins.rustaceanvim.enable = true;
}
