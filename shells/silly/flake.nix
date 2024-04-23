{
  description = "Deep Learning Flake";

  inputs= {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
    #pkgs = nixpkgs.legacyPackages.${system} {
    #  allowUnfree = true;
    #  cudaSupport = true;
    #};
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      allowUnfree = true;
    };
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        nodejs_21
      ];
      };
    };
}
