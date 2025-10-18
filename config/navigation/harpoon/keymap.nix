let
  navFile = x: k: {
    mode = "n";
    key = k;
    action.__raw = # lua
      "function() require'harpoon':list():select(${toString x}) end";
  };
in
[
  {
    mode = "n";
    key = "<leader>a";
    action.__raw = "function() require'harpoon':list():add() end";
  }
  {
    mode = "n";
    key = "<C-h>";
    action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
  }
  (navFile 1 "<C-j>")
  (navFile 2 "<C-k>")
  (navFile 3 "<C-l>")
  (navFile 4 "<C-:>")
]
