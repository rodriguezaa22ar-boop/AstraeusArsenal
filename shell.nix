let
  rev = "34268251cf55";
  sha256 = "0fyhfg417schp15y0prf57q0dnrpdvw6dabb8f47ws76hpy70yqv";
  src = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    inherit sha256;
  };
  pkgs = import src { };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.bats
    pkgs.shellcheck
    pkgs.jq
    pkgs.yq
    pkgs.git
    pkgs.fd
    pkgs.ripgrep
    pkgs.tmux
    pkgs.gnupg
    pkgs.gnused
    pkgs.coreutils
    pkgs.findutils
  ];
}
