{
  keymaps =
    let
      dap = "require'dap'";
      ui = "require'dapui'";
    in
    [
      {
        mode = "n";
        key = "<leader>tb";
        action.__raw = "function() ${dap}.toggle_breakpoint() end";
      }
      {
        mode = "n";
        key = "<leader>gtb";
        action.__raw = "function() ${dap}.run_to_cursor() end";
      }
      {
        mode = "n";
        key = "<leader>?";
        action.__raw = "function() ${ui}.eval(nil, {enter = true })() end";
      }
      {
        mode = "n";
        key = "<leader>duo";
        action.__raw = "function() ${ui}.open() end";
      }
      {
        mode = "n";
        key = "<leader>duc";
        action.__raw = "function() ${ui}.close() end";
      }
      {
        mode = "n";
        key = "<leader>dc";
        action.__raw = "function() ${dap}.continue() end";
      }
      {
        mode = "n";
        key = "<leader>dsi";
        action.__raw = "function() ${dap}.step_into() end";
      }
      {
        mode = "n";
        key = "<leader>dso";
        action.__raw = "function() ${dap}.step_over() end";
      }
      {
        mode = "n";
        key = "<leader>dst";
        action.__raw = "function() ${dap}.step_out() end";
      }
      {
        mode = "n";
        key = "<leader>dsb";
        action.__raw = "function() ${dap}.step_back() end";
      }
      {
        mode = "n";
        key = "<leader>dr";
        action.__raw = "function() ${dap}.restart() end";
      }

    ];
}
