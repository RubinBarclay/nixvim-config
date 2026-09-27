{
  lib,
  config,
  ...
}:
{
  imports = [
    ./dressing-nvim.nix
    ./indent-blankline.nix
    ./nui.nix
    ./notify.nix
    ./web-devicons.nix
  ];

  options = {
    ui.enable = lib.mkEnableOption "Enable ui module";
  };
  config = lib.mkIf config.ui.enable {
    dressing-nvim.enable = lib.mkDefault true;
    indent-blankline.enable = lib.mkDefault true;
    notify.enable = lib.mkDefault true;
    nui.enable = lib.mkDefault true;
    web-devicons.enable = lib.mkDefault true;
  };
}
