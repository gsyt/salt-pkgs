salt-pkgs
=========

Salt formula to set up and configure arbitrary package lists

Parameters
------------
Please refer to example.pillar for a list of available pillar configuration options

Usage
-----
- Apply state 'pkgs.latest' to upgrade to latest packages in target minions
- Apply state 'pkgs.installed' to enforce package installation in target minions
- Apply state 'pkgs.purged' to remove packages from target minions
- State 'pkgs' is provided as an alias for 'pkgs.latest', 'pkgs.installed' and 'pkgs.purged'

Compatibility
-------------
Ubuntu 13.10, 14.04 and CentOS 6.x
