#!/usr/bin/env bash

headersFile=~/proj/hackweek/2023-q2/testhook.hdrs
rqstFile=~/proj/hackweek/2023-q2/testhook.json
method=POST
concrrnt=100
num=10000
headers=$(awk -F'\n' '{printf "-H \""$1"\" " }' ${headersFile} )
uri=


bash -c "ab -r -s 10 -T \"application/json\" -p \"${rqstFile}\" -m $method $headers -n $num -c $concrrnt https://us-central1-sqsp-gcp-sandbox-001.cloudfunctions.net/task-list-completed" 