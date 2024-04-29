{config, pkgs, ...}:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "mocha";
    };

    opts = {
      number = true;
      relativenumber = true;
    };

    plugins = {
      lualine.enable = true;
      bufferline.enable = true;

      lsp = {
        enable = true;
        servers = {
          lua-ls.enable = true;
          rust-analyzer = {
	  	enable = true;
		installCargo = true;
		installRustc = true;
	  };
          bashls.enable = true;
          html.enable = true;
          nixd.enable = true;
          pyright.enable = true;
        };

      };
      telescope.enable = true;
      oil.enable = true;
      treesitter.enable = true;
      markdown-preview.enable = true;
      coq-nvim.enable = true;
      coq-nvim.settings.auto_start = true;
      rust-tools.enable = true;
      nvim-tree.enable = true;
      sandwich.enable = true;
    };
  };
}
