{
  plugins.lsp = {
    enable = true;

    #inlayHints = true; # option doesn't exist?!?!?
    servers = {
      omnisharp.enable = true;
      nixd.enable = true;
      clangd.enable = true;
      fsautocomplete.enable = true;
      gdscript.enable = true;
      gopls.enable = true;
      golangci-lint-ls.enable = true;
      hls.enable = true;
      jdt-language-server.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
      lua-ls.enable = true;
      nginx-language-server.enable = true;
      nushell.enable = true;
      sqls.enable = true;
      pyright.enable = true;
      cssls.enable = true;
      tailwindcss.enable = true;
      tsserver.enable = true;
      eslint.enable = true;
      volar.enable = true;
      html.enable = true;
    };

    keymaps = import ./keymap.nix;
  };

  plugins.rustaceanvim.enable = true;
}
