{%- set os = salt['grains.get']('os') -%}
{%- set pkgnames = salt['pillar.get']('pkgs:installed:' ~ os, []) -%}

{% if pkgnames %}
pkgs.installed:
  pkg.installed:
    - pkgs: {{ pkgnames }}
{% endif %}
