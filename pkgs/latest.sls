{%- set packages = salt['pillar.get']('pkgs:latest') -%}

{% if packages %}
pkgs.latest:
  pkg.latest:
    - pkgs: {{ packages }}
{% endif %}
