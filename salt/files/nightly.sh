#!/bin/bash
cd /srv
git pull
salt-call --local state.highstate

