#!/bin/bash
QUEUE_COUNT=$(mailq | grep -c "^[A-F0-9]")
cat <<EOF
# HELP postfix_queue_size Number of emails in Postfix queue
# TYPE postfix_queue_size gauge
postfix_queue_size ${QUEUE_COUNT}
EOF
