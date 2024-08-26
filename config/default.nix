{
  # Import all your configuration modules here
  imports = [
    ./lsp/lsp.nix
    ./options.nix
    ./treesitter/treesitter.nix
    ./telescope/telescope.nix
    ./harpoon/harpoon.nix
    ./undotree/undotree.nix
    ./otter/otter.nix
  ];

  colorschemes.base16 ={
    enable = true;
    colorscheme = "rose-pine";
  };
}
