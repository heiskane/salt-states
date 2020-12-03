nginx:
  pkg.installed

/var/www/heiskane/html:
  file.recurse:
    - source: salt://nginx/html/
    - user: www-data
    - group: www-data
    - makedirs: True
    - file_mode: 644

/etc/nginx/sites-available/heiskane:
  file.managed:
    - source: salt://nginx/heiskane

/etc/nginx/sites-enabled/heiskane:
  file.symlink:
    - target: /etc/nginx/sites-available/heiskane

restart_nginx:
  service.running:
    - name: nginx
    - enable: True
    - restart: True
    - watch:
      - file: /etc/nginx/sites-available/heiskane
    - require:
      - pkg: nginx

/etc/hosts:
  file.managed:
    - source: salt://nginx/hosts


