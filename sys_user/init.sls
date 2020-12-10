dante_user:
  user.present:
    - name: heiskane
    - shell: /usr/sbin/nologin

/home/heiskane/public_html:
  file.directory:
    - user: heiskane
    - group: heiskane
    - mode: 2771
    - makedirs: True
