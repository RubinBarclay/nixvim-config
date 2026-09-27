{ lib, config, ... }:
{
  options = {
    roslyn.enable = lib.mkEnableOption "Enable roslyn (C#/.NET) module";
  };
  config = lib.mkIf config.roslyn.enable {
    plugins.roslyn = {
      enable = true;
      lazyLoad.settings.ft = "cs";
      settings = {
        broad_search = true;
        lock_target = true;
      };
    };
  };
}
