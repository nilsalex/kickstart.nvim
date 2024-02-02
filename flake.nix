{
  description = "nvim config";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
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
