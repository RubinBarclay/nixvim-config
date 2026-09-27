{
  lib,
  config,
  ...
}:
{
  imports = [
    ./rose-pine.nix
  ];

  options = {
    colorschemes.enable = lib.mkEnableOption "Enable colorschemes module";
  };
  config = lib.mkIf config.colorschemes.enable {
    rose-pine.enable = lib.mkDefault true;
  };
}
