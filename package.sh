#!/usr/bin/env bash

python3 -V


PWD=`pwd`
echo $PWD
python3 -m  --clear venv $PWD/pyvenv

source $PWD/pyvenv/bin/activate

python3 -V

python -m unittest discover

pex --no-wheel --disable-cache -i conf/pip.conf -e module.main:main -r requirement.txt -o module.pex .

echo "Build done"


#-o PEX_NAME, --output-file=PEX_NAME           					The name of the generated .pex file: Omiting this will run PEX immediately and not save it to a file. 

#-r FILE, --requirement=FILE                        Add requirements from the given requirements file.
#													This option can be used multiple times.

# -m MODULE[:SYMBOL], -e MODULE[:SYMBOL], --entry-point=MODULE[:SYMBOL]  Set the entry point to module or module:symbol.  If
#												                         just specifying module, pex behaves like python -m,
#                       												 e.g. python -m SimpleHTTPServer.  If specifying
#       				                 								 module:symbol, pex imports that symbol and invokes it
#		                        										 as if it were main.

#-i URL, --index=URL, --index-url=URL              Additional cheeseshop indices to use to satisfy requirements.

# --disable-cache     								Disable caching in the pex tool entirely.

#--wheel, --no-wheel, --no-use-wheel                Whether to allow wheel distributions; Default: allow wheels