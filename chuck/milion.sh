#!/bin/env bash
read -p "Tell me your name: " NAME
read -p "Age: " AGE
RANDOMO=$((($RANDOM % 14) + $AGE ))
echo "calculating..."
sleep 5
echo "${NAME}, you will be a millionaire when you are ${RANDOMO}"
