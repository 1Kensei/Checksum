#!/bin/bash
stty -echo

PATHWAY="$(pwd)"
ESCPATHWAY="$(pwd | sed "s/\//\\\\\//g")"
ARRAY="$(find "${PATHWAY}" -type f -exec md5sum {} \; | sed "s/$ESCPATHWAY/.\//g")"

for entry in "${ARRAY}"
do
    printf "${entry}\n"
done
