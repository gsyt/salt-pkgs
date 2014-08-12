include:
  - pkgs.installed
  - pkgs.latest
  - pkgs.purged

pkgs:
  require:
    - sls: pkgs.installed
    - sls: pkgs.latest
    - sls: pkgs.purged
