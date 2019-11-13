#!/bin/bash

cont="quay.io/singularity/singularity:v3.4.2"
# Pass in the command from the command line
cmd="$@"
docker run -v $HOME:$HOME --privileged -t --rm $cont "${cmd}"
