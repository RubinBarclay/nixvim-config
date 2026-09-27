{ lib, config, ... }:
{
  options = {
    blink-cmp.enable = lib.mkEnableOption "Enable blink-cmp module";
  };
  config = lib.mkIf config.blink-cmp.enable {
    plugins.friendly-snippets.enable = true;

    plugins.blink-cmp = {
      enable = true;
      setupLspCapabilities = true;
      settings = {
        keymap.preset = "super-tab";
        sources.default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
        completion = {
          documentation.auto_show = true;
          menu.border = "rounded";
        };
        signature = {
          enabled = true;
          window.border = "rounded";
        };
        appearance = {
          nerd_font_variant = "mono";
        };
      };
    };
  };
}
