#!/usr/bin/env bash

LOAD_ORDER_FILE="./sql_script_load_order.txt"
OUTPUT_PATH="./public"

count=$(wc -l < $LOAD_ORDER_FILE)
padding_digits=${#count}

echo "${count} files found, padding digits: ${padding_digits}" >& 2

mkdir -p $OUTPUT_PATH

i=1
while IFS= read -r line; do
  [ -f "$line" ] || continue

  padded_i=$(printf "%0${padding_digits}d\n" ${i})
  out_file="${padded_i}_$(basename "${line}")"

  echo "${OUTPUT_PATH}/${out_file} <- ${line}" >& 2

  cp "$line" "${OUTPUT_PATH}/${out_file}"
  i=$((i+1))
done < $LOAD_ORDER_FILE
