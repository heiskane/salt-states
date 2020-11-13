install_dante:
  pkg.installed:
    - name: dante-server
#  service.running:
#    - name: danted
#    - enable: True
#    - require:
#      - pkg: install_dante

dante_user:
  user.present:
    - name: heiskane
    - shell: /usr/sbin/nologin
    - password: $6$Pojx5jnjRxDO2E96$tzZazL8Pvdv3YaLULra.UukbBPCE/Pn3g6smmbODAI6teQEBA4j4iJzGWrALYcj/z.4BKlEU/d2gLbbEbr99Y1

add_config:
  file.managed:
    - name: /etc/danted.conf
    - source: salt://dante/danted.conf
    - require:
      - pkg: install_dante

reload_dante:
  service.running:
    - name: danted
    - enable: True
    - restart: True
    - watch:
      - file: /etc/danted.conf
    - require:
      - pkg: install_dante

