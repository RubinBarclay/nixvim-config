{
  lib,
  config,
  pkgs,
  ...
}:
{
  extraPackages = with pkgs; [
    fd
    nixfmt
    stylua
    prettierd
    shfmt
    rustfmt
  ];

  # Import all your configuration modules here
  imports = [
    ./colorschemes
    ./completion
    ./git
    ./keys.nix
    ./languages
    ./lsp
    ./sets
    ./statusline
    ./telescope
    ./ui
    ./utils
  ];

  colorschemes.enable = lib.mkDefault true;
  completion.enable = lib.mkDefault true;
  git.enable = lib.mkDefault true;
  keys.enable = true;

  plugins.lz-n.enable = true;
  languages.enable = true;
  lsp.enable = lib.mkDefault true;
  sets.enable = lib.mkDefault true;
  statusline.enable = lib.mkDefault true;
  telescope.enable = lib.mkDefault true;
  ui.enable = lib.mkDefault true;
  utils.enable = lib.mkDefault true;
}
