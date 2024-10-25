{ ... }:
{
  plugins.refactoring = {
    enable = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      key = "<leader>rb";
      action = ":Refactor extract_block";
      mode = "n";
    }
    {
      key = "<leader>re";
      action = ":Refactor extract ";
      mode = "x";
    }
    {
      key = "<leader>rf";
      action = ":Refactor extract_to_file ";
      mode = "x";
    }

    {
      key = "<leader>rv";
      action = ":Refactor extract_var ";
      mode = "x";
    }

    {
      key = "<leader>ri";
      action = ":Refactor inline_var";
      mode = "x";
    }
    {
      key = "<leader>ri";
      action = ":Refactor inline_var";
      mode = "n";
    }

    {
      key = "<leader>rI";
      action = ":Refactor inline_func";
      mode = "n";
    }

    {
      key = "<leader>rbf";
      action = ":Refactor extract_block_to_file";
      mode = "n";
    }
  ];
}
