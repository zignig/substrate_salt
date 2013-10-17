https://github.com/zignig/substrate:
  git.latest:
    - rev: rework
    - target: /opt/substrate 

pika:
  pip:
    - installed

couchdbkit:
  pip:
    - installed

redis:
  pip:
    - installed

build-essential:
  pkg:
    - installed

python-dev:
  pkg:
    - installed
