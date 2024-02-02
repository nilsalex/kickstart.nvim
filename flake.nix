{
  description = "nvim config";

  inputs = { };

  outputs = { self }:
    let
      system = "x86_64-linux";
    in {
      homeManagerModules = {
        neovim = { pkgs, ... }: {
	  xdg.configFile.nvim.source = "${self}/";
	};
      };
    };
}
