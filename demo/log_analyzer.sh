#!/bin/bash
echo "=== Log Analyzer ===" > report.txt
echo "" >> report.txt
for file in *.log
do 
   if [ -f "$file" ]; then
      count=$(grep -c "ERROR" "$file")
      echo "$file: $count error(s)" >> report.txt
   fi
done
echo "" >> report.txt
echo "Report generzted at $(date)" >> report.txt
