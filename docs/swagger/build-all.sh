#!/bin/bash

for filename in *.yaml; do
    echo "--------- $filename ---------------------"

    redoc-cli bundle --cdn -o ../html/$(basename "$filename" .yaml).html $filename

    # We need to use 'htm' as extension, since spectacle removes all other html files from target dir
    #/usr/bin/spectacle "$filename" -t "../html/" -f "$(basename "$filename" .yaml).htm"
done