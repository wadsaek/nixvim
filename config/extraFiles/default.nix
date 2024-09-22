{
  extraFiles = {
    "ftplugin/nix.lua".text = /*lua*/ ''
      vim.opt.tabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.expandtab = true
    '';

    "ftplugin/rust.lua".text = /*lua*/ ''
      local bufnr = vim.api.nvim_get_current_buf()
      vim.keymap.set(
        "n", 
        "<leader>co", 
        function()
          vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
        end,
        { silent = true, buffer = bufnr }
      )
    '';
  };
}
