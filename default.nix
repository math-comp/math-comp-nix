{ core ? false,
  config ? {}, withEmacs ? false, print-env ? false, do-nothing ? false,
  update-nixpkgs ? false, ci-matrix ? false, ci-step ? null,
  override ? {}, ocaml-override ? {}, global-override ? {},
  ci ? (!isNull ci-step), inNixShell ? null
}@args:
let src = fetchGit {
  url = "https://github.com/coq-community/nix-toolbox.git";
  ref = "master";
  rev = "8b8ed7f4fc38ae218d99fe9909142b30e6a0733f";
};
in
(import src ./.
  ({config = {
      coq-attribute = if core then "mathcomp-core-shell"
                      else "mathcomp-full-shell";
      src = ./.;
    };
   } // removeAttrs args ["core"])).nix-auto
