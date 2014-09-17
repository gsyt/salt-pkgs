{%- set packages = salt['pillar.get']('pkgs:purged') -%}

{% if packages %}
pkgs.purged:
  pkg.purged:
  {% for package in packages %}
      - package
  {% endfor %}
{% endif %}
