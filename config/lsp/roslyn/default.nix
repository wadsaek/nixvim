{
  config,
  lib,
  ...
}:
lib.mkIf config.dotnet.enable {
  plugins.rzls = {
    enable = true;
  };
  plugins.roslyn = {
    enable = true;
    luaConfig.post =
      let
        rzls = config.dependencies.rzls.package;
      in
      ''
        vim.lsp.config("roslyn",{
          cmd = {
                  "Microsoft.CodeAnalysis.LanguageServer",
                  "--stdio",
                  "--logLevel=Information",
                  "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
                  "--razorSourceGenerator=${rzls}/lib/rzls/Microsoft.CodeAnalysis.Razor.Compiler.dll",
                  "--razorDesignTimePath=${rzls}/lib/rzls/Targets/Microsoft.NET.Sdk.Razor.DesignTime.targets"
              },
              handlers = require("rzls.roslyn_handlers"),
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
          }
        })
        vim.lsp.enable("roslyn")
      '';

  };
}
