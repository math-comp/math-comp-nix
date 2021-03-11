{ core ? false,
  config ? {}, withEmacs ? false, print-env ? false, do-nothing ? false,
  update-nixpkgs ? false, ci-matrix ? false, ci-step ? null,
  override ? {}, ocaml-override ? {}, global-override ? {},
  ci ? (!isNull ci-step), inNixShell ? null
}@args:
let auto = fetchGit {
  url = "https://github.com/coq-community/nix-toolbox.git";
  ref = "master";
  rev = "12dbd4a2f02f2cac2f75337ac6b848e4e037f4de";
};
in
(import auto (
  { src = ./.;
    config = {
      coq-attribute = if core then "mathcomp-core-shell"
                      else "mathcomp-full-shell";
    };
  } // removeAttrs args ["core"])).nix-auto
