{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
      #{name = "luasnip";}
    ];
    settings.mapping = import ./keymap.nix;
  };
}
