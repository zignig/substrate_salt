python-pip:
  pkg:
    - installed 

requests:
  pip:
    - installed

web.py:
  pip:
    - installed

tree:
  pkg:
    - installed

ssh:
  pkg:
    - installed

unzip:
  pkg:
    - installed 

/srv/salt/files/nightly.sh:
  cron.present:
    - user: root
    - minute: 10 
    - hour: 0  
