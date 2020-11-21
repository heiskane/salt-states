/etc/apt/trusted.gpg.d/sublimehq-pub.gpg:
  file.managed:
    - source: salt://sublime/sublimehq-pub.gpg

/etc/apt/sources.list.d/sublime-text.list:
  file.managed:
    - source: salt://sublime/sublime-text.list

install_sublime:
  pkg.installed:
    - name: sublime-text
    - refresh: True