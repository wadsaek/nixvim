{

  plugins.undotree = {
    enable = true;
  };
  keymaps = [
    {
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }
  ];
}
