{ lib, config, ... }:
{
  options = {
    rustaceanvim.enable = lib.mkEnableOption "Enable rustaceanvim module";
  };
  config = lib.mkIf config.rustaceanvim.enable {
    plugins.rustaceanvim = {
      enable = true;
      lazyLoad.settings.ft = "rust";
      settings = {
        server = {
          default_settings = {
            rust-analyzer = {
              check = {
                command = "clippy";
              };
              procMacro = {
                enable = true;
              };
            };
          };
        };
      };
    };
  };
}
