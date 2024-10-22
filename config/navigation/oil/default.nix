{
  plugins.oil = {
    enable = true;
    settings = {
      keymaps = import ./keymap.nix;
      columns = ["icon"];
    };
  };
  keymaps = [
    {
      key = "-";
      action = "<cmd>Oil<CR>";
      options.desc = "Oil";
    }
  ];
}
