#!/bin/bash
# Stats Listening Port
STATS_PORT=${STATS_PORT:-22222}
# Stats Listening Address
STATS_ADDR=${STATS_ADDR:-0.0.0.0}
# Stats Generation Interval in Miliseconds
STATS_INTERVAL=${STATS_INTERVAL:-30000}
# Configuration File Path
CONF_FILE=${CONF_FILE:-/scripts/nutcracker.yml}
# Verbose Level
VERBOSE=${VERBOSE:-5}
/usr/sbin/nutcracker --conf-file=$CONF_FILE --stats-port=$STATS_PORT --stats-addr=$STATS_ADDR --stats-interval=$STATS_INTERVAL --verbose=$VERBOSE
