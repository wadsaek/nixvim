{
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix 
    ./lsp.nix
    ./options.nix
    ./treesitter.nix
    ./telescope.nix
  ];

  colorschemes.base16 ={
    enable = true;
    colorscheme = "rose-pine";
  };
}
