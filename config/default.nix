{lib, config, ...}:{
  # Import all your configuration modules here
  imports = [
    ./web-devicons
    ./nix-develop
    ./octo
    ./vim-surround
    ./sleuth
    ./twilight
    ./oil/oil.nix
    ./todo-comments
    ./treesitter/treesitter.nix
    ./treesitterContext
    ./telescope/telescope.nix
    ./harpoon/harpoon.nix
    ./undotree/undotree.nix
    ./otter/otter.nix
    ./autocompletion
    ./git
    ./bufferline
    ./profiler

    ./extraFiles
    ./keymap.nix
    ./options.nix
  ];
  options = {
    rust.enable = lib.mkEnableOption "rust tools";
    js.enable = lib.mkEnableOption "js tools";
    dotnet.enable = lib.mkEnableOption "dotnet tools";
    nix.enable = lib.mkEnableOption "nix tools";
    web.enable = lib.mkEnableOption "web tools";
    ccpp.enable = lib.mkEnableOption "ccpp tools";
    godot.enable = lib.mkEnableOption "godot tools";
    go.enable = lib.mkEnableOption "go tools";
    haskell.enable = lib.mkEnableOption "haskell tools";
    java.enable = lib.mkEnableOption "java tools";
    lua.enable = lib.mkEnableOption "lua tools";
    nginx.enable = lib.mkEnableOption "nginx tools";
    scripting.enable = lib.mkEnableOption "scripting tools";
    python.enable = lib.mkEnableOption "python tools";
  };
  config.colorschemes.base16 ={
    enable = true;
    colorscheme = "rose-pine";
  };
  config.web.enable = lib.mkDefault config.js.enable;
}
