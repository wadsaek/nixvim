{
  # Import all your configuration modules here
  imports = [ 
    ./lsp/lsp.nix
    ./options.nix
    ./treesitter/treesitter.nix
    ./telescope/telescope.nix
    ./harpoon/harpoon.nix
  ];

  colorschemes.base16 ={
    enable = true;
    colorscheme = "rose-pine";
  };
}
