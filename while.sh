#!/bin/bash

cnt=10

# ge (Greater-than or equal to) - 이상 (같거나 큼)
# gt (Greater-than) – 초과 (큼)
# le (Less-than or equal to) - 이하 (같거나 작음)
# lt (Less-than) - 미만 (작음)

while [ $cnt -gt 0 ]; do
   echo cnt = $cnt
   let cnt--
done
