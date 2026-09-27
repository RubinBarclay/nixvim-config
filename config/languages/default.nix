{
  lib,
  config,
  ...
}:
{
  imports = [
    ./treesitter-nvim.nix
    ./nvim-lint.nix
    ./rustaceanvim.nix
    ./roslyn.nix
  ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };
  config = lib.mkIf config.languages.enable {
    treesitter-nvim.enable = lib.mkDefault true;
    nvim-lint.enable = lib.mkDefault true;
    rustaceanvim.enable = lib.mkDefault true;
    roslyn.enable = lib.mkDefault true;
  };
}
