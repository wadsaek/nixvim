{
  plugins.lsp = {
    enable = true;

    #inlayHints = true; # option doesn't exist?!?!?
    servers = {
      csharp-ls.enable = true;
      nixd.enable = true;
    };
  };

  plugins.rustaceanvim.enable = true;
  
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
      {name = "luasnip";}
    ];
  };
}
