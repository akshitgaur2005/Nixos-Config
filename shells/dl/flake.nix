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
      cudaSupport = true;
    };
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        python311Packages.torch-bin
	python3
	cudatoolkit
	linuxPackages.nvidia_x11
	python311Packages.pandas
	python311Packages.scikit-learn
	python311Packages.seaborn
	python311Packages.numpy
	python311Packages.matplotlib
      ];

      shellHook = ''
        export CUDA_PATH=${pkgs.cudatoolkit}
        # export LD_LIBRARY_PATH=${pkgs.linuxPackages.nvidia_x11}/lib:${pkgs.ncurses5}/lib
        export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib"
        export EXTRA_CCFLAGS="-I/usr/include"
      '';
      };
    };
}
