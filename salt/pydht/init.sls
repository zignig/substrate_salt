https://github.com/zignig/pydht:
  git.latest:
    - rev: rework
    - target: /opt/pydht

pika:
  pip:
    - installed

apscheduler:
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
