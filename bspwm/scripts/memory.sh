#!/bin/bash

ram=$(free -h | grep -i "mem" | awk '{print $3 }' | cut -d 'G' -f1 | cut -d "M" -f1)

if [ "$(echo "$ram > 16" | bc -l)" -eq 1 ]
then
  echo "$ram MB"
else
  echo "$ram GB"
fi

