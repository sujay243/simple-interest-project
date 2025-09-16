#!/bin/bash
# simple-interest.sh
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>

if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate_percent> <time_years>"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc -l)

echo "Principal: $P"
echo "Rate (%): $R"
echo "Time (years): $T"
echo "Simple Interest = $SI"
