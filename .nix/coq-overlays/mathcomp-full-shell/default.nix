{ stdenv, coq, mathcomp, mathcomp-finmap, mathcomp-bigenough,
  mathcomp-real-closed, mathcomp-analysis, multinomials,
  mathcomp-abel, version ? null }@args:
stdenv.mkDerivation {
  name = "mathcomp-full-shell";
  buildInputs = with builtins; filter (x: !(x.meta.broken or false))
    (attrValues (removeAttrs args ["stdenv" "version"]));
  src = version;
}
