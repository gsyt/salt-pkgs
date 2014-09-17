{%- set packages = salt['pillar.get']('pkgs:installed') -%}

{% if packages %}
pkgs.installed:
  pkg.installed:
    - pkgs:
  {% for package in packages %}
      - package
  {% endfor %}
{% endif %}
