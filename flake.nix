{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs: let
    system = "x86_64-linux";
    pkgs = import inputs.nixpkgs {inherit system;};

    buildInputs = with pkgs; [
      zathura
      wl-clipboard
      gnumake

      typst
      lilypond
      inkscape
    ];

    srcdir = builtins.fetchGit {
      url = "https://github.com/bluedragon1221/music-theory-emotion";
      rev = "3e5394b2e3688b7c003b666dbfdb93edccc93f6d";
    };

    patch = pkgs.stdenv.mkDerivation {
      name = "music-theory-emotion-patchdir";
      src = srcdir;
      inherit buildInputs;

      buildPhase = ''
        mkdir -p $out
        make --makefile=$src/Makefile PATDIR=$out/patch SRCDIR=$src/src patch
      '';
    };

    build = pkgs.runCommand "build-patdir" {src = patch;} ''
      mkdir -p $out
      make --makefile=$src/Makefile OBJDIR=$out PATDIR=$src/patch essay
    '';
  in {
    devShells.${system}.default = pkgs.mkShell {
      inherit buildInputs;
    };

    packages.${system}.default = patch;
  };
}
