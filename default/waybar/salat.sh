#!/bin/bash

data=$(erch-salat-next 2>/dev/null) || {
  printf '{"text":"","class":"unavailable"}\n'
  exit
}

IFS=$'\t' read -r name countdown bar progress diff_sec <<< "$data"

if [[ -z $name || $name == "error" ]]; then
  printf '{"text":"","class":"unavailable"}\n'
  exit
fi

text="${name} ${countdown} ${bar}"
tooltip=$(erch-salat-today 2>/dev/null | sed 's/["\\]/\\&/g')

class=""
if (( progress >= 8 || diff_sec <= 600 )); then
  class="imminent"
fi

printf '{"text":"%s","tooltip":"%s","class":"%s"}\n' "$text" "$tooltip" "$class"
