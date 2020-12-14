webadmin:
  user.present:
    - shell: /usr/sbin/nologin

/home/webadmin/public_html:
  file.directory:
    - user: webadmin
    - group: webadmin
    - mode: 2771

niko:
  user.present:
    - password: $6$k/hlfoIOcBYoFtEa$mucmPkbgHsZNCKP/WEqPdYjPPvBZ3guHGLH81FSGj0Mzxn8.ygny1Bi5JlZRSLfJyyMRcPSwNkeyQ9JYfKNgn1
    - shell: /bin/bash
    - groups:
      - webadmin

