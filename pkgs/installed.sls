{%- set packages = salt['pillar.get']('pkgs:installed') -%}

{% if packages %}
pkgs.installed:
  pkg.installed:
    - pkgs: {{ packages }}
{% endif %}
