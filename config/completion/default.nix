{
  lib,
  config,
  ...
}:
{
  imports = [
    ./blink-cmp.nix
  ];

  options = {
    completion.enable = lib.mkEnableOption "Enable completion module";
  };
  config = lib.mkIf config.completion.enable {
    blink-cmp.enable = lib.mkDefault true;
  };
}
