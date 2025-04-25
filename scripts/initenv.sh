#!/bin/bash
set -e

if [[ $(lsb_release -is 2> /dev/null) == "Ubuntu" || $(lsb_release -is 2> /dev/null) == "Debian" ]]
then
  if [ $(dpkg -l | grep python3-dev 2>&1 /dev/null) ]
  then
    echo "You need to install python3-dev for installing the other dependencies."
    exit 1
  fi
fi

python3 -m venv --upgrade-deps venv

venv/bin/pip install -e chatmaild 
venv/bin/pip install -e cmdeploy
