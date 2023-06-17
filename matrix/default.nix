{ run ? null }:
with import <nixpkgs> {}; with builtins; with lib;
let
  old-coq = [ "8.9" "8.8" "8.7" ];
  mc-coq-set = {
    "1.17.0" = [ "8.17" "8.16" "8.15"];
    "1.16.0" = [ "8.17" "8.16" "8.15" "8.14" "8.13" ];
    "1.15.0" = [ "8.16" "8.15" "8.14" "8.13" ];
    "1.14.0" = [ "8.15" "8.14" "8.13" "8.12" "8.11" ];
    "1.13.0" = [ "8.14" "8.13" "8.12" "8.11" ];
    "1.12.0" = [ "8.13" "8.12" "8.11" "8.10" ];
    "1.11.0" = [ "8.12" "8.11" "8.10" ] ++ old-coq;
    "1.10.0" = [ "8.11" "8.10" ] ++ old-coq;
    "1.9.0" =  [ "8.10" ] ++ old-coq;
    "1.8.0" =  old-coq;
  };

  mcs   = sort versionAtLeast (attrNames mc-coq-set);
  pairs = mc: map (coq: { inherit mc coq; })
                  (sort versionAtLeast mc-coq-set.${mc});
  matrix.include = flatten (map pairs mcs);

  # Generating an expanded script
  coq-loop = coq: ''
    export coq="${coq}"
  '' + run + "\n";
  mc-loop = mc: ''
    export mc="${mc}"
  '' + foldl (sh: coq: sh + coq-loop coq) "" mc-coq-set.${mc};
in

if !isString run then
  writeTextFile {
    name = "JSONMatrix";
    text = toJSON matrix;
  }
else
writeScriptBin "run" (''
    #!/usr/bin/env bash
    '' + foldl (sh: mc: sh + mc-loop mc) "" mcs)

