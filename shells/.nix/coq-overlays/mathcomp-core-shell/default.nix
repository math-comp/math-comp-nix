{ stdenv, coq, mathcomp, version ? null }@args:
stdenv.mkDerivation {
  name = "mathcomp-core-shell";
  buildInputs = [ coq mathcomp ];
  src = version;
}
