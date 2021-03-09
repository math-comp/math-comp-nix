# Nix support, build and caching for mathcomp packages

![Cachix](https://github.com/math-comp/math-comp-nix/workflows/Cachix/badge.svg)

This caches the builds needed to call
```
nix-shell https://github.com/math-comp/math-comp-nix/archive/v2.tar.gz

```

Which can also be called (with some delays in updates)
```
nix-shell https://math-comp.github.io/nix
```

See [Mathcomp on nix Wiki page](https://github.com/math-comp/math-comp/wiki/Using-nix) for a short manual.

## Summary

Here is a synthesis of all available mathcomp packages.

If a mathcomp-coq combination is missing, please add it to the `mc-coq-set` attribute in the file [`matrix/default.nix`](https://github.com/math-comp/math-comp-nix/blob/v2/mstrix/default.nix).

If some mathcomp extra package is missing, there might be two reasons:
- Either the (upadate of the) package has not been pushed on [NixOS/nixpkgs](https://github.com/NixOS/nixpkgs).
  If that's the case you can either
  + open a pull request to add it, or
  + open an issue and tag @CohenCyril to prompt for the addition of the package.
- Or the nixpkgs commit has not been updated in https://github.com/coq-nix-toolbox/.
  In which case, you should go there and run `nix-shell --arg update-nixpkgs true`, commit and push **there**.
  + This command is also applicable in the current directory but is strongly discouraged
    outside of development purpose, since it would desynchronize the nixpkgs versions at use
    between https://github.com/coq-nix-toolbox/ and https://math-comp.github.io/nix.
  + It can take some time for a package pushed to NixOS/nixpkgs to reach the unstable branch.
    If you are too impatient you can run `nix-shell --arg do-nothing true --run updateNixpkgsMaster`
    **on your own projects**.

