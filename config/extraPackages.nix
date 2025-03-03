{pkgs,lib, config,...}:{
  extraPackages =[
    pkgs.nixfmt-rfc-style
    pkgs.jq
  ] ++ lib.optional config.dotnet.enable pkgs.dotnetCorePackages.sdk_8_0;
}
