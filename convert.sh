#!/bin/bash

# Input Singbox subscription link
SINGBOX_LINK="https://iserver.store/KevinVPN.json"

# Output file for converted subscription
OUTPUT_FILE="converted_sub.txt"

# Subconverter API URL (you can host your own subconverter or use a public one)
SUBCONVERTER_URL="https://api.subconverter.com/sub"

# Convert the subscription link
curl -s "$SUBCONVERTER_URL?target=v2ray&url=$SINGBOX_LINK" -o $OUTPUT_FILE

# Print the converted subscription link
echo "Converted subscription link:"
cat $OUTPUT_FILE
