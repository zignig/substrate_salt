zignig@bl3dr.com:~/redis_osm_cache:
  git.latest:
    - rev: aprs 
    - target: /opt/mapping

mongodb:
  pkg:
    - installed

pymongo:
  pip:
    - installed
