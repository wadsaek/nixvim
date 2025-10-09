{pkgs,lib, config,inputs,system,...}:{
  extraPackages =[
    pkgs.nixfmt-rfc-style
    pkgs.jq
  ] ++ lib.optional config.dotnet.enable (pkgs.dotnetCorePackages.combinePackages [
    inputs.nixpkgs-master.legacyPackages.${system}.dotnetCorePackages.sdk_10_0
    pkgs.dotnetCorePackages.sdk_9_0
    pkgs.dotnetCorePackages.sdk_8_0
  ]);
}
