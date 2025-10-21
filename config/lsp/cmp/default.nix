{ lib, ... }:
{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
      #{name = "luasnip";}
      { name = "nvim_lsp_signature_help"; }
    ];
    settings.mapping = import ./keymap.nix;
    settings.window =
      let
        bordered = lib.nixvim.mkRaw "require'cmp'.config.window.bordered({})";
      in
      {
        completion = bordered;
        documentation = bordered;
      };
  };
}
