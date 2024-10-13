{
  keymaps = [
    {
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }
    {
      key = "-";
      action = "<cmd>Oil<CR>";
      options.desc = "Oil";
    }
    {
      key = "<leader>gs";
      action = "<cmd>Git<CR>";
      options.desc = "Open the Fugitive menu";
    }
    {
      key = "<leader>ga";
      action = "<cmd>Git add %<CR>";
      options.desc = "Add the current file to git";
    }
  ];
}
