{
  description = "nvim config";

  inputs = {};

  outputs = { self }:
    {
      homeManagerModules = {
        neovim = { pkgs, ... }: {
	  xdg.configFile.nvim.source = "${self}/";
	};
      };
    };
}
