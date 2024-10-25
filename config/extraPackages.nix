{pkgs,...}:{
  extraPackages = with pkgs; [
    nixfmt-rfc-style
    jq
  ];
}
