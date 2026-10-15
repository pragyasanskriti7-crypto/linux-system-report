#!/bin/bash
# Linux System Report Generator
{
echo     "==============================================="
echo  "  LINUX SYSTEM REPORT"
echo "========================================="
echo "generated on: $(date)"
echo "1. HOSTNAME"
hostname
echo

echo "2.KERNEL VERSION"
uname -r
echo

echo "3. DISK USAGE"
df -h
echo

echo "4.MEMORY USAGE"
free -h
echo


echo   "5. TOP RUNNING PROCESSES"
ps -eo pid,comm,%cpu,%mem  --sort=-%cpu | head -n 6
echo

echo  "====================================="
echo  "         END OF REPORT     "
echo  "============================="
} > report.txt
echo  "system report generated sucessfully!"
echo  "report save to: report.txt"


