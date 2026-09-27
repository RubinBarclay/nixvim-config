{ lib, config, ... }:
{
  options = {
    keys.enable = lib.mkEnableOption "Enable keys module";
  };
  config = lib.mkIf config.keys.enable {
    globals.mapleader = " ";
  };
}
