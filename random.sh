#!/bin/bash
rand="$(( RANDOM % 100 + 1 ))"
res="False"
if [[ $1 ]] && (( $1 <= 100 )); then
  if (( rand <= $1 )); then 
    res="True"
  fi
fi
echo "Random number was $rand"
echo $res
