salt-pkgs
=========

Salt formula to set up and configure arbitrary package lists

Requirements
------------
The following pillars are available for configuration:
  * pkgs:latest:salt['pillar.get']('os')
  * pkgs:installed:salt['pillar.get']('os')
  * pkgs:purged:salt['pillar.get']('os')

All packages in 'pkgs:latest:salt['pillar.get']('os')' and 'pkgs:installed:salt['pillar.get']('os')' must be available from configured repos

Usage
-----
Apply state 'pkgs.latest' to upgrade to latest packages in target minions
Apply state 'pkgs.installed' to enforce package installation in target minions
Apply state 'pkgs.purged' to remove packages from target minions
State 'pkgs' is provided as an alias for 'pkgs.latest', 'pkgs.installed' and 'pkgs.purged'

Compatibility
-------------
Ubuntu 13.10, 14.04 and CentOS 6.x
