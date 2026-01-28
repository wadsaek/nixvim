{ pkgs, ... }:
{
  extraPackages = [
    pkgs.nixfmt
    pkgs.jq
  ];
}
