{ lib, config, ... }:
{
  options = {
    nvim-lint.enable = lib.mkEnableOption "Enable nvim-lint module";
  };
  config = lib.mkIf config.nvim-lint.enable {
    plugins.lint = {
      enable = true;
      lintersByFt = {
        c = [ "cpplint" ];
        cpp = [ "cpplint" ];
        go = [ "golangci-lint" ];
        nix = [ "statix" ];
        lua = [ "selene" ];
        # Python diagnostics come from the ruff LSP server instead (config/lsp/lsp-nvim.nix) —
        # flake8 here would just duplicate them.
        javascript = [ "eslint_d" ];
        javascriptreact = [ "eslint_d" ];
        typescript = [ "eslint_d" ];
        typescriptreact = [ "eslint_d" ];
        json = [ "jsonlint" ];
        haskell = [ "hlint" ];
        bash = [ "shellcheck" ];
      };
    };
  };
}
