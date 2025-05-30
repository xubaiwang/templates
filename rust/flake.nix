{
  description = "Rust dev shell template";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default =
          with pkgs;
          mkShell {
            packages = [
              clippy
              rustfmt
              rust-analyzer
            ];
            nativeBuildInputs = [
              cargo
              pkg-config
              rustc
            ];
          };
      }
    );
}
