{ lib, config, ... }:
{
  options = {
    persistence.enable = lib.mkEnableOption "Enable persistence module";
  };
  config = lib.mkIf config.persistence.enable {
    plugins.persistence = {
      enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>qs";
        action = "<cmd>lua require('persistence').load()<cr>";
        options = {
          silent = true;
          desc = "Restore session";
        };
      }
      {
        mode = "n";
        key = "<leader>ql";
        action = "<cmd>lua require('persistence').load({ last = true })<cr>";
        options = {
          silent = true;
          desc = "Restore last session";
        };
      }
      {
        mode = "n";
        key = "<leader>qd";
        action = "<cmd>lua require('persistence').stop()<cr>";
        options = {
          silent = true;
          desc = "Don't save current session";
        };
      }
    ];
  };
}
