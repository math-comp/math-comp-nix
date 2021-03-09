{ stdenv, coq, mathcomp, mathcomp-finmap, mathcomp-bigenough,
  mathcomp-real-closed, mathcomp-analysis, multinomials,
  mathcomp-abel, version ? null }@args:
stdenv.mkDerivation {
  name = "mathcomp-full-shell";
  buildInputs = builtins.attrValues
    (builtins.removeAttrs args ["stdenv" "version"]);
  src = version;
}
