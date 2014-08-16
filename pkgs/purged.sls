{%- set packages = salt['pillar.get']('pkgs:purged') -%}

{% if packages %}
pkgs.purged:
  pkg.purged:
    - pkgs: {{ packages }}
{% endif %}
