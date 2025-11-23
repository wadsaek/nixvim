rec {
  "<leader>fl" = {
    action = "find_files";
  };
  "<C-p>" = {
    action = "git_files";
  };
  "<leader>tl" = {
    action = "live_grep";
  };
  "<leader>bl" = {
    action = "buffers";
  };
  "gd" = {
    action = "lsp_definitions";
  };
  "gD" = {
    action = "lsp_references";
  };
  "grr" = gD;
  "gi" = {
    action = "lsp_implementations";
  };
}
