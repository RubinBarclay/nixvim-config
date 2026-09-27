{ lib, config, ... }:
{
  options = {
    yazi.enable = lib.mkEnableOption "Enable yazi module";
  };
  config = lib.mkIf config.yazi.enable {
    plugins.yazi = {
      enable = true;
      lazyLoad.settings.cmd = "Yazi";
      settings = {
        open_for_directories = true;
        floating_window_scaling_factor = 0.9;
        yazi_floating_window_border = "rounded";
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>Yazi<cr>";
        options = {
          silent = true;
          desc = "Open Yazi (current file)";
        };
      }
      {
        mode = "n";
        key = "<leader>O";
        action = "<cmd>Yazi cwd<cr>";
        options = {
          silent = true;
          desc = "Open Yazi (cwd)";
        };
      }
    ];
  };
}
