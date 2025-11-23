{ lib }:
[
  {
    key = "K";
    lspBufAction = "hover";
  }
  # {
  #   key = "gD";
  #   lspBufAction = "references";
  # }
  # {
  #   key = "gd";
  #   lspBufAction = "definition";
  # }
  # {
  #   key = "gi";
  #   lspBufAction = "implementation";
  # }
  {
    key = "gt";
    lspBufAction = "type_definition";
  }
  {
    key = "<leader>co";
    lspBufAction = "code_action";
  }
  {
    key = "<leader>fm";
    lspBufAction = "format";
  }
  {
    key = "<leader>j";
    action = lib.nixvim.mkRaw "vim.diagnostic.goto_next";
  }
  {
    key = "<leader>k";
    action = lib.nixvim.mkRaw "vim.diagnostic.goto_prev";
  }
]
