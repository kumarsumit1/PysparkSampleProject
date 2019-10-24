#!/usr/bin/env bash

PWD=`pwd`
echo $PWD
python3 -m  --clear venv $PWD/pyvenv

source $PWD/pyvenv/bin/activate

python3 -V

python setup.py bdist_egg


hdfs dfs -put -f dist/*.egg /user/toto
hdfs dfs -chmod 755 /usr/toto/*.egg
