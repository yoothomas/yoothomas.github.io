{
  description = "Local development shell for yoothomas.github.io";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { nixpkgs, ... }: {
    devShells = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-darwin" ] (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        default = pkgs.mkShell {
          packages = with pkgs; [
            git
            nodejs
            pkg-config
            ruby_3_3 # Includes Bundler, which installs Jekyll from the Gemfile.
          ];

          buildInputs = [ pkgs.openssl ];
        };
      }
    );
  };
}
