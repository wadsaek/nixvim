{
  config,
  pkgs,
  lib,
  ...
}:
{
  plugins.dap = {
    enable = true;
    adapters.executables = {
      coreclr = lib.mkIf config.dotnet.enable {
        command = "${pkgs.netcoredbg}/bin/netcoredbg";
        args = [ "--interpreter=vscode" ];
      };
    };
    configurations = {
      cs = lib.mkIf config.dotnet.enable [
        {
          type = "coreclr";
          name = "launch - netcoredbg";
          request = "launch";
          program.__raw = # lua
            ''
              function()
                  return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
              end
            '';
        }
      ];
    };
  };
}
