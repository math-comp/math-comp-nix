{ core ? false,
  config ? {}, withEmacs ? false, print-env ? false, do-nothing ? false,
  update-nixpkgs ? false, ci-matrix ? false, ci-step ? null,
  override ? {}, ocaml-override ? {}, global-override ? {},
  ci ? (!isNull ci-step), inNixShell ? null
}@args:
let auto = fetchGit {
  url = "https://github.com/coq-community/nix-toolbox.git";
  ref = "master";
  rev = "b1e5c52bdc1d79b7cd220476ebd9bc552a2331c7";
};
in
(import auto (
  { src = ./dummy;
    config = {
      coq-attribute = if core then "mathcomp-core-shell"
                      else "mathcomp-full-shell";
    };
  } // removeAttrs args ["core"])).nix-auto
