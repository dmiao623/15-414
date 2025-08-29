{
  description = "15-414 assignments development shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  outputs = { self, nixpkgs }: 
  let
    system = "aarch64-darwin";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = [
        (final: prev: {
          alt-ergo = prev.alt-ergo.overrideAttrs (_: {
            version = "2.6.0";
            src = prev.fetchurl {
              url = "https://github.com/OCamlPro/alt-ergo/releases/download/v2.6.0/alt-ergo-2.6.0.tbz";
              hash = "sha256-EmkxGvJSeKRmiSuoeMyIi6WfF39T3QPxKixiOwP8834=";
            };
          });
        })
      ];    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        alt-ergo
        cvc4
        gnumake
        why3
      ];
      shellHook = ''
        [ -f "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ] && . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
        why3 config detect
        exec zsh -l
      '';
    };
  };
}
