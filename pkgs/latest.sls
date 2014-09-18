{%- set packages = salt['pillar.get']('pkgs:latest') -%}

{% if packages %}
pkgs.latest:
  pkg.latest:
    - pkgs: 
  {% for package in packages %}
      - {{ package }}
  {% endfor %}
{% endif %}
