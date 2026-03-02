{
  pkgs,
  config,
  lib,
  inputs,
  ...
}:
lib.mkIf config.dotnet.enable {
  plugins.roslyn =
    let
      inherit (inputs.zspher-dotfiles.packages.${pkgs.stdenvNoCC.system}) csharp-tools;
    in
    {
      enable = true;
      luaConfig.pre = # lua
        ''
          vim.filetype.add {
            extension = {
              razor = "razor",
              cshtml = "razor",
            },
          }
          local razor = vim.fs.joinpath(
            vim.fn.fnamemodify(vim.fn.resolve("${csharp-tools}/bin/roslyn-ls"), ":h:h"),
            ".razorExtension"
          )
          local cmd = {
            "${csharp-tools}/bin/roslyn-ls",
            "--stdio",
            "--logLevel=Information",
            "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
            "--razorSourceGenerator="
              .. vim.fs.joinpath(razor, "Microsoft.CodeAnalysis.Razor.Compiler.dll"),
            "--razorDesignTimePath=" .. vim.fs.joinpath(
              razor,
              "Targets",
              "Microsoft.NET.Sdk.Razor.DesignTime.targets"
            ),
            "--extension",
            vim.fs.joinpath(razor, "Microsoft.VisualStudioCode.RazorExtension.dll"),
          }
          vim.lsp.config("roslyn", {
            cmd = cmd,
            settings = {
              ["csharp|inlay_hints"] = {
                csharp_enable_inlay_hints_for_implicit_object_creation = true,
                csharp_enable_inlay_hints_for_implicit_variable_types = true,
                csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                csharp_enable_inlay_hints_for_types = true,
                dotnet_enable_inlay_hints_for_literal_parameters = true,
                dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                dotnet_enable_inlay_hints_for_other_parameters = true,
                dotnet_enable_inlay_hints_for_parameters = true,
                dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
              },
              ["csharp|completion"] = {
                dotnet_show_completion_items_from_unimported_namespaces = true,
              },
              ["csharp|code_lens"] = {
                dotnet_enable_references_code_lens = true,
              },
            }
          })
          vim.lsp.enable("roslyn")
        '';

    };
}
