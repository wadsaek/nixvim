{ pkgs, ... }:
{
  extraPackages = [
    pkgs.nixfmt-rfc-style
    pkgs.jq
  ];
}
