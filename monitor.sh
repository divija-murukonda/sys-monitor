#!/bin/bash

cd ~/sys-monitor

# Timestamp
NOW=$(date +"%Y-%m-%d_%H-%M-%S")

# Log bash history
history > "bash_history_$NOW.txt"

# Log CPU and RAM usage
top -b -n1 | head -20 > "cpu_ram_$NOW.txt"

# Git add, commit, push
git add .
git commit -m "Log update $NOW"
git push origin main
