#/bin/bash

date=$(date '+%Y-%m-%d-%H:%M:%S')

site=https://www.secforensics.org

replace=''

result=$(echo "$site" | sed "s/https:\/\//$replace/")

output=./$date-$result.html

zap.sh -daemon -quickurl $site -quickout $output -quickprogress
