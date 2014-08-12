{%- set os = salt['grains.get']('os') -%}
{%- set pkgnames = salt['pillar.get']('pkgs:latest:' ~ os, []) -%}

{% if pkgnames %}
pkgs.latest:
  pkg.latest:
    - pkgs: {{ pkgnames }}
{% endif %}
