/usr/local/bin/:
  file.recurse:
    - source: salt://hello/scripts/
    - file_mode: 755
