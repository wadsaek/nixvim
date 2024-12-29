let
  cmap = "cmp.mapping";
in
{
  "<C-Space>" = # lua
    "${cmap}.complete()";
  "<C-y>" = # lua
    "${cmap}.confirm({select = true})";
  "<C-j>" = # lua
    "${cmap}.select_next_item(cmp_select)";
  "<C-k>" = # lua
    "${cmap}.select_prev_item(cmp_select)";
}
