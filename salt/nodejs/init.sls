nodejs-0.10.20:
  file.managed:
    - name: /tmp/node-v0.10.20.tar.gz
    - source: http://nodejs.org/dist/v0.10.20/node-v0.10.20.tar.gz
    - source_hash: sha1=d8777ac318627c1413f01358ea5c455f0f86e4b5

extract-nodejs:
  cmd:
    - cwd: /tmp
    - names:
      - tar zxf node-v0.10.20.tar.gz
    - run
    - require:
      - file: nodejs-0.10.20

configure-nodejs:
  cmd:
    - cwd: /tmp/node-v0.10.20/
    - names:
      - ./configure
      - make 
      - make install
    - run
    - require:
      - cmd: extract-nodejs
