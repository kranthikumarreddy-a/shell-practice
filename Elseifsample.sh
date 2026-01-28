#!/bin/bash

KKR=$1
ASR=$2

if [ "$KKR" -gt "$ASR" ]; then
    echo "Kranthi age is older than Saidi"
elif [ "$KKR" -lt "$ASR" ]; then
    echo "Saidi age is older than Kranthi"
else
    echo "They both are equal"
fi
