#!/bin/bash
python makesite.py

#add remote server credentials here
#export DOSSH=

scp -r ./_site $DOSSH:/data
ssh $DOSSH ipfs add -rQ /data/_site

#or pin to ipfs from a local daemon
#(comment out above)
#ipfs add -rQ ./_site