{
  plugins.oil = {
    enable = true;
    settings = {
      keymaps = import ./keymap.nix;
      columns = ["icon"];
    };
  };
}
