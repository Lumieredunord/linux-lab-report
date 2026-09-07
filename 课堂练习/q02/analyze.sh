#!/bin/bash
if [ ! -f "$1" ]; then
echo "Error:Can't find $1" >&2
exit 1
fi
echo "=== 5xx status top 2 path ==="
awk -F',' 'NR>1 && $4>=500 {print $3}' "$1" \
| sort | uniq -c \
| sort -k1,1nr -k2,2 \
| head -n2
echo -e "\n=== average latency_ms ==="
awk -F',' 'NR>1 {sum+=$5; cnt++} END {printf "%.2f\n", sum/cnt}' "$1"
