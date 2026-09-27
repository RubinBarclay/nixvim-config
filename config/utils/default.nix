{
  lib,
  config,
  ...
}:
{
  imports = [
    ./better-escape.nix
    ./cloak.nix
    ./colorizer.nix
    ./harpoon.nix
    ./markdown-preview.nix
    ./peek.nix
    ./mini.nix
    ./nvim-autopairs.nix
    ./nvim-surround.nix
    ./persistence.nix
    ./plenary.nix
    ./project-nvim.nix
    ./todo-comments.nix
    ./undotree.nix
    ./which-key.nix
    ./yazi.nix
  ];

  options = {
    utils.enable = lib.mkEnableOption "Enable utils module";
  };
  config = lib.mkIf config.utils.enable {
    better-escape.enable = lib.mkDefault true;
    cloak.enable = lib.mkDefault true;
    harpoon.enable = lib.mkDefault true;
    markdown-preview.enable = lib.mkDefault true;
    peek.enable = lib.mkDefault false;
    mini.enable = lib.mkDefault true;
    nvim-autopairs.enable = lib.mkDefault true;
    colorizer.enable = lib.mkDefault true;
    nvim-surround.enable = lib.mkDefault true;
    persistence.enable = lib.mkDefault true;
    plenary.enable = lib.mkDefault true;
    project-nvim.enable = lib.mkDefault true;
    todo-comments.enable = lib.mkDefault true;
    undotree.enable = lib.mkDefault true;
    which-key.enable = lib.mkDefault true;
    yazi.enable = lib.mkDefault true;
  };
}
