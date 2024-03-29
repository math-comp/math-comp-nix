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
- python3.10-remarshal-0.14.0
- coq-8.17.0
- mathcomp-all-1.17.0
- mathcomp1.17-mathcomp-analysis-0.6.1
- mathcomp1.17-bigenough-1.0.1
- mathcomp1.17-finmap-1.5.2
- mathcomp1.17-real-closed-1.1.4
- mathcomp1.17-multinomials-1.6.0
### Mathematical Components 1.17.0 and Coq 8.16
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.16.1
- mathcomp-all-1.17.0
- mathcomp1.17-mathcomp-analysis-0.6.1
- mathcomp1.17-bigenough-1.0.1
- mathcomp1.17-finmap-1.5.2
- mathcomp1.17-real-closed-1.1.4
- mathcomp1.17-multinomials-1.6.0
### Mathematical Components 1.17.0 and Coq 8.15
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.15.2
- mathcomp-all-1.17.0
- mathcomp1.17-mathcomp-analysis-0.6.1
- mathcomp1.17-bigenough-1.0.1
- mathcomp1.17-finmap-1.5.2
- mathcomp1.17-real-closed-1.1.4
- mathcomp1.17-multinomials-1.6.0
### Mathematical Components 1.16.0 and Coq 8.17
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.17.0
- mathcomp-all-1.16.0
- mathcomp1.16-mathcomp-analysis-0.6.1
- mathcomp1.16-bigenough-1.0.1
- mathcomp1.16-finmap-1.5.2
- mathcomp1.16-real-closed-1.1.4
- mathcomp1.16-multinomials-1.6.0
### Mathematical Components 1.16.0 and Coq 8.16
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.16.1
- mathcomp-all-1.16.0
- mathcomp1.16-mathcomp-analysis-0.6.1
- mathcomp1.16-bigenough-1.0.1
- mathcomp1.16-finmap-1.5.2
- mathcomp1.16-real-closed-1.1.4
- mathcomp1.16-multinomials-1.6.0
### Mathematical Components 1.16.0 and Coq 8.15
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.15.2
- mathcomp-all-1.16.0
- mathcomp1.16-mathcomp-analysis-0.6.1
- mathcomp1.16-bigenough-1.0.1
- mathcomp1.16-finmap-1.5.2
- mathcomp1.16-real-closed-1.1.4
- mathcomp1.16-multinomials-1.6.0
### Mathematical Components 1.16.0 and Coq 8.14
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.14.1
- mathcomp-all-1.16.0
- mathcomp1.16-mathcomp-analysis-0.6.1
- mathcomp1.16-bigenough-1.0.1
- mathcomp1.16-finmap-1.5.2
- mathcomp1.16-real-closed-1.1.4
- mathcomp1.16-multinomials-1.5.6
### Mathematical Components 1.16.0 and Coq 8.13
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.13.2
- mathcomp-all-1.16.0
- mathcomp1.16-bigenough-1.0.1
- mathcomp1.16-finmap-1.5.2
- mathcomp1.16-real-closed-1.1.4
- mathcomp1.16-multinomials-1.5.6
### Mathematical Components 1.15.0 and Coq 8.16
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.16.1
- mathcomp-all-1.15.0
- mathcomp1.15-abel-1.2.1
- mathcomp1.15-mathcomp-analysis-0.6.1
- mathcomp1.15-bigenough-1.0.1
- mathcomp1.15-finmap-1.5.2
- mathcomp1.15-real-closed-1.1.4
- mathcomp1.15-multinomials-1.6.0
### Mathematical Components 1.15.0 and Coq 8.15
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.15.2
- mathcomp-all-1.15.0
- mathcomp1.15-abel-1.2.1
- mathcomp1.15-mathcomp-analysis-0.6.1
- mathcomp1.15-bigenough-1.0.1
- mathcomp1.15-finmap-1.5.2
- mathcomp1.15-real-closed-1.1.4
- mathcomp1.15-multinomials-1.6.0
### Mathematical Components 1.15.0 and Coq 8.14
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.14.1
- mathcomp-all-1.15.0
- mathcomp1.15-abel-1.2.1
- mathcomp1.15-mathcomp-analysis-0.6.1
- mathcomp1.15-bigenough-1.0.1
- mathcomp1.15-finmap-1.5.2
- mathcomp1.15-real-closed-1.1.4
- mathcomp1.15-multinomials-1.5.6
### Mathematical Components 1.15.0 and Coq 8.13
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.13.2
- mathcomp-all-1.15.0
- mathcomp1.15-abel-1.2.1
- mathcomp1.15-bigenough-1.0.1
- mathcomp1.15-finmap-1.5.2
- mathcomp1.15-real-closed-1.1.4
- mathcomp1.15-multinomials-1.5.6
### Mathematical Components 1.14.0 and Coq 8.15
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.15.2
- mathcomp-all-1.14.0
- mathcomp1.14-abel-1.2.1
- mathcomp1.14-mathcomp-analysis-0.6.1
- mathcomp1.14-bigenough-1.0.1
- mathcomp1.14-finmap-1.5.2
- mathcomp1.14-real-closed-1.1.4
- mathcomp1.14-multinomials-1.5.6
### Mathematical Components 1.14.0 and Coq 8.14
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.14.1
- mathcomp-all-1.14.0
- mathcomp1.14-abel-1.2.1
- mathcomp1.14-mathcomp-analysis-0.6.1
- mathcomp1.14-bigenough-1.0.1
- mathcomp1.14-finmap-1.5.2
- mathcomp1.14-real-closed-1.1.4
- mathcomp1.14-multinomials-1.5.6
### Mathematical Components 1.14.0 and Coq 8.13
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.13.2
- mathcomp-all-1.14.0
- mathcomp1.14-abel-1.2.1
- mathcomp1.14-mathcomp-analysis-0.5.1
- mathcomp1.14-bigenough-1.0.1
- mathcomp1.14-finmap-1.5.2
- mathcomp1.14-real-closed-1.1.4
- mathcomp1.14-multinomials-1.5.6
### Mathematical Components 1.14.0 and Coq 8.12
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.12.2
- mathcomp-all-1.14.0
- mathcomp1.14-abel-1.2.1
- mathcomp1.14-bigenough-1.0.1
- mathcomp1.14-finmap-1.5.1
- mathcomp1.14-real-closed-1.1.2
- mathcomp1.14-multinomials-1.5.6
### Mathematical Components 1.14.0 and Coq 8.11
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.11.2
- mathcomp-all-1.14.0
- mathcomp1.14-abel-1.2.1
- mathcomp1.14-bigenough-1.0.1
- mathcomp1.14-finmap-1.5.1
- mathcomp1.14-real-closed-1.1.2
- mathcomp1.14-multinomials-1.5.6
### Mathematical Components 1.13.0 and Coq 8.14
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.14.1
- mathcomp-all-1.13.0
- mathcomp1.13-abel-1.2.1
- mathcomp1.13-mathcomp-analysis-0.6.1
- mathcomp1.13-bigenough-1.0.1
- mathcomp1.13-finmap-1.5.2
- mathcomp1.13-real-closed-1.1.4
- mathcomp1.13-multinomials-1.5.6
### Mathematical Components 1.13.0 and Coq 8.13
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.13.2
- mathcomp-all-1.13.0
- mathcomp1.13-abel-1.2.1
- mathcomp1.13-mathcomp-analysis-0.5.1
- mathcomp1.13-bigenough-1.0.1
- mathcomp1.13-finmap-1.5.2
- mathcomp1.13-real-closed-1.1.4
- mathcomp1.13-multinomials-1.5.6
### Mathematical Components 1.13.0 and Coq 8.12
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.12.2
- mathcomp-all-1.13.0
- mathcomp1.13-abel-1.2.1
- mathcomp1.13-mathcomp-analysis-0.3.10
- mathcomp1.13-bigenough-1.0.1
- mathcomp1.13-finmap-1.5.1
- mathcomp1.13-real-closed-1.1.2
- mathcomp1.13-multinomials-1.5.6
### Mathematical Components 1.13.0 and Coq 8.11
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.11.2
- mathcomp-all-1.13.0
- mathcomp1.13-abel-1.2.1
- mathcomp1.13-mathcomp-analysis-0.3.10
- mathcomp1.13-bigenough-1.0.1
- mathcomp1.13-finmap-1.5.1
- mathcomp1.13-real-closed-1.1.2
- mathcomp1.13-multinomials-1.5.6
### Mathematical Components 1.12.0 and Coq 8.13
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.13.2
- mathcomp-all-1.12.0
- mathcomp1.12-abel-1.2.1
- mathcomp1.12-mathcomp-analysis-0.3.13
- mathcomp1.12-bigenough-1.0.1
- mathcomp1.12-finmap-1.5.2
- mathcomp1.12-real-closed-1.1.3
- mathcomp1.12-multinomials-1.5.5
### Mathematical Components 1.12.0 and Coq 8.12
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.12.2
- mathcomp-all-1.12.0
- mathcomp1.12-abel-1.2.1
- mathcomp1.12-mathcomp-analysis-0.3.10
- mathcomp1.12-bigenough-1.0.1
- mathcomp1.12-finmap-1.5.1
- mathcomp1.12-real-closed-1.1.2
- mathcomp1.12-multinomials-1.5.5
### Mathematical Components 1.12.0 and Coq 8.11
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.11.2
- mathcomp-all-1.12.0
- mathcomp1.12-abel-1.2.1
- mathcomp1.12-mathcomp-analysis-0.3.10
- mathcomp1.12-bigenough-1.0.1
- mathcomp1.12-finmap-1.5.1
- mathcomp1.12-real-closed-1.1.2
- mathcomp1.12-multinomials-1.5.5
### Mathematical Components 1.12.0 and Coq 8.10
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.10.2
- mathcomp-all-1.12.0
- mathcomp1.12-abel-1.2.1
- mathcomp1.12-bigenough-1.0.1
- mathcomp1.12-finmap-1.5.1
- mathcomp1.12-real-closed-1.1.2
- mathcomp1.12-multinomials-1.5.5
### Mathematical Components 1.11.0 and Coq 8.12
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.12.2
- mathcomp-all-1.11.0
- mathcomp1.11-abel-1.1.2
- mathcomp1.11-mathcomp-analysis-0.3.3
- mathcomp1.11-bigenough-1.0.1
- mathcomp1.11-finmap-1.5.1
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.11.0 and Coq 8.11
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.11.2
- mathcomp-all-1.11.0
- mathcomp1.11-abel-1.1.2
- mathcomp1.11-mathcomp-analysis-0.3.3
- mathcomp1.11-bigenough-1.0.1
- mathcomp1.11-finmap-1.5.1
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.11.0 and Coq 8.10
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.10.2
- mathcomp-all-1.11.0
- mathcomp1.11-abel-1.1.2
- mathcomp1.11-mathcomp-analysis-0.3.3
- mathcomp1.11-bigenough-1.0.1
- mathcomp1.11-finmap-1.5.1
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.11.0 and Coq 8.9
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.9.1
- mathcomp-all-1.11.0
- mathcomp1.11-bigenough-1.0.0
- mathcomp1.11-finmap-1.5.0
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.11.0 and Coq 8.8
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.8.2
- mathcomp-all-1.11.0
- mathcomp1.11-bigenough-1.0.0
- mathcomp1.11-finmap-1.5.0
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.11.0 and Coq 8.7
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.7.2
- mathcomp-all-1.11.0
- mathcomp1.11-bigenough-1.0.0
- mathcomp1.11-finmap-1.5.0
- mathcomp1.11-real-closed-1.1.1
- mathcomp1.11-multinomials-1.5.2
### Mathematical Components 1.10.0 and Coq 8.11
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.11.2
- mathcomp-all-1.10.0
- mathcomp1.10-mathcomp-analysis-0.2.3
- mathcomp1.10-bigenough-1.0.1
- mathcomp1.10-finmap-1.4.0+coq-8.11
- mathcomp1.10-real-closed-1.0.4
- mathcomp1.10-multinomials-1.5.0
### Mathematical Components 1.10.0 and Coq 8.10
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.10.2
- mathcomp-all-1.10.0
- mathcomp1.10-mathcomp-analysis-0.2.3
- mathcomp1.10-bigenough-1.0.1
- mathcomp1.10-finmap-1.4.0
- mathcomp1.10-real-closed-1.0.4
- mathcomp1.10-multinomials-1.5.0
### Mathematical Components 1.10.0 and Coq 8.9
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.9.1
- mathcomp-all-1.10.0
- mathcomp1.10-mathcomp-analysis-0.2.3
- mathcomp1.10-bigenough-1.0.0
- mathcomp1.10-finmap-1.4.0
- mathcomp1.10-real-closed-1.0.4
- mathcomp1.10-multinomials-1.5.0
### Mathematical Components 1.10.0 and Coq 8.8
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.8.2
- mathcomp-all-1.10.0
- mathcomp1.10-mathcomp-analysis-0.2.3
- mathcomp1.10-bigenough-1.0.0
- mathcomp1.10-finmap-1.4.0
- mathcomp1.10-real-closed-1.0.4
- mathcomp1.10-multinomials-1.5.0
### Mathematical Components 1.10.0 and Coq 8.7
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.7.2
- mathcomp-all-1.10.0
- mathcomp1.10-bigenough-1.0.0
- mathcomp1.10-finmap-1.4.0
- mathcomp1.10-real-closed-1.0.4
- mathcomp1.10-multinomials-1.5.0
### Mathematical Components 1.9.0 and Coq 8.10
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.10.2
- mathcomp-all-1.9.0
- mathcomp1.9-mathcomp-analysis-0.2.3
- mathcomp1.9-bigenough-1.0.1
- mathcomp1.9-finmap-1.4.0
- mathcomp1.9-real-closed-1.0.4
- mathcomp1.9-multinomials-1.5.0
### Mathematical Components 1.9.0 and Coq 8.9
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.9.1
- mathcomp-all-1.9.0
- mathcomp1.9-mathcomp-analysis-0.2.3
- mathcomp1.9-bigenough-1.0.0
- mathcomp1.9-finmap-1.4.0
- mathcomp1.9-real-closed-1.0.4
- mathcomp1.9-multinomials-1.5.0
### Mathematical Components 1.9.0 and Coq 8.8
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.8.2
- mathcomp-all-1.9.0
- mathcomp1.9-mathcomp-analysis-0.2.3
- mathcomp1.9-bigenough-1.0.0
- mathcomp1.9-finmap-1.4.0
- mathcomp1.9-real-closed-1.0.4
- mathcomp1.9-multinomials-1.5.0
### Mathematical Components 1.9.0 and Coq 8.7
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.7.2
- mathcomp-all-1.9.0
- mathcomp1.9-bigenough-1.0.0
- mathcomp1.9-finmap-1.4.0
- mathcomp1.9-real-closed-1.0.4
- mathcomp1.9-multinomials-1.5.0
### Mathematical Components 1.8.0 and Coq 8.9
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.9.1
- mathcomp-all-1.8.0
- mathcomp1.8-mathcomp-analysis-0.2.3
- mathcomp1.8-bigenough-1.0.0
- mathcomp1.8-finmap-1.4.0
- mathcomp1.8-real-closed-1.0.3
- mathcomp1.8-multinomials-1.5.0
### Mathematical Components 1.8.0 and Coq 8.8
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.8.2
- mathcomp-all-1.8.0
- mathcomp1.8-mathcomp-analysis-0.2.3
- mathcomp1.8-bigenough-1.0.0
- mathcomp1.8-finmap-1.4.0
- mathcomp1.8-real-closed-1.0.3
- mathcomp1.8-multinomials-1.5.0
### Mathematical Components 1.8.0 and Coq 8.7
Available packages:
- python3.10-remarshal-0.14.0
- coq-8.7.2
- mathcomp-all-1.8.0
- mathcomp1.8-bigenough-1.0.0
- mathcomp1.8-finmap-1.4.0
- mathcomp1.8-real-closed-1.0.3
- mathcomp1.8-multinomials-1.5.0
