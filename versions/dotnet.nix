{
  imports = [ ../config ];

  dotnet.enable = true;
  # Razor support depends on the html lsp server
  web.enable = true;
}
