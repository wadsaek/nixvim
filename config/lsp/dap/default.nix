{
  config,
  inputs,
  system,
  lib,
  ...
}:
{
  imports = [
    ./dap-ui.nix
    ./dap-virtual-text.nix
    ./keymap.nix
  ];

  plugins.dap = {
    enable = true;
    adapters.executables = {
      coreclr = lib.mkIf config.dotnet.enable {
        command = "${inputs.nixpkgs-master.legacyPackages.${system}.netcoredbg}/bin/netcoredbg";
        args = [ "--interpreter=vscode" ];
      };
    };
    configurations = {
      cs =
        let
          type = "coreclr";
          env = {
            ASPNETCORE_ENVIRONMENT = "Development";
            ASPNETCORE_URLS = lib.nixvim.mkRaw ''
              function()
                  return 'http://localhost:' .. vim.fn.input('Port: ', "5000")
              end
            '';
          };
          cwd = lib.nixvim.mkRaw ''
            function()
              return vim.fn.getcwd()
            end
          '';
        in
        lib.mkIf config.dotnet.enable [
          {
            inherit type env cwd;
            name = "launch - netcoredbg";
            request = "launch";
            program = lib.nixvim.mkRaw ''
              function()
                  return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
              end
            '';
          }
          {
            inherit type cwd;
            name = "attach - netcoredbg";
            request = "attach";
            processId = lib.nixvim.mkRaw "require('dap.utils').pick_process";
          }
        ];
    };
  };
}
