#!/bin/bash

df -k | awk '{ if ($2 > 1000000) { usage=$3 / $2; if (usage > 0.7) { lowerSpace=1; } } } END { if (lowerSpace) { system("./email_notification.sh"); } }'
