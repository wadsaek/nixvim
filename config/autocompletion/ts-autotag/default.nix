{lib,config,...}:{
  plugins.ts-autotag = lib.mkIf config.js.enable {
    enable = true;
  };
}
