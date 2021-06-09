{ nixpkgs ? import <nixpkgs> {} } :

let
  inherit (nixpkgs) pkgs;
  ocamlPackages = pkgs.ocamlPackages;
in

pkgs.stdenv.mkDerivation {
  name = "my-ocaml-env";
  buildInputs = [
    ocamlPackages.dune_2
    ocamlPackages.findlib # essential
    ocamlPackages.ocaml
    ocamlPackages.ppxlib
    ocamlPackages.ppx_deriving
    ocamlPackages.utop
    ocamlPackages.ocaml-lsp

    pkgs.rlwrap

    (pkgs.emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
      ocamlPackages.dune_2
    ])))

    pkgs.vscode
  ];
}
