{ core ? false,
  config ? {}, withEmacs ? false, print-env ? false, do-nothing ? false,
  update-nixpkgs ? false, ci-matrix ? false,
  override ? {}, ocaml-override ? {}, global-override ? {},
  job ? null, bundle ? null, inNixShell ? null, src ? ./.,
}@args:
let auto = fetchGit {
  url = "https://github.com/coq-community/coq-nix-toolbox.git";
  ref = "master";
# putting a ref here is strongly advised
  rev = import .nix/coq-nix-toolbox.nix;
};
in
(import auto (
  { 
    config = {
      attribute = if core then "mathcomp-core-shell"
                  else "mathcomp-full-shell";

    };
  } // removeAttrs args ["core"])).nix-auto
