{
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix 
    ./lsp/lsp.nix
    ./options.nix
    ./treesitter/treesitter.nix
    ./telescope/telescope.nix
  ];

  colorschemes.base16 ={
    enable = true;
    colorscheme = "rose-pine";
  };
}
