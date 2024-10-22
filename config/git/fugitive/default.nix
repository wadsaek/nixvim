{
  plugins.fugitive.enable = true;
  keymaps = [
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
