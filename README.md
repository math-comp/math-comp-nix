# Nix support, build and caching for mathcomp packages

![Cachix](https://github.com/math-comp/math-comp-nix/workflows/Cachix/badge.svg?branch=v2)

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

If some mathcomp extra package is missing, there might be three reasons:
1. The (update of the) package has not been pushed on [NixOS/nixpkgs](https://github.com/NixOS/nixpkgs).
  If that's the case you can either
  + open a pull request to add it, or
  + open an issue and tag @CohenCyril to prompt for the addition of the package.
2. The nixpkgs commit has not been updated in https://github.com/coq-community/coq-nix-toolbox/.
  In which case, you should go there and run `nix-shell --arg update-nixpkgs true`, commit and push **there**.
  + This command is also applicable in the current directory but is strongly discouraged
    outside of development purpose, since it would desynchronize the nixpkgs versions at use
    between https://github.com/coq-nix-toolbox/ and https://math-comp.github.io/nix.
  + It can take some time for a package pushed to NixOS/nixpkgs to reach the unstable branch.
    If you are too impatient you can run `nix-shell --arg do-nothing true --run updateNixpkgsMaster`
    **on your own projects**.
3. The current repository is not in sync with
   https://github.com/coq-community/coq-nix-toolbox/.
   You should run `nix-shell --run updateNixToolBox`, commit and make
   a pull request to see if it goes through.

### Mathematical Components 1.17.0 and Coq 8.17
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.17.0
### Mathematical Components 1.17.0 and Coq 8.16
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.16.1
### Mathematical Components 1.17.0 and Coq 8.15
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.15.2
### Mathematical Components 1.16.0 and Coq 8.17
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.17.0
### Mathematical Components 1.16.0 and Coq 8.16
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.16.1
### Mathematical Components 1.16.0 and Coq 8.15
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.15.2
### Mathematical Components 1.16.0 and Coq 8.14
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.14.1
### Mathematical Components 1.16.0 and Coq 8.13
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.13.2
### Mathematical Components 1.15.0 and Coq 8.16
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.16.1
### Mathematical Components 1.15.0 and Coq 8.15
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.15.2
### Mathematical Components 1.15.0 and Coq 8.14
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.14.1
### Mathematical Components 1.15.0 and Coq 8.13
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.13.2
### Mathematical Components 1.14.0 and Coq 8.15
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.15.2
### Mathematical Components 1.14.0 and Coq 8.14
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.14.1
### Mathematical Components 1.14.0 and Coq 8.13
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.13.2
### Mathematical Components 1.14.0 and Coq 8.12
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.12.2
### Mathematical Components 1.14.0 and Coq 8.11
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.11.2
### Mathematical Components 1.13.0 and Coq 8.14
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.14.1
### Mathematical Components 1.13.0 and Coq 8.13
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.13.2
### Mathematical Components 1.13.0 and Coq 8.12
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.12.2
### Mathematical Components 1.13.0 and Coq 8.11
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.11.2
### Mathematical Components 1.12.0 and Coq 8.13
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.13.2
### Mathematical Components 1.12.0 and Coq 8.12
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.12.2
### Mathematical Components 1.12.0 and Coq 8.11
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.11.2
### Mathematical Components 1.12.0 and Coq 8.10
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.10.2
### Mathematical Components 1.11.0 and Coq 8.12
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.12.2
### Mathematical Components 1.11.0 and Coq 8.11
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.11.2
### Mathematical Components 1.11.0 and Coq 8.10
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.10.2
### Mathematical Components 1.11.0 and Coq 8.9
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.9.1
### Mathematical Components 1.11.0 and Coq 8.8
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.8.2
### Mathematical Components 1.11.0 and Coq 8.7
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.7.2
### Mathematical Components 1.10.0 and Coq 8.11
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.11.2
### Mathematical Components 1.10.0 and Coq 8.10
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.10.2
### Mathematical Components 1.10.0 and Coq 8.9
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.9.1
### Mathematical Components 1.10.0 and Coq 8.8
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.8.2
### Mathematical Components 1.10.0 and Coq 8.7
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.7.2
### Mathematical Components 1.9.0 and Coq 8.10
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.10.2
### Mathematical Components 1.9.0 and Coq 8.9
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.9.1
### Mathematical Components 1.9.0 and Coq 8.8
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.8.2
### Mathematical Components 1.9.0 and Coq 8.7
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.7.2
### Mathematical Components 1.8.0 and Coq 8.9
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.9.1
### Mathematical Components 1.8.0 and Coq 8.8
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.8.2
### Mathematical Components 1.8.0 and Coq 8.7
Available packages:
- which-2.21
- python3.10-remarshal-0.14.0
- coq-8.7.2
