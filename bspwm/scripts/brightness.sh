#!/bin/bash

bright=$(brightnessctl | grep -i "current" | awk '{ print $4 }' | cut -c2-4)
echo $bright
