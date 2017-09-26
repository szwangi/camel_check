#!/bin/bash

filter=' "not icmp && (gsm_old.localValue == 2) && e212.imsi && ((m3ua.protocol_data_dpc == 4228) || (m3ua.protocol_data_dpc == 4230))" '

home=$HOME
echo -n 'output filename: '
read output_file
output_path=$home'/Documents/FreeMobile/camel/'


run="tshark -C camel_check -Y "$filter"-t a > "$output_path$output_file.txt

echo $run
# pwd
$run