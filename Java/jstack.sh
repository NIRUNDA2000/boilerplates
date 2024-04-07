#!/bin/sh

# Script to generate thread dumps of a Java process at regular intervals

if [ $# -ne 3 ]; then
  echo "Usage: $0 <pid> <number_of_dumps> <interval_in_seconds>"
  exit 1
fi

PID=$1
N=$2
INTERVAL=$3

for i in $(seq 1 $N); do
  TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
  FILENAME="threaddump_${PID}_${TIMESTAMP}.txt"
  echo "Generating thread dump $i of $N to file: $FILENAME"
  jstack $PID > $FILENAME
  sleep $INTERVAL
done
