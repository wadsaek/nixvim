{pkgs,lib, config,...}:{
  extraPackages =[
    pkgs.nixfmt-rfc-style
    pkgs.jq
  ] ++ lib.optional config.dotnet.enable (pkgs.dotnetCorePackages.combinePackages [
    pkgs.dotnetCorePackages.sdk_9_0
    pkgs.dotnetCorePackages.sdk_8_0
  ]);
}
