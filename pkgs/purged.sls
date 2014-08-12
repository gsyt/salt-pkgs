{%- set os = salt['grains.get']('os') -%}
{%- set pkgnames = salt['pillar.get']('pkgs:purged:' ~ os, []) -%}

{% if pkgnames %}
pkgs.purged:
  pkg.purged:
    - pkgs: {{ pkgnames }}
{% endif %}
