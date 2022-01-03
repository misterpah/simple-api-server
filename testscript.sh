#!/bin/bash
START_TIME=${EPOCHREALTIME/./}
for i in {0..1000}
do
  curl http://localhost:8080/hello/testscript/$i
  echo ""
done
END_TIME=${EPOCHREALTIME/./}
echo $((($END_TIME - $START_TIME)/1000))  "microsecond"