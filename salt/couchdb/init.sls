couchdb:
  pkg:
    - installed
  file.managed:
    - name: /etc/couchdb/local.ini
    - source:
      - salt://files/couchdb.local.ini
    - user: couchdb
    - group: couchdb 
  service.running:
    - enable: True
    - watch:
      - file: /etc/couchdb/local.ini
      - pkg: couchdb
