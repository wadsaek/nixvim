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
        options.desc = "toggle breakpoint";
      }
      {
        mode = "n";
        key = "<leader>gtb";
        action.__raw = "function() ${dap}.run_to_cursor() end";
        options.desc = "run to cursor";
      }
      {
        mode = "n";
        key = "<leader>?";
        action.__raw = "function() ${ui}.eval(false, {enter = true })() end";
        options.desc = "evaluate expression under the cursor";
      }
      {
        mode = "n";
        key = "<leader>duo";
        action.__raw = "function() ${ui}.open() end";
        options.desc = "open dap ui";
      }
      {
        mode = "n";
        key = "<leader>duc";
        action.__raw = "function() ${ui}.close() end";
        options.desc = "close dap ui";
      }
      {
        mode = "n";
        key = "<leader>dc";
        action.__raw = "function() ${dap}.continue() end";
        options.desc = "continue debugger execution";
      }
      {
        mode = "n";
        key = "<leader>dsi";
        action.__raw = "function() ${dap}.step_into() end";
        options.desc = "step into";
      }
      {
        mode = "n";
        key = "<leader>dso";
        action.__raw = "function() ${dap}.step_over() end";
        options.desc = "step over";
      }
      {
        mode = "n";
        key = "<leader>dst";
        action.__raw = "function() ${dap}.step_out() end";
        options.desc = "step out";
      }
      {
        mode = "n";
        key = "<leader>dsb";
        action.__raw = "function() ${dap}.step_back() end";
        options.desc = "step back";
      }
      {
        mode = "n";
        key = "<leader>dr";
        action.__raw = "function() ${dap}.restart() end";
        options.desc = "restart debugger";
      }

    ];
}
