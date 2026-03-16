#!/bin/bash 

LOGFILE="/var/log/auth.log"

echo "==== Linux Log Analyzer ===="
echo ""

# Count failed login attempts

echo "Failed Login Attempts:"
grep "Failed Password" $LOGFILE | wc -l
echo ""

# Show last 5 failed login attempts

echo "Last 5 failed login attempts:"
xgrep "Failed Password" $LOGFILE | tail -5

echo ""

# Show unique IP addresses

echo "Suspicious IP Addresses:"
grep "Failed Password" $LOGFILE | awk '{print $11}' | sort | uniq 
