https://github.com/zignig/redis_osm_cache:
  git.latest:
    - rev: master 
    - target: /opt/mapping

mongodb:
  pkg:
    - installed

pymongo:
  pip:
    - installed
