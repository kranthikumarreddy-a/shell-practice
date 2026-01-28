#!/bin/bash

KKR=$NUM1
ASR=$NUM2

if [ $KKR > $ASR ]; then
echo "Kranthi age is oider than Saidi"
elif [ $KKR >= $ASR ]; then
echo "Kranthi age is greater then Saidi"
else
echo "They both are equal"
fi
