{
  description = "15-414 assignments development shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  outputs = { self, nixpkgs }: {
    devShells.default = let
      pkgs = import nixpkgs { system = "aarch64-darwin"; };
    in pkgs.mkShell {
      buildInputs = with pkgs [ 
        alt-ergo 
        why3
      ];
    };
  };
}
